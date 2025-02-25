-- TOP - open-scope - running on Cyclone III dev board from Digital Design Den.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;
use work.common.all;


entity TOP is
	port (
			-- DRAM port
			RAM_DQ		: inout std_logic_vector(7 downto 0);
			RAM_nWE		: out std_logic;
			RAM_nCAS		: out std_logic;
			RAM_nRAS		: out std_logic;
			RAM_nCS		: out std_logic;
			RAM_BA0		: out std_logic;
			RAM_BA1		: out std_logic;
			RAM_DQM		: out std_logic;
			RAM_CKE		: out std_logic;
			RAM_CLK		: out std_logic;
			RAM_A			: out std_logic_vector(12 downto 0);
			
			--Clocks
			CLK_25		: in std_logic;
			CLK_32		: in std_logic;
			
			
			--AD9226: 12 bit 65 MSps ADC port
			AD_CLK		: out std_logic;
			AD_data		: in	std_logic_vector(11 downto 0);
			
			--ADV7513: HDMI Tx
			ADV_D			: out std_logic_vector(23 downto 0);
			ADV_HSYNC	: out std_logic;
			ADV_CLK		: out std_logic;
			ADV_VSYNC	: out std_logic;
			ADV_I2SD		: out std_logic;
			ADV_SCLK		: out std_logic;
			ADV_LRCLK	: out std_logic;
			ADV_DE		: out std_logic;
			
			--I2C
			SCL			: in std_logic;
			SDA			: inout std_logic;
			
			--User I/O
			SW				: in	std_logic;
			KEY			: in	std_logic_vector(1 downto 0);
			LED			: out	std_logic_vector(3 downto 0)
			
		);
end TOP;

architecture mixed of TOP is

---- state Machine signals
type t_state is (start, writeSamples, readSamples);
signal s_mainFSM_state : t_state := start;

-- counter values
signal count25			: integer range 0 to 15;
signal count32			: integer range 0 to 15;

-- video signals
signal videoEN		: std_logic;
signal red, green	: std_logic_vector(7 downto 0);
signal blue			: std_logic_vector(7 downto 0);
signal hc, vc		: std_logic_vector(9 downto 0);

-- gridGen signals
signal red_BG		: std_logic_vector(7 downto 0);
signal green_BG	: std_logic_vector(7 downto 0);
signal blue_BG		: std_logic_vector(7 downto 0);

-- i2c signals
signal go					: std_logic;
signal i2c_data_to_FPGA	: byte;
signal i2c_data_ready	: std_logic;

-- ram signals
signal s_ram_data_out		: std_logic_vector(11 downto 0);
signal s_adc_sample			: std_logic_vector(11 downto 0);
signal s_ram_write_en		: std_logic;
signal addr_read				: natural range 0 to (BUFFER_SIZE - 1) := 1;
signal addr_write				: natural range 0 to (BUFFER_SIZE - 1) := 1;
signal s_readAllowed_32		: std_logic;
signal r_readAllowed_25		: std_logic;
signal r_readAllowed_25_0	: std_logic;

-- trigger_system signals
signal s_triggered		: std_logic;

-- clocks 
signal CLK_sample			: std_logic;
signal CLK_16				: std_logic;

-- measurements
signal s_newSample_32		: std_logic;
signal r_newSample_25		: std_logic;
signal r_newSample_25_0		: std_logic;
signal sample_MAX				: natural;
signal sample_MIN				: natural;

--experimental
signal glow				: boolean;


begin

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
-- Instantiation of submodules

	U1 : vga_640x480
		port map (clk => CLK_25, clr => '1', hsync => ADV_HSYNC,
						vsync => ADV_VSYNC, hc => hc, vc => vc, visible_img => videoEN);
	
--	U2 : i2c_Master
--		port map (CLK_25, SCL, SDA, go, X"72", X"10", X"41", 3);
		
	U2 : i2C_slave
		port map(CLK_32, not KEY(1), SDA, SCL, i2c_data_to_FPGA, open, i2c_data_ready);
		
	U3 : edgedetect
		port map (CLK_25, SW, go, pos_edge);
		
	U4 : sample_RAM
		generic map (DATA_WIDTH => 12, ADDR_SIZE => BUFFER_SIZE)
		port map (clk_a => CLK_25, clk_b => CLK_sample, addr_a => addr_read, addr_b => addr_write,
					data_a => (others => '0'), data_b => s_adc_sample, we_a => '0', we_b => s_ram_write_en,
					q_a => s_ram_data_out,
					q_b => open);
					
	U5 : trigger_system2
		port map (	i_triggervalue => 2079,
						i_adc_sample => s_adc_sample,
						i_clock => CLK_sample,
						o_triggered => s_triggered);
						
	U6 : gridGen
		port map (CLK_25, videoEN, hc, vc, red_BG, green_BG, blue_BG);
		
	U7 : clkdiv
		port map(CLK_32, '1', CLK_16);
		
	U8 : horizontal_control
		port map(CLK_25, KEY(1), KEY(0), hc, videoEN, addr_read);
		

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
-- sequential logic starting here

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
--state machine that controls writing of samples in the on-chip BRAM upon a trigger event.
mainFSM : process(CLK_sample)
begin
	if (rising_edge(CLK_sample)) then
	
		s_newSample_32 <= '0';
		
		case s_mainFSM_state is
			when start =>
				addr_write <= 0;
				if(s_triggered = '1') then
					s_mainFSM_state <= writeSamples;
					s_ram_write_en <= '1';
					s_readAllowed_32 <= '0';
				end if;
			when writeSamples =>
				if (addr_write = BUFFER_SIZE - 1) then
					addr_write			<= 0;
					s_ram_write_en		<= '0';
					s_readAllowed_32	<= '1';
					s_newSample_32		<= '1';
					s_mainFSM_state <= readSamples;
				else
					addr_write <= addr_write + 1;
					s_mainFSM_state <= writeSamples;
				end if;
			when readSamples =>
				s_newSample_32 <= '1';
				s_mainFSM_state <= start;
		end case;
	end if;
end process mainFSM;
--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
--Clock domain crossing synch from sample-writing to reading clock domain.
--These flags are not use at the moment.
cdc_synch : process (CLK_25)
begin
	if (rising_edge(CLK_25)) then
		r_readAllowed_25_0	<= s_readAllowed_32;
		r_readAllowed_25		<= r_readAllowed_25_0;
		
		r_newSample_25_0	<= s_newSample_32;
		r_newSample_25		<= r_newSample_25_0;
	end if;
end process;
--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
--Two counters that show binary upcounting of the 4 on-board LEDs for confirmation of working clocks.
counter32 : process (CLK_32)
variable prescaler	: integer range 0 to 15999999;
begin
	if(rising_edge(CLK_32)) then
		if (prescaler = 15999999) then
			prescaler := 0;
			count32 <= count32 + 1;
		else
		prescaler := prescaler + 1;
		end if;
	end if;
end process;

counter25 : process (CLK_25)
variable prescaler	: integer range 0 to 24999999;
begin
	if(rising_edge(CLK_25)) then
		
		if (prescaler = 24999999) then
			prescaler := 0;
			count25 <= count25 + 1;
			glow <= NOT glow;
		else
		prescaler := prescaler + 1;
		end if;
	end if;
end process;
--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
--Processes that keep track of the minimum and maximum sample value of read out samples.
--Gets cleared each display frame ( vc = 524 ).
measure_min : process (CLK_25)
begin
	if(rising_edge(CLK_25)) then
		if unsigned(vc) = 524 then
			sample_MIN <= 0;
		elsif sample_MIN < map_sampleToScreen(s_ram_data_out) then
			sample_MIN <= map_sampleToScreen(s_ram_data_out);
		end if;
	end if;
end process measure_min;

measure_max : process (CLK_25)
begin
	if(rising_edge(CLK_25)) then
		if unsigned(vc) = 524 then
			sample_MAX <= 2079;
		elsif sample_MAX > map_sampleToScreen(s_ram_data_out) then
			sample_MAX <= map_sampleToScreen(s_ram_data_out);
		end if;
	end if;
end process measure_max;
--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
--Process that colors the current pixel at position (hc,vc).
--Pixel can be a sample point, glow, measurement line, grid, background, or in blanking (not in visible area).
pixelColorizer : process (CLK_25)
begin
	if(rising_edge(CLK_25)) then
		if (videoEN = '1') then
			if (unsigned(vc) - 31 = map_sampleToScreen(s_ram_data_out)) then
				red	<= "11101010";
				green	<= "11101010";		-- scope yellow
				blue	<= "00000000";
			elsif ( (unsigned(vc) - 30 = map_sampleToScreen(s_ram_data_out)
					OR unsigned(vc) - 32 = map_sampleToScreen(s_ram_data_out) ) AND glow) then
				red	<= X"70";
				green	<= X"70";		-- dark scope yellow
				blue	<= X"00";
			elsif ( (unsigned(vc) - 29 = map_sampleToScreen(s_ram_data_out)
					OR unsigned(vc) - 33 = map_sampleToScreen(s_ram_data_out) ) AND glow) then
				red	<= X"4D";
				green	<= X"4D";		-- darker scope yellow
				blue	<= X"00";
			elsif(unsigned(vc) - 31 = sample_MIN OR unsigned(vc) - 31 = sample_MAX) then
				red	<= "11101010";
				green	<= green_BG;		-- red line
				blue	<= blue_BG;
			else
				red	<= red_BG;
				green	<= green_BG;		-- grid
				blue	<= blue_BG;
			end if;
			
		else
			red	<= (others => '0');
			green	<= (others => '0');	-- all black at blanking
			blue	<= (others => '0');
		end if;
	
	end if;
end process pixelColorizer;

i2c_data_mapper : process(CLK_32)
begin
if(rising_edge(CLK_32)) then
	if(i2c_data_ready = '1') then
		LED <= i2c_data_to_FPGA(7 downto 4);
	end if;
end if;
end process i2c_data_mapper;

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
-- combinational logic starting here

--------------------------------------------------------------------------------------------------------------------
--Map eigther crystal clock coutners to LEDs to confirm that clocks are running (for debug purposees only)
--gen : for i in 0 to 3 generate
--	LED(i) <= std_logic_vector(to_unsigned(count25,4))(3-i) when SW = '1' 
--			else std_logic_vector(to_unsigned(count32,4))(3-i);
--end generate;


--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
--Mapping singals to the conduit (physical pins).

ADV_CLK					<= CLK_25;
ADV_D(23 downto 16)	<= red;
ADV_D(15 downto 8)	<= green;
ADV_D(7 downto 0)		<= blue;
ADV_DE					<= videoEN;

s_adc_sample	<= AD_data;
AD_CLK 			<= CLK_sample;

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
--Mapping the horizontal counter values to the address in sample memory.

--direct mapping:
--addr_read	<= to_integer(unsigned(hc) - 144) when videoEN = '1' else 0;

--switch for sample skipping:
--ram_read_addr_inc : process (hc, videoEN, SW)
--begin
--	if (videoEN = '1' AND SW = '0') then
--		addr_read	<= to_integer(unsigned(hc) - 144);
--	elsif (videoEN = '1' AND SW = '1') then
--		if ( to_integer(unsigned(hc) - 144) * 1 )/2 < BUFFER_SIZE then
--			addr_read	<= ( to_integer(unsigned(hc) - 144) * 1 )/2 mod BUFFER_SIZE;
--		else
--			addr_read	<= BUFFER_SIZE - 1;
--		end if;
--	else
--		addr_read <= 0;
--	end if;
--end process ram_read_addr_inc;

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
--This following section sets the sampling clock to the desired value.
--CLK_sample controles the state machine responsible for wirting samples to the BRAM (on-chip SRAM for the samples).
--CLK_sample is also fed to the external ADC as sampling frequency and therefore setting the sample rate.

--CLK_sample	<= CLK_32 when SW = '0' else CLK_16;	-- <-- switchable clock source.
CLK_sample <= CLK_32;											-- <-- fixed clock source.
																		-- only unse one statement at a time to avoid multiple drivers
																		--	of CLK_sample.

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

end mixed;
