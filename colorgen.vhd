-- colorgen
library ieee;
use ieee.std_logic_1164.all;

entity colorgen is

	port(
			clock		:	in		std_logic;
			videoEN	:	in 	std_logic;
			hc			:	in		std_logic_vector(9 downto 0);
			red		:	out	std_logic_vector(7 downto 0);
			green		:	out	std_logic_vector(7 downto 0);
			blue		:	out	std_logic_vector(7 downto 0)
		);

end colorgen;

architecture behavioral of colorgen is

begin

-- sequential logic
colorgen : process(clock)
begin
	if (rising_edge(clock)) then
		if (videoEN = '1') then
			if (hc(5) = '1') then
				red	<= X"AF";
				green	<= X"11";
				blue	<= X"3E";
			else
				red	<= X"46";
				green	<= X"06";
				blue	<= X"18";
			end if;
		else
			red	<= (others => '0');
			green	<= (others => '0');
			blue	<= (others => '0');
		end if;
	end if;
end process colorgen;
end behavioral;