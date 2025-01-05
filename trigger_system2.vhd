-- trigger system2
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity trigger_system2 is

port(
		i_triggervalue		: in natural;
		i_adc_sample		: in std_logic_vector(11 downto 0);
		i_clock				: in std_logic;
		o_triggered			: out std_logic
		);

end trigger_system2;

architecture behavioral of trigger_system2 is

type t_stateMachine is (start, ready, belowLevel, triggered);
signal s_state : t_stateMachine := start;

begin
stateMachine : process(i_clock)
begin
	if(rising_edge(i_clock)) then
		o_triggered <= '0';
		
		case s_state is
			when start =>
				if (to_integer(unsigned(i_adc_sample)) < i_triggervalue) then
					s_state <= ready;
				end if;
			when ready =>
				if (to_integer(unsigned(i_adc_sample)) < i_triggervalue) then
					s_state <= belowLevel;
				end if;
			when belowLevel =>
				if (to_integer(unsigned(i_adc_sample)) > i_triggervalue) then
					s_state <= triggered;
				end if;
			when triggered =>
				o_triggered <= '1';
				s_state <= ready;
		end case;
	end if;
end process stateMachine;
end behavioral;