create_clock -name CLK_25 -period 40.00 [get_ports CLK_25]
create_clock -name CLK_32 -period 31.25 [get_ports CLK_32]
create_clock -name CLK_16 -period 62.50 [get_ports CLK_16]

#create_clock -name ADC_LAUNCH_CLK -period 4.00 -waveform {3 5}
#
#create_generated_clock -name ADC_LATCH_CLK \
#	-source [get_pins {RX_PLL_inst|altpll_component|auto_generated|pll1|inclk[0]}] \
#	[get_pins {RX_PLL_inst|altpll_component|auto_generated|pll1|clk[0]}]
#	
#derive_pll_clocks
#derive_clock_uncertainty

