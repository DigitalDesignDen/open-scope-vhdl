library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fir_filter is
    port (
        clk      : in  std_logic;
        reset    : in  std_logic;
        data_in  : in  std_logic_vector(11 downto 0); -- 12-bit unsigned ADC input
        data_out : out std_logic_vector(11 downto 0)  -- 12-bit filtered unsigned output
    );
end entity;

architecture rtl of fir_filter is

	type integer_vector is array(0 to 23) of integer;
    -- Filter coefficients (16-tap example, scaled for fixed-point arithmetic)
   constant coeffs : integer_vector := ( 82,  125,  226,  405,  666, 1005, 1401, 1823, 2232, 2586, 2847, 2985, 2985, 2847,
 2586, 2232, 1823, 1401, 1005,  666,  405,  226,  125,   82);

    -- Internal signals
    signal samples : integer_vector := (others => 0); -- Shift register
	 signal data_in_reg : std_logic_vector(11 downto 0);
    --signal acc     : integer := 0; 						-- Accumulator for FIR computation
    signal result  : integer := 0; 							-- Signed filter result
    signal signed_data : integer := 0; 					-- Converted signed ADC input
	 	 
begin

    process(clk, reset)
	 variable acc : integer := 0;
    begin
        if reset = '1' then
            samples <= (others => 0);
            acc := 0;
            result <= 0;
        elsif rising_edge(clk) then
				-- register input data_in
				data_in_reg <= data_in;
				
            -- Convert unsigned ADC input to signed
            signed_data <= to_integer(unsigned(data_in_reg)) - 2048;

            -- Shift in the new signed sample
            samples <= samples(1 to 23) & signed_data;

            -- Compute FIR output
            acc := 0;
            for i in 0 to 23 loop
                acc := acc + samples(i) * coeffs(i);
            end loop;

            -- Scale and convert back to unsigned
            result <= acc / 32768; -- Scale back from fixed-point
            data_out <= std_logic_vector(to_unsigned(result + 2048, 12)); -- Shift back to unsigned
        end if;
    end process;
end architecture;
