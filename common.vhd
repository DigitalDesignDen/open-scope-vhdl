library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package common is 

	type t_edge is (neg_edge, pos_edge);
	function map_sampleToScreen (sample : std_logic_vector(11 downto 0)) return integer;
	
end common;

package body common is
	-- subprograms bodies here
	function map_sampleToScreen(sample : std_logic_vector(11 downto 0)) return integer is
	variable product	: integer;
	variable sum		: integer;
	begin
		product	:= to_integer(unsigned(sample)) * (-13);
		product	:= product / 50;
		sum		:= product  + 781;
	
		return sum;
	end function;
end common;