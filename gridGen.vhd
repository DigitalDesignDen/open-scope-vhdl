-- gridGen
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.common.all;
use work.all;

entity gridGen is

	port(
			clock		:	in		std_logic;
			videoEN	:	in 	std_logic;
			hc			:	in		std_logic_vector(9 downto 0);
			vc			:	in		std_logic_vector(9 downto 0);
			red		:	out	std_logic_vector(7 downto 0);
			green		:	out	std_logic_vector(7 downto 0);
			blue		:	out	std_logic_vector(7 downto 0)
		);

end gridGen;

architecture behavioral of gridGen is

signal hc_image	: unsigned(9 downto 0);
signal generating	: std_logic;

begin

--	U1 : edgedetect
--		port map (clock, hc(5), generating, pos_edge);

--comb logic
hc_image <= unsigned(hc) - 144;
		
-- sequential logic
colorgen : process(clock)
begin
	if (rising_edge(clock)) then
		if (videoEN = '1') then
			if (hc(5 downto 0) = "010001" AND vc(2 downto 0) = "111") then
				red	<= X"CC";
				green	<= X"CC";	-- time divs
				blue	<= X"CC";
			elsif (vc(4 downto 0) = "10001" AND hc(2 downto 0) = "111") then
				red	<= X"A0";
				green	<= X"FF";	-- magnitude divs
				blue	<= X"A0";
			else
				red	<= X"22";
				green	<= X"22";	-- grey background
				blue	<= X"22";
			end if;
		else
			red	<= (others => '0');
			green	<= (others => '0');
			blue	<= (others => '0');
		end if;
	end if;
end process colorgen;

time_divs : process(hc_image)
begin
	case to_integer(hc_image) is
		when 48		=> generating <= '1';
		when 48*2	=> generating <= '1';
		when 48*3	=> generating <= '1';
		when 48*4	=> generating <= '1';
		when others	=> generating <= '0';
	end case;
end process;
end behavioral;