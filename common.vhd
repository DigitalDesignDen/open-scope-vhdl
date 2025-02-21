library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
package common is 

-- constants
	constant BUFFER_SIZE : natural := 2240;

-- types
	type t_edge is (neg_edge, pos_edge);
	
-- functions
	--function map_sampleToScreen (sample : std_logic_vector(11 downto 0)) return integer;
	
--procedures
	procedure map_sampleToScreen (signal clk		: in std_logic;
											signal sample	: in std_logic_vector(11 downto 0);
											signal result	: out integer);
	
end common;

package body common is
	-- subprograms bodies here
--	function map_sampleToScreen(sample : std_logic_vector(11 downto 0)) return integer is
--	variable product	: integer;
--	variable sum		: integer;
--	begin
--		product	:= to_integer(unsigned(sample)) * (-13);
--		product	:= product / 50;
--		sum		:= product  + 781;
--	
--		return sum;
--	end function;
	
	procedure map_sampleToScreen(
    signal clk         : in std_logic;
    signal sample      : in std_logic_vector(11 downto 0);
    signal result      : out integer
	) is
    variable product   : integer;
    variable quotient  : integer;
    variable sum       : integer;
	begin
    -- Pipeline Stage 1: Multiply
    product := to_integer(unsigned(sample)) * (-13) * 1311;

    -- Pipeline Stage 2: Divide (assuming pipelined implementation)
    quotient := product / 65536;

    -- Pipeline Stage 3: Add Offset
    sum := quotient + 781;

    -- Output Result
    result <= sum;
end procedure;

end common;