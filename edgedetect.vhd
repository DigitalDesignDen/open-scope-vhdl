--edge detector
library ieee;
use ieee.std_logic_1164.all;
use work.all;
use work.common.all;

entity edgedetect is

	port(	CLK				: in std_logic;
			INPUT				: in std_logic;
			OUTPUT_PULSE	: out std_logic;
			MODE				: in t_edge
		);
	
end edgedetect;

architecture behav of edgedetect is

type t_edge is (neg_edge, pos_edge);

signal reg0, reg1 : std_logic;

begin

-- sequential logic
registers : process(CLK)
begin
	if(rising_edge(CLK)) then
		reg0 <= INPUT;
		reg1 <= reg0;
	end if;
end process registers;

--combinational logic
process(MODE, INPUT, reg1, reg0)
begin
case MODE is
	when neg_edge =>
		OUTPUT_PULSE <= NOT reg0 and reg1; -- neg edge detector
	when pos_edge =>
		OUTPUT_PULSE <= reg0 and NOT reg1; -- pos edge detector
	when others =>
		OUTPUT_PULSE <= reg0 and NOT reg1; -- pos edge detector
end case;
end process;

end behav;