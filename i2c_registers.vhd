-- I2C registers

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.common.byte;

entity i2c_registers is
    port (
        i_clk               : in std_logic;
        i_data              : in byte;
        i_data_rdy_strobe   : in std_logic;

        -- output for horizontal control
        o_increment         : out std_logic;
        o_decrement         : out std_logic
    );
end i2c_registers;

architecture rtl of i2c_registers is


begin
    dataReader : process(i_clk)
    begin

        if rising_edge(i_clk) then
            o_decrement <= '0';
            o_increment <= '0';
            if i_data_rdy_strobe = '1' then
                case i_data is
            
                    when X"01" => o_decrement <= '1';
                    when X"03" => o_increment <= '1';
                
                    when others => null;
                
                end case;
            end if;
        end if;
    end process;
end architecture;