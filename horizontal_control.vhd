-- horizontal_control
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.common.all;
use work.edgedetect;


entity horizontal_control is
	port (
			i_clock		: in std_logic;
			i_inc			: in std_logic;  -- increasing time/div
			i_dec			: in std_logic;  -- decreasing time/div
			i_hc			: in std_logic_vector(9 downto 0);
			i_videoEN	: in std_logic;
			o_addr_read	: out natural range 0 to (BUFFER_SIZE - 1)
			);
end horizontal_control;

architecture behavioral of horizontal_control is

signal r_numerator	: natural range 0 to 7 := 0;
signal r_denominator	: positive range 1 to 7 := 2;

signal r_inc_pulse	: std_logic;
signal r_dec_pulse	: std_logic;

signal denominator_adjustig	: boolean := false;

begin

	U1 : edgedetect
		port map (i_clock, i_inc, r_inc_pulse, neg_edge);
		
	U2 : edgedetect
		port map (i_clock, i_dec, r_dec_pulse, neg_edge);

numerator_set : process (i_clock)
begin
	if (rising_edge(i_clock)) then
		if NOT denominator_adjustig then
			if r_inc_pulse = '1' AND r_numerator < 7 then
				r_numerator <= r_numerator + 1;
			elsif r_dec_pulse = '1' AND r_numerator > 1 then
				r_numerator <= r_numerator - 1;
			elsif r_dec_pulse = '1' AND r_numerator <= 1 then
				--denominator_adjustig <= true;
			end if;
		end if;
	end if;
end process numerator_set;

denominator_set : process (i_clock)
begin
		if (rising_edge(i_clock)) then
		if denominator_adjustig then
			if r_inc_pulse = '1' AND r_denominator > 2 then
				r_denominator <= r_denominator - 1;
			elsif r_dec_pulse = '1' AND r_denominator < 7 then
				r_denominator <= r_denominator + 1;
			elsif r_inc_pulse = '1' AND r_denominator <= 2 then
				--denominator_adjustig <= false;
			end if;
		end if;
	end if;
end process denominator_set;

nom_denom_switch : process(r_inc_pulse, r_dec_pulse, r_denominator, r_numerator)
begin
	if r_inc_pulse = '1' AND r_denominator <= 2 then
			denominator_adjustig <= false;
	 elsif r_dec_pulse = '1' AND r_numerator <= 1 then
			denominator_adjustig <= true;
	end if;
end process nom_denom_switch;

address_mapping : process (i_videoEN, i_hc, r_numerator, r_denominator)
begin
if (i_videoEN = '1') then
	if ( (to_integer(unsigned(i_hc) - 144) * r_numerator )/r_denominator) < BUFFER_SIZE then
		o_addr_read	<= ( (to_integer(unsigned(i_hc) - 144) * r_numerator )/r_denominator) mod BUFFER_SIZE;
	else
		o_addr_read	<= BUFFER_SIZE - 1;
	end if;
else
	o_addr_read <= 0;
end if;
end process address_mapping;

end behavioral;