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
    -- Define the 7-bit slave address (0x30, i.e., "0110000")
    constant SLAVE_ADDR : std_logic_vector(6 downto 0) := "0110000";

    -- Internal signals for tri-state and synchronization
    signal sda_out       : std_logic := '1';
    signal sda_drive     : std_logic := '0';
    signal scl_sync      : std_logic_vector(2 downto 0) := (others => '0');
    signal sda_sync      : std_logic_vector(2 downto 0) := (others => '0');
    signal scl_rising    : std_logic := '0';
    signal scl_falling   : std_logic := '0';
    signal sda_falling   : std_logic := '0';

    -- Use a bit counter that counts down from 7 (MSB first)
    signal bit_count     : integer range 0 to 7 := 7;
    signal byte_buffer   : std_logic_vector(7 downto 0) := (others => '0');
    
    -- State machine:
    -- 0: IDLE, 1: ADDRESS reception, 2: ACK address, 3: Data reception, 4: ACK data
    signal state         : integer range 0 to 4 := 0;
    -- Store the R/W flag (last bit of the address byte); 0 = write, 1 = read
    signal rw_flag       : std_logic := '0';

begin
    -- Tri-state buffer for SDA: drive when sda_drive = '1', else release (Z)
    sda <= sda_out when sda_drive = '1' else 'Z';
	 
	 -- state output for debugging
	 state_out <= "0000" & std_logic_vector(to_unsigned(state,4));

    -- Synchronize SCL and SDA to the FPGA clock and detect edges
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
            state         <= 0;  -- IDLE
            bit_count     <= 7;
            byte_buffer   <= (others => '0');
            sda_drive     <= '0';
            sda_out       <= '1';
            write_strobe  <= '0';
            rw_flag       <= '0';
            data_out      <= (others => '0');
        elsif rising_edge(clk) then
            write_strobe <= '0';  -- default value

            case state is
                when 0 =>  -- IDLE: Wait for a START condition (SDA falling while SCL is high)
                    if (scl_sync(2) = '1') and (sda_falling = '1') then
                        state     <= 1;  -- Move to address reception
                        bit_count <= 7;
                        byte_buffer <= (others => '0');
                    end if;

                when 1 =>  -- ADDRESS RECEPTION: Receive 8 bits (7-bit address + R/W bit) MSB first
                    if scl_rising = '1' then
                        byte_buffer(bit_count) <= sda_sync(2);
                        if bit_count = 0 then
                            -- Byte complete: capture R/W flag (last bit received)
                            rw_flag <= sda_sync(2);
                            if byte_buffer(7 downto 1) = SLAVE_ADDR then
                                state <= 2;  -- Valid address; send ACK
                            else
                                state <= 0;  -- Address mismatch; return to IDLE
                            end if;
                        else
                            bit_count <= bit_count - 1;
                        end if;
                    end if;

                when 2 =>  -- ACK ADDRESS: Drive SDA low to ACK the address
                    if scl_falling = '1' then
                        sda_drive <= '1';
                        sda_out   <= '0';  -- Send ACK (pull SDA low)
                    elsif scl_rising = '1' then
                        sda_drive <= '0';  -- Release SDA after ACK
                        if true then
                            -- Master writes data: prepare to receive one data byte
                            state     <= 3;
                            bit_count <= 7;
                            byte_buffer <= (others => '0');
                        else
                            -- For a read operation (not implemented here), return to IDLE
                            state <= 0;
                        end if;
                    end if;

                when 3 =>  -- DATA RECEPTION: Receive one data byte from the master
                    if scl_rising = '1' then
                        byte_buffer(bit_count) <= sda_sync(2);
                        if bit_count = 0 then
                            -- Data byte complete
                            data_out <= byte_buffer;
                            write_strobe <= '1';  -- Pulse strobe to indicate new data available
                            state <= 4;  -- Move to ACK data state
                        else
                            bit_count <= bit_count - 1;
                        end if;
                    end if;

                when 4 =>  -- ACK DATA: Send ACK for the data byte and then return to IDLE
                    if scl_falling = '1' then
                        sda_drive <= '1';
                        sda_out   <= '0';  -- ACK by driving SDA low
                    elsif scl_rising = '1' then
                        sda_drive <= '0';  -- Release SDA after ACK
                        state <= 0;  -- Go back to IDLE after one data byte
                    end if;

                when others =>
                    state <= 0;
            end case;
        end if;
    end process;
end architecture;
