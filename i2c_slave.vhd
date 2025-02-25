library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity i2c_slave is
    port (
        clk         : in  std_logic;       -- System clock (e.g., 32 MHz)
        rst         : in  std_logic;       -- Reset signal
        sda         : inout std_logic;     -- I2C data line (open-drain)
        scl         : in  std_logic;       -- I2C clock line
        data_out    : out std_logic_vector(7 downto 0); -- Received data byte
		  state_out   : out std_logic_vector(7 downto 0);
        write_strobe: out std_logic        -- Pulses high when a data byte is received
    );
end entity;

architecture Behavioral of i2c_slave is
    -- Define the 7-bit slave address (0x30: "0110000")
    constant SLAVE_ADDR : std_logic_vector(6 downto 0) := "0110000";
    
    -- Internal signals for SDA control and synchronizers
    signal sda_out      : std_logic := '1';
    signal sda_drive    : std_logic := '0';
    signal scl_sync     : std_logic_vector(2 downto 0) := (others => '0');
    signal sda_sync     : std_logic_vector(2 downto 0) := (others => '0');
    signal scl_rising   : std_logic := '0';
    signal scl_falling  : std_logic := '0';
    signal sda_falling  : std_logic := '0';
    
    -- Use a bit counter that counts down from 7 (MSB first)
    signal bit_count    : integer range -1 to 7 := 7;
    signal byte_buffer  : std_logic_vector(7 downto 0) := (others => '0');
    signal rw_flag      : std_logic := '0';
    
    -- State machine states
    type state_type is (IDLE, ADDR_RECEIVE, ADDR_ACK, DATA_RECEIVE, DATA_ACK);
    signal state : state_type := IDLE;
    
begin
    -- Tri-state buffer for SDA
    sda <= sda_out when sda_drive = '1' else 'Z';
	 
	 -- debugging purpose
	 state_out <= X"00" when state=IDLE else X"01" when state=ADDR_RECEIVE else X"02" when state=ADDR_ACK else 
						X"03" when state=DATA_RECEIVE else X"04" when state=DATA_ACK else X"FF";
    
    -- Synchronize SCL and SDA to the internal clock and detect edges
    process(clk)
    begin
        if rising_edge(clk) then
            scl_sync <= scl_sync(1 downto 0) & scl;
            sda_sync <= sda_sync(1 downto 0) & sda;
            scl_rising  <= (scl_sync(1) and not scl_sync(2));
            scl_falling <= (not scl_sync(1) and scl_sync(2));
            sda_falling <= (not sda_sync(1) and sda_sync(2));
        end if;
    end process;
    
    -- Main I2C state machine
    process(clk, rst)
    begin
        if rst = '1' then
            state       <= IDLE;
            bit_count   <= 7;
            byte_buffer <= (others => '0');
            sda_drive   <= '0';
            sda_out     <= '1';
            write_strobe<= '0';
            rw_flag     <= '0';
            data_out    <= (others => '0');
        elsif rising_edge(clk) then
            write_strobe <= '0';  -- default
            case state is
                -- IDLE: Wait for START condition (SDA falling while SCL is high)
                when IDLE =>
                    if (scl_sync(2) = '1') and (sda_falling = '1') then
                        state     <= ADDR_RECEIVE;
                        bit_count <= 7;
                        byte_buffer <= (others => '0');
                    end if;
                    
                -- ADDR_RECEIVE: Shift in 8 bits (7-bit address and R/W flag)
                when ADDR_RECEIVE =>
                    if scl_rising = '1' then
                        byte_buffer(bit_count) <= sda_sync(2);
                        if bit_count = 0 then
                            rw_flag <= sda_sync(2);  -- Last bit is R/W flag
                            if byte_buffer(7 downto 1) = SLAVE_ADDR then
                                state <= ADDR_ACK;  -- Valid address received
                            else
                                state <= IDLE;      -- Address mismatch
                            end if;
                        else
                            bit_count <= bit_count - 1;
                        end if;
                    end if;
                    
                -- ADDR_ACK: Issue ACK for the address
                when ADDR_ACK =>
                    -- On SCL falling edge, drive SDA low for ACK
                    if scl_falling = '1' then
                        sda_drive <= '1';
                        sda_out   <= '0';
                    -- Then wait until the next falling edge to release ACK
                    elsif scl_rising = '1' then
                        -- Do nothing—hold ACK low during SCL high period
                        null;
						  end if;
                    if scl_falling = '1' and sda_drive = '1' then
                        sda_drive <= '0';  -- Release SDA after ACK has been sampled
                        if rw_flag = '0' then
                            state <= DATA_RECEIVE;  -- Prepare to receive one data byte
                            bit_count <= 7;
                            byte_buffer <= (others => '0');
                        else
                            -- Read not implemented—return to IDLE
                            state <= IDLE;
                        end if;
                    end if;
                    
                -- DATA_RECEIVE: Receive one data byte from the master
                when DATA_RECEIVE =>
                    if scl_rising = '1' then
                        byte_buffer(bit_count) <= sda_sync(2);
                        if bit_count = 0 then
                            data_out <= byte_buffer;
                            write_strobe <= '1';
                            state <= DATA_ACK;
                        else
                            bit_count <= bit_count - 1;
                        end if;
                    end if;
                    
                -- DATA_ACK: Issue ACK for the received data byte
                when DATA_ACK =>
                    if scl_falling = '1' then
                        sda_drive <= '1';
                        sda_out   <= '0';
                    elsif scl_rising = '1' then
                        null;  -- Hold ACK low during SCL high
						  end if;
                    if scl_falling = '1' and sda_drive = '1' then
                        sda_drive <= '0';  -- Release SDA after ACK is held long enough
                        state <= IDLE;     -- Return to IDLE after one data byte
                    end if;
            end case;
        end if;
    end process;
end architecture;
