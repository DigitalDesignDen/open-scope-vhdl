-- splashScreen unit

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.common.all;
use work.all;

entity splashScreen is

port (
			i_CLK				: in std_logic;
			i_hc				: in std_logic_vector(9 downto 0);
			i_vc				: in std_logic_vector(9 downto 0);
			i_videoEN		: in std_logic;
			o_VIDEO_DATA	: out std_logic_vector(23 downto 0);
			o_DONE			: out std_logic
		);


end entity;

architecture rtl of splashScreen is

signal splashADDR 	: natural range 0 to SPLASH_IMAGE_SIZE - 1;
signal splashValue	: byte;
signal r_red_done		: std_logic := '0';
signal r_green_done	: std_logic := '0';
signal r_blue_done	: std_logic := '0';

begin

o_DONE <= r_red_done and r_green_done and r_blue_done;


	U1 : splashROM
		generic map(DATA_WIDTH => 8, ADDR_SIZE => SPLASH_IMAGE_SIZE)
		port map(i_CLK, splashADDR, splashValue);


splashScreen : process(i_CLK)
constant xpos : integer range 0 to 639 := 200;
constant ypos : integer range 0 to 479 := 100;
variable bg24 : std_logic_vector(23 downto 0) := X"AB" & X"DD" & X"EE";
variable prescaler : positive range 1 to 1300000;
begin
if(rising_edge(i_CLK)) then

	if(i_videoEN = '1') then
		if (unsigned(i_hc)-144) >= xpos AND (unsigned(i_hc)-144) < 120*2+xpos AND (unsigned(i_vc)-31) >= ypos AND (unsigned(i_vc)-31) < 104*2+ypos then
			splashADDR <= SPLASH_IMAGE_SIZE -1 - ( to_integer((unsigned(i_hc)-144-xpos) srl 1) + 120 * to_integer((unsigned(i_vc)-31-ypos) srl 1) );
			if splashValue = X"FF" then
				o_VIDEO_DATA <= bg24;
			else
				o_VIDEO_DATA <= (splashValue & splashValue & splashValue) and bg24; --(splashValue and X"AB") & (splashValue and X"DD") & (splashValue and X"EE");
			end if;
		else
			o_VIDEO_DATA <= bg24; --X"AB" & X"DD" & X"EE"
		end if;
	end if;
	
	-- this fades the background in with the image and changes the color over time from bg24 to white.
	if (prescaler = 1300000) then
			prescaler := 1;
			
			if(unsigned(bg24(23 downto 16)) < X"FF") then
				bg24(23 downto 16) := std_logic_vector( unsigned(bg24(23 downto 16)) + X"01" );
			else
				r_red_done <= '1';
			end if;
			if(unsigned(bg24(15 downto 8)) < X"FF") then
				bg24(15 downto 8) := std_logic_vector( unsigned(bg24(15 downto 8)) + X"01" );
			else
				r_green_done <= '1';
			end if;
			if(unsigned(bg24(7 downto 0)) < X"FF") then
				bg24(7 downto 0) := std_logic_vector( unsigned(bg24(7 downto 0)) + X"01" );
			else
				r_blue_done <= '1';
			end if;
			
		else
			prescaler := prescaler + 1;
		end if;
	
		
end if;
end process splashScreen;

end rtl;