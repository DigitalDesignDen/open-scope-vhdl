library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sampleToScreenPipeline is
    port (
        clk    : in std_logic;
        sample : in std_logic_vector(11 downto 0);
        result : out integer
    );
end sampleToScreenPipeline;

architecture rtl of sampleToScreenPipeline is
    -- Pipeline registers for each stage:
    signal stage1 : integer;  -- Output of multiplication
    signal stage2 : integer;  -- Output of division
    signal stage3 : integer;  -- Output of addition (final result)
begin
    process(clk)
    begin
        if rising_edge(clk) then
            -- Pipeline Stage 1: Multiply sample by -13
            stage1 <= to_integer(unsigned(sample)) * (-13);
            -- Pipeline Stage 2: Divide the product by 50
            stage2 <= (stage1 * 1311) / 65536;
            -- Pipeline Stage 3: Add offset 781
            stage3 <= stage2 + 781;
            -- Drive the output from the final stage
            result <= stage3;
        end if;
    end process;
end rtl;
