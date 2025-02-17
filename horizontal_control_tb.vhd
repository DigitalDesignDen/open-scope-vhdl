-- horizontal_control_tb.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity horizontal_control_tb is
end horizontal_control_tb;

architecture behavioral of horizontal_control_tb is

    -- Component declaration for horizontal_control
    component horizontal_control
        port (
            i_clock       : in std_logic;
            i_inc         : in std_logic;
            i_dec         : in std_logic;
            i_hc          : in std_logic_vector(9 downto 0);
            i_videoEN     : in std_logic;
            o_addr_read   : out natural range 0 to (BUFFER_SIZE - 1)
        );
    end component;

    -- Constants
    constant CLOCK_PERIOD : time := 10 ns;
    constant BUFFER_SIZE  : integer := 2240;

    -- Signals
    signal i_clock       : std_logic := '0';
    signal i_inc         : std_logic := '0';
    signal i_dec         : std_logic := '0';
    signal i_hc          : std_logic_vector(9 downto 0) := (others => '0');
    signal i_videoEN     : std_logic := '0';
    signal o_addr_read   : natural range 0 to (BUFFER_SIZE - 1);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: horizontal_control
        port map (
            i_clock     => i_clock,
            i_inc       => i_inc,
            i_dec       => i_dec,
            i_hc        => i_hc,
            i_videoEN   => i_videoEN,
            o_addr_read => o_addr_read
        );

    -- Clock generation
    clock_process : process
    begin
        while true loop
            i_clock <= '0';
            wait for CLOCK_PERIOD / 2;
            i_clock <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
        wait;
    end process clock_process;

    -- Stimulus process
    stimulus_process : process
    begin
        -- Initialize inputs
        i_videoEN <= '1';
        i_hc <= "0000010010"; -- Example input

        -- Test case 1: Increase numerator
        i_inc <= '1';
        wait for CLOCK_PERIOD;
        i_inc <= '0';
        wait for CLOCK_PERIOD * 5;

        -- Test case 2: Decrease numerator
        i_dec <= '1';
        wait for CLOCK_PERIOD;
        i_dec <= '0';
        wait for CLOCK_PERIOD * 5;

        -- Test case 3: Test i_videoEN and address mapping
        i_videoEN <= '0';
        wait for CLOCK_PERIOD * 5;
        i_videoEN <= '1';
        i_hc <= "0000100000"; -- Another example input
        wait for CLOCK_PERIOD * 5;

        -- Test case 4: Boundary condition for BUFFER_SIZE
        i_hc <= "1111111111"; -- Max input value
        wait for CLOCK_PERIOD * 5;

        -- End simulation
        wait;
    end process stimulus_process;

end behavioral;
