-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/28/2024 23:58:21"

-- 
-- Device: Altera EP3C5E144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TOP IS
    PORT (
	RAM_DQ : INOUT std_logic_vector(7 DOWNTO 0);
	RAM_nWE : OUT std_logic;
	RAM_nCAS : OUT std_logic;
	RAM_nRAS : OUT std_logic;
	RAM_nCS : OUT std_logic;
	RAM_BA0 : OUT std_logic;
	RAM_BA1 : OUT std_logic;
	RAM_DQM : OUT std_logic;
	RAM_CKE : OUT std_logic;
	RAM_CLK : OUT std_logic;
	RAM_A : OUT std_logic_vector(12 DOWNTO 0);
	CLK_25 : IN std_logic;
	CLK_32 : IN std_logic;
	AD_CLK : OUT std_logic;
	AD_data : IN std_logic_vector(11 DOWNTO 0);
	ADV_D : OUT std_logic_vector(23 DOWNTO 0);
	ADV_HSYNC : OUT std_logic;
	ADV_CLK : OUT std_logic;
	ADV_VSYNC : OUT std_logic;
	ADV_I2SD : OUT std_logic;
	ADV_SCLK : OUT std_logic;
	ADV_LRCLK : OUT std_logic;
	ADV_DE : OUT std_logic;
	SCL : OUT std_logic;
	SDA : INOUT std_logic;
	SW : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LED : OUT std_logic_vector(3 DOWNTO 0)
	);
END TOP;

-- Design Ports Information
-- RAM_nWE	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_nCAS	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_nRAS	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_nCS	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_BA0	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_BA1	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DQM	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_CKE	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_CLK	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[4]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[6]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[7]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[8]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[9]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[10]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[11]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_A[12]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_CLK	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[2]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[3]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[4]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[5]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[6]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[7]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[8]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[9]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[10]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[11]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[12]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[13]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[14]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[15]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[16]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[17]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[18]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[19]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[20]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[21]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[22]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_D[23]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_HSYNC	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_CLK	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_VSYNC	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_I2SD	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_SCLK	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_LRCLK	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADV_DE	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DQ[0]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DQ[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DQ[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DQ[3]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DQ[4]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DQ[5]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DQ[6]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DQ[7]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_32	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_25	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[6]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[7]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[4]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[5]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[2]	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[3]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[0]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[1]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[10]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[11]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[8]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[9]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RAM_nWE : std_logic;
SIGNAL ww_RAM_nCAS : std_logic;
SIGNAL ww_RAM_nRAS : std_logic;
SIGNAL ww_RAM_nCS : std_logic;
SIGNAL ww_RAM_BA0 : std_logic;
SIGNAL ww_RAM_BA1 : std_logic;
SIGNAL ww_RAM_DQM : std_logic;
SIGNAL ww_RAM_CKE : std_logic;
SIGNAL ww_RAM_CLK : std_logic;
SIGNAL ww_RAM_A : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_CLK_25 : std_logic;
SIGNAL ww_CLK_32 : std_logic;
SIGNAL ww_AD_CLK : std_logic;
SIGNAL ww_AD_data : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_ADV_D : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_ADV_HSYNC : std_logic;
SIGNAL ww_ADV_CLK : std_logic;
SIGNAL ww_ADV_VSYNC : std_logic;
SIGNAL ww_ADV_I2SD : std_logic;
SIGNAL ww_ADV_SCLK : std_logic;
SIGNAL ww_ADV_LRCLK : std_logic;
SIGNAL ww_ADV_DE : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_SW : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLK_32~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_25~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~26_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~10_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \U2|count[4]~17_combout\ : std_logic;
SIGNAL \U2|FSM:bit_count[2]~q\ : std_logic;
SIGNAL \U2|FSM:bit_count[2]~0_combout\ : std_logic;
SIGNAL \U1|LessThan3~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][8]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][7]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][6]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][4]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][3]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][7]~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][6]~13_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][4]~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][3]~15_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][2]~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][1]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[15]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~162_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~164_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~166_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~167_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~169_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~170_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~172_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~175_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~176_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~177_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~179_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~182_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~183_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~184_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~187_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~189_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~190_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[69]~191_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~195_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~198_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~200_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~203_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~205_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~206_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~213_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~215_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~219_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[91]~220_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[90]~221_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~224_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~226_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~228_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[98]~230_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[97]~231_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~234_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[109]~236_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~237_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~239_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~240_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~243_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~246_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~249_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~252_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~255_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~257_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~259_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~260_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[133]~263_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~266_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~267_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~270_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[9]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[8]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[7]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[6]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[3]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[1]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[0]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[12]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|_~0_combout\ : std_logic;
SIGNAL \ramreader~7_combout\ : std_logic;
SIGNAL \ramreader~14_combout\ : std_logic;
SIGNAL \ramreader~16_combout\ : std_logic;
SIGNAL \ramreader~17_combout\ : std_logic;
SIGNAL \ramreader~18_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \Equal9~3_combout\ : std_logic;
SIGNAL \Equal9~4_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \Equal10~7_combout\ : std_logic;
SIGNAL \Equal9~7_combout\ : std_logic;
SIGNAL \U1|Equal1~1_combout\ : std_logic;
SIGNAL \counter25:prescaler[18]~q\ : std_logic;
SIGNAL \counter25:prescaler[20]~q\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \counter25:prescaler[22]~q\ : std_logic;
SIGNAL \counter32:prescaler[2]~q\ : std_logic;
SIGNAL \counter32:prescaler[11]~q\ : std_logic;
SIGNAL \counter32:prescaler[13]~q\ : std_logic;
SIGNAL \counter32:prescaler[15]~q\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \U6|colorgen~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[117]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[116]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[114]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[113]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[112]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[111]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[110]~71_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[125]~81_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[124]~82_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[123]~83_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[122]~85_combout\ : std_logic;
SIGNAL \addr_read[3]~17_combout\ : std_logic;
SIGNAL \addr_read[3]~18_combout\ : std_logic;
SIGNAL \addr_read[4]~19_combout\ : std_logic;
SIGNAL \addr_read[4]~20_combout\ : std_logic;
SIGNAL \addr_read[5]~21_combout\ : std_logic;
SIGNAL \addr_read[5]~22_combout\ : std_logic;
SIGNAL \addr_read[6]~23_combout\ : std_logic;
SIGNAL \addr_read[6]~24_combout\ : std_logic;
SIGNAL \addr_read[7]~25_combout\ : std_logic;
SIGNAL \addr_read[7]~26_combout\ : std_logic;
SIGNAL \U6|green~0_combout\ : std_logic;
SIGNAL \sample_MIN~3_combout\ : std_logic;
SIGNAL \sample_MIN~5_combout\ : std_logic;
SIGNAL \sample_MAX~4_combout\ : std_logic;
SIGNAL \sample_MAX~6_combout\ : std_logic;
SIGNAL \U2|Equal2~0_combout\ : std_logic;
SIGNAL \U2|Selector25~1_combout\ : std_logic;
SIGNAL \U2|Selector25~2_combout\ : std_logic;
SIGNAL \prescaler~14_combout\ : std_logic;
SIGNAL \prescaler~16_combout\ : std_logic;
SIGNAL \prescaler~18_combout\ : std_logic;
SIGNAL \prescaler~21_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \U2|run_timer~q\ : std_logic;
SIGNAL \U2|Selector12~2_combout\ : std_logic;
SIGNAL \U2|Selector12~3_combout\ : std_logic;
SIGNAL \U2|Selector12~4_combout\ : std_logic;
SIGNAL \U2|Selector12~5_combout\ : std_logic;
SIGNAL \U2|sda~1_combout\ : std_logic;
SIGNAL \U2|Selector17~0_combout\ : std_logic;
SIGNAL \U2|Selector8~2_combout\ : std_logic;
SIGNAL \U2|WideOr0~0_combout\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U2|Add0~2_combout\ : std_logic;
SIGNAL \U2|Selector19~0_combout\ : std_logic;
SIGNAL \U2|Selector0~0_combout\ : std_logic;
SIGNAL \U2|r_byte_to_send[3]~2_combout\ : std_logic;
SIGNAL \U5|s_state.belowLevel~q\ : std_logic;
SIGNAL \U2|Selector3~0_combout\ : std_logic;
SIGNAL \U2|Selector1~0_combout\ : std_logic;
SIGNAL \U5|LessThan0~2_combout\ : std_logic;
SIGNAL \U5|LessThan0~3_combout\ : std_logic;
SIGNAL \U5|s_state.ready~q\ : std_logic;
SIGNAL \U5|Selector2~0_combout\ : std_logic;
SIGNAL \U5|s_state.start~q\ : std_logic;
SIGNAL \U5|Selector3~1_combout\ : std_logic;
SIGNAL \U5|Selector1~0_combout\ : std_logic;
SIGNAL \U5|Selector2~1_combout\ : std_logic;
SIGNAL \U2|Selector2~0_combout\ : std_logic;
SIGNAL \U5|Selector1~1_combout\ : std_logic;
SIGNAL \U5|Selector1~2_combout\ : std_logic;
SIGNAL \U5|s_state.start~0_combout\ : std_logic;
SIGNAL \U2|Selector3~1_combout\ : std_logic;
SIGNAL \U2|Selector4~0_combout\ : std_logic;
SIGNAL \U2|Selector5~0_combout\ : std_logic;
SIGNAL \U2|Selector6~0_combout\ : std_logic;
SIGNAL \U2|Selector7~0_combout\ : std_logic;
SIGNAL \U2|Selector7~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~273_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[62]~275_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~282_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~283_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~284_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[76]~286_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~287_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~288_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~289_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[94]~293_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~298_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~302_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~306_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~307_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~310_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~311_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~312_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~314_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[134]~315_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~317_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~318_combout\ : std_logic;
SIGNAL \U2|r_byte_to_send[3]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~321_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~323_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[130]~89_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[129]~90_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[128]~91_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[127]~92_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[126]~93_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \RAM_DQ[0]~input_o\ : std_logic;
SIGNAL \RAM_DQ[1]~input_o\ : std_logic;
SIGNAL \RAM_DQ[2]~input_o\ : std_logic;
SIGNAL \RAM_DQ[3]~input_o\ : std_logic;
SIGNAL \RAM_DQ[4]~input_o\ : std_logic;
SIGNAL \RAM_DQ[5]~input_o\ : std_logic;
SIGNAL \RAM_DQ[6]~input_o\ : std_logic;
SIGNAL \RAM_DQ[7]~input_o\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \sample_MAX[5]~feeder_combout\ : std_logic;
SIGNAL \sample_MAX[12]~feeder_combout\ : std_logic;
SIGNAL \SCL~output_o\ : std_logic;
SIGNAL \RAM_DQ[0]~output_o\ : std_logic;
SIGNAL \RAM_DQ[1]~output_o\ : std_logic;
SIGNAL \RAM_DQ[2]~output_o\ : std_logic;
SIGNAL \RAM_DQ[3]~output_o\ : std_logic;
SIGNAL \RAM_DQ[4]~output_o\ : std_logic;
SIGNAL \RAM_DQ[5]~output_o\ : std_logic;
SIGNAL \RAM_DQ[6]~output_o\ : std_logic;
SIGNAL \RAM_DQ[7]~output_o\ : std_logic;
SIGNAL \SDA~output_o\ : std_logic;
SIGNAL \RAM_nWE~output_o\ : std_logic;
SIGNAL \RAM_nCAS~output_o\ : std_logic;
SIGNAL \RAM_nRAS~output_o\ : std_logic;
SIGNAL \RAM_nCS~output_o\ : std_logic;
SIGNAL \RAM_BA0~output_o\ : std_logic;
SIGNAL \RAM_BA1~output_o\ : std_logic;
SIGNAL \RAM_DQM~output_o\ : std_logic;
SIGNAL \RAM_CKE~output_o\ : std_logic;
SIGNAL \RAM_CLK~output_o\ : std_logic;
SIGNAL \RAM_A[0]~output_o\ : std_logic;
SIGNAL \RAM_A[1]~output_o\ : std_logic;
SIGNAL \RAM_A[2]~output_o\ : std_logic;
SIGNAL \RAM_A[3]~output_o\ : std_logic;
SIGNAL \RAM_A[4]~output_o\ : std_logic;
SIGNAL \RAM_A[5]~output_o\ : std_logic;
SIGNAL \RAM_A[6]~output_o\ : std_logic;
SIGNAL \RAM_A[7]~output_o\ : std_logic;
SIGNAL \RAM_A[8]~output_o\ : std_logic;
SIGNAL \RAM_A[9]~output_o\ : std_logic;
SIGNAL \RAM_A[10]~output_o\ : std_logic;
SIGNAL \RAM_A[11]~output_o\ : std_logic;
SIGNAL \RAM_A[12]~output_o\ : std_logic;
SIGNAL \AD_CLK~output_o\ : std_logic;
SIGNAL \ADV_D[0]~output_o\ : std_logic;
SIGNAL \ADV_D[1]~output_o\ : std_logic;
SIGNAL \ADV_D[2]~output_o\ : std_logic;
SIGNAL \ADV_D[3]~output_o\ : std_logic;
SIGNAL \ADV_D[4]~output_o\ : std_logic;
SIGNAL \ADV_D[5]~output_o\ : std_logic;
SIGNAL \ADV_D[6]~output_o\ : std_logic;
SIGNAL \ADV_D[7]~output_o\ : std_logic;
SIGNAL \ADV_D[8]~output_o\ : std_logic;
SIGNAL \ADV_D[9]~output_o\ : std_logic;
SIGNAL \ADV_D[10]~output_o\ : std_logic;
SIGNAL \ADV_D[11]~output_o\ : std_logic;
SIGNAL \ADV_D[12]~output_o\ : std_logic;
SIGNAL \ADV_D[13]~output_o\ : std_logic;
SIGNAL \ADV_D[14]~output_o\ : std_logic;
SIGNAL \ADV_D[15]~output_o\ : std_logic;
SIGNAL \ADV_D[16]~output_o\ : std_logic;
SIGNAL \ADV_D[17]~output_o\ : std_logic;
SIGNAL \ADV_D[18]~output_o\ : std_logic;
SIGNAL \ADV_D[19]~output_o\ : std_logic;
SIGNAL \ADV_D[20]~output_o\ : std_logic;
SIGNAL \ADV_D[21]~output_o\ : std_logic;
SIGNAL \ADV_D[22]~output_o\ : std_logic;
SIGNAL \ADV_D[23]~output_o\ : std_logic;
SIGNAL \ADV_HSYNC~output_o\ : std_logic;
SIGNAL \ADV_CLK~output_o\ : std_logic;
SIGNAL \ADV_VSYNC~output_o\ : std_logic;
SIGNAL \ADV_I2SD~output_o\ : std_logic;
SIGNAL \ADV_SCLK~output_o\ : std_logic;
SIGNAL \ADV_LRCLK~output_o\ : std_logic;
SIGNAL \ADV_DE~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \CLK_25~input_o\ : std_logic;
SIGNAL \CLK_25~inputclkctrl_outclk\ : std_logic;
SIGNAL \U2|count[0]~8_combout\ : std_logic;
SIGNAL \U2|Equal6~0_combout\ : std_logic;
SIGNAL \U2|Equal2~1_combout\ : std_logic;
SIGNAL \U2|count[4]~14_combout\ : std_logic;
SIGNAL \U2|count[0]~9\ : std_logic;
SIGNAL \U2|count[1]~11\ : std_logic;
SIGNAL \U2|count[2]~12_combout\ : std_logic;
SIGNAL \U2|count[2]~13\ : std_logic;
SIGNAL \U2|count[3]~16\ : std_logic;
SIGNAL \U2|count[4]~18\ : std_logic;
SIGNAL \U2|count[5]~19_combout\ : std_logic;
SIGNAL \U2|count[5]~20\ : std_logic;
SIGNAL \U2|count[6]~21_combout\ : std_logic;
SIGNAL \U2|count[6]~22\ : std_logic;
SIGNAL \U2|count[7]~23_combout\ : std_logic;
SIGNAL \U2|count[3]~15_combout\ : std_logic;
SIGNAL \U2|Equal0~0_combout\ : std_logic;
SIGNAL \U2|Equal0~1_combout\ : std_logic;
SIGNAL \U2|Equal1~0_combout\ : std_logic;
SIGNAL \U2|Equal0~2_combout\ : std_logic;
SIGNAL \U2|Selector13~0_combout\ : std_logic;
SIGNAL \SW~input_o\ : std_logic;
SIGNAL \U3|reg0~feeder_combout\ : std_logic;
SIGNAL \U3|reg0~q\ : std_logic;
SIGNAL \U3|reg1~q\ : std_logic;
SIGNAL \U2|Selector11~0_combout\ : std_logic;
SIGNAL \U2|Selector10~0_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.idle~q\ : std_logic;
SIGNAL \U2|Selector8~3_combout\ : std_logic;
SIGNAL \U2|Selector9~0_combout\ : std_logic;
SIGNAL \U2|Selector9~1_combout\ : std_logic;
SIGNAL \U2|Equal4~0_combout\ : std_logic;
SIGNAL \U2|Selector21~0_combout\ : std_logic;
SIGNAL \U2|FSM:bit_count[0]~q\ : std_logic;
SIGNAL \U2|Add0~1_combout\ : std_logic;
SIGNAL \U2|FSM:bit_count[1]~0_combout\ : std_logic;
SIGNAL \U2|Selector20~0_combout\ : std_logic;
SIGNAL \U2|FSM:bit_count[1]~q\ : std_logic;
SIGNAL \U2|FSM:bit_count[3]~0_combout\ : std_logic;
SIGNAL \U2|Selector18~0_combout\ : std_logic;
SIGNAL \U2|FSM:bit_count[3]~q\ : std_logic;
SIGNAL \U2|Equal3~0_combout\ : std_logic;
SIGNAL \U2|Selector13~1_combout\ : std_logic;
SIGNAL \U2|Selector13~2_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.scllo~q\ : std_logic;
SIGNAL \U2|Selector12~6_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.sclhi~q\ : std_logic;
SIGNAL \U2|Selector14~0_combout\ : std_logic;
SIGNAL \U2|Selector14~1_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.scllo2~q\ : std_logic;
SIGNAL \U2|Selector15~0_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.sclhi2~q\ : std_logic;
SIGNAL \U2|Selector16~0_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.stop~q\ : std_logic;
SIGNAL \U2|Selector25~0_combout\ : std_logic;
SIGNAL \U2|Selector11~1_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.start~q\ : std_logic;
SIGNAL \U2|scl~4_combout\ : std_logic;
SIGNAL \U2|scl~3_combout\ : std_logic;
SIGNAL \U2|scl~en_q\ : std_logic;
SIGNAL \U2|Selector22~0_combout\ : std_logic;
SIGNAL \U2|count[1]~10_combout\ : std_logic;
SIGNAL \U2|Equal6~1_combout\ : std_logic;
SIGNAL \U2|Selector22~1_combout\ : std_logic;
SIGNAL \U2|Selector22~2_combout\ : std_logic;
SIGNAL \U2|Selector24~0_combout\ : std_logic;
SIGNAL \U2|sda~2_combout\ : std_logic;
SIGNAL \U2|sda~en_q\ : std_logic;
SIGNAL \CLK_32~input_o\ : std_logic;
SIGNAL \U1|Add1~3\ : std_logic;
SIGNAL \U1|Add1~4_combout\ : std_logic;
SIGNAL \U1|vcs~1_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U6|colorgen~1_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|hcs~0_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|hcs~2_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|hcs~1_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|vsenable~q\ : std_logic;
SIGNAL \U1|Add1~5\ : std_logic;
SIGNAL \U1|Add1~7\ : std_logic;
SIGNAL \U1|Add1~8_combout\ : std_logic;
SIGNAL \U1|Add1~9\ : std_logic;
SIGNAL \U1|Add1~10_combout\ : std_logic;
SIGNAL \U1|Add1~11\ : std_logic;
SIGNAL \U1|Add1~12_combout\ : std_logic;
SIGNAL \U1|Add1~13\ : std_logic;
SIGNAL \U1|Add1~14_combout\ : std_logic;
SIGNAL \U1|Add1~15\ : std_logic;
SIGNAL \U1|Add1~17\ : std_logic;
SIGNAL \U1|Add1~18_combout\ : std_logic;
SIGNAL \U1|vcs~0_combout\ : std_logic;
SIGNAL \U1|Add1~16_combout\ : std_logic;
SIGNAL \U1|Equal1~0_combout\ : std_logic;
SIGNAL \U1|Equal1~2_combout\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|vcs~3_combout\ : std_logic;
SIGNAL \U1|Add1~1\ : std_logic;
SIGNAL \U1|Add1~2_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \CLK_32~inputclkctrl_outclk\ : std_logic;
SIGNAL \AD_data[11]~input_o\ : std_logic;
SIGNAL \AD_data[10]~input_o\ : std_logic;
SIGNAL \AD_data[9]~input_o\ : std_logic;
SIGNAL \AD_data[5]~input_o\ : std_logic;
SIGNAL \AD_data[6]~input_o\ : std_logic;
SIGNAL \AD_data[7]~input_o\ : std_logic;
SIGNAL \U5|LessThan0~0_combout\ : std_logic;
SIGNAL \U5|LessThan0~1_combout\ : std_logic;
SIGNAL \U5|Selector3~0_combout\ : std_logic;
SIGNAL \U5|s_state.triggered~q\ : std_logic;
SIGNAL \U5|o_triggered~feeder_combout\ : std_logic;
SIGNAL \U5|o_triggered~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \s_mainFSM_state.readSamples~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \s_mainFSM_state.start~q\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \s_mainFSM_state.writeSamples~q\ : std_logic;
SIGNAL \s_ram_write_en~0_combout\ : std_logic;
SIGNAL \s_ram_write_en~q\ : std_logic;
SIGNAL \AD_data[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \addr_write[0]~_wirecell_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \U1|visible_img~0_combout\ : std_logic;
SIGNAL \U1|LessThan4~1_combout\ : std_logic;
SIGNAL \U1|Add1~6_combout\ : std_logic;
SIGNAL \U1|vcs~2_combout\ : std_logic;
SIGNAL \U1|LessThan4~0_combout\ : std_logic;
SIGNAL \U1|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|LessThan5~1_combout\ : std_logic;
SIGNAL \U1|visible_img~1_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \addr_read[0]~12_combout\ : std_logic;
SIGNAL \addr_read[0]~13_combout\ : std_logic;
SIGNAL \addr_read[1]~14_combout\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[117]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[116]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[115]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[114]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[113]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[112]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[111]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[110]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[108]~74_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[108]~73_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[121]~75_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[121]~72_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[130]~76_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[129]~77_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[128]~78_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[127]~79_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[126]~80_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[125]~94_combout\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[124]~95_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[123]~84_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[109]~87_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[109]~86_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_1~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[122]~88_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~17_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~19_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~20_combout\ : std_logic;
SIGNAL \addr_read[2]~15_combout\ : std_logic;
SIGNAL \addr_read[2]~16_combout\ : std_logic;
SIGNAL \addr_read[2]~34_combout\ : std_logic;
SIGNAL \addr_read[3]~35_combout\ : std_logic;
SIGNAL \addr_read[4]~36_combout\ : std_logic;
SIGNAL \addr_read[5]~37_combout\ : std_logic;
SIGNAL \addr_read[6]~38_combout\ : std_logic;
SIGNAL \addr_read[7]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~12_combout\ : std_logic;
SIGNAL \addr_read[8]~27_combout\ : std_logic;
SIGNAL \addr_read[8]~28_combout\ : std_logic;
SIGNAL \addr_read[8]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[115]~60_combout\ : std_logic;
SIGNAL \addr_read[9]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~14_combout\ : std_logic;
SIGNAL \addr_read[9]~30_combout\ : std_logic;
SIGNAL \addr_read[9]~32_combout\ : std_logic;
SIGNAL \addr_read[9]~33_combout\ : std_logic;
SIGNAL \AD_data[1]~input_o\ : std_logic;
SIGNAL \AD_data[2]~input_o\ : std_logic;
SIGNAL \AD_data[3]~input_o\ : std_logic;
SIGNAL \AD_data[4]~input_o\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~1_combout\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~6_combout\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][2]~7_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][1]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][4]~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \AD_data[8]~input_o\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][8]~11_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[13]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~272_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~171_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~163_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~165_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~271_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~168_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~274_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~320_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~173_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~174_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~322_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~178_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~180_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~278_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[62]~181_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~276_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~277_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~185_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~186_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~188_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~281_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~279_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[69]~280_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~192_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~193_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~194_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~196_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~197_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~285_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[76]~201_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~202_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~324_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~204_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~207_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~199_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~208_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~209_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~210_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[83]~211_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~212_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~214_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~216_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[94]~217_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[93]~218_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[83]~291_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~295_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~292_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[91]~296_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[90]~325_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[89]~223_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~225_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~290_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[93]~294_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~297_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~227_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~299_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[99]~229_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[89]~222_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[98]~301_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[97]~232_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~233_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[109]~303_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[99]~300_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~304_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~238_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~326_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~241_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][3]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~242_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~235_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~244_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~245_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~305_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~308_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~247_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~248_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~250_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~251_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~254_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~309_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~313_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~256_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~327_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~258_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~261_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~253_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[134]~262_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[133]~316_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~264_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~265_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~319_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~268_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~269_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[2]~8_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[5]~5_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|_~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[11]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[10]~0_combout\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~21\ : std_logic;
SIGNAL \Add8~23\ : std_logic;
SIGNAL \Add8~25\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~29\ : std_logic;
SIGNAL \Add8~31\ : std_logic;
SIGNAL \Add8~33\ : std_logic;
SIGNAL \Add8~35\ : std_logic;
SIGNAL \Add8~36_combout\ : std_logic;
SIGNAL \Add8~26_combout\ : std_logic;
SIGNAL \Add8~22_combout\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Add8~32_combout\ : std_logic;
SIGNAL \Add8~28_combout\ : std_logic;
SIGNAL \Add8~34_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \blue~0_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \ramreader~15_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \ramreader~25_combout\ : std_logic;
SIGNAL \Add6~1_cout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \ramreader~19_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \ramreader~20_combout\ : std_logic;
SIGNAL \ramreader~22_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \ramreader~21_combout\ : std_logic;
SIGNAL \ramreader~23_combout\ : std_logic;
SIGNAL \ramreader~24_combout\ : std_logic;
SIGNAL \ramreader~26_combout\ : std_logic;
SIGNAL \ramreader~27_combout\ : std_logic;
SIGNAL \ramreader~28_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \ramreader~0_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \ramreader~1_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \ramreader~2_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \ramreader~3_combout\ : std_logic;
SIGNAL \ramreader~4_combout\ : std_logic;
SIGNAL \ramreader~5_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \ramreader~6_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \ramreader~8_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \ramreader~9_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \ramreader~10_combout\ : std_logic;
SIGNAL \ramreader~11_combout\ : std_logic;
SIGNAL \ramreader~12_combout\ : std_logic;
SIGNAL \ramreader~13_combout\ : std_logic;
SIGNAL \blue~1_combout\ : std_logic;
SIGNAL \U6|colorgen~3_combout\ : std_logic;
SIGNAL \U6|red~2_combout\ : std_logic;
SIGNAL \ramreader~29_combout\ : std_logic;
SIGNAL \blue~2_combout\ : std_logic;
SIGNAL \blue~3_combout\ : std_logic;
SIGNAL \blue[2]~feeder_combout\ : std_logic;
SIGNAL \blue[3]~feeder_combout\ : std_logic;
SIGNAL \U6|red[1]~0_combout\ : std_logic;
SIGNAL \green~0_combout\ : std_logic;
SIGNAL \U6|colorgen~2_combout\ : std_logic;
SIGNAL \U6|red~3_combout\ : std_logic;
SIGNAL \green~1_combout\ : std_logic;
SIGNAL \green~2_combout\ : std_logic;
SIGNAL \green~3_combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Equal4~9_combout\ : std_logic;
SIGNAL \Equal4~10_combout\ : std_logic;
SIGNAL \green~4_combout\ : std_logic;
SIGNAL \green~5_combout\ : std_logic;
SIGNAL \green~6_combout\ : std_logic;
SIGNAL \green~7_combout\ : std_logic;
SIGNAL \green~8_combout\ : std_logic;
SIGNAL \green~9_combout\ : std_logic;
SIGNAL \green~10_combout\ : std_logic;
SIGNAL \red~0_combout\ : std_logic;
SIGNAL \U6|red~1_combout\ : std_logic;
SIGNAL \red~1_combout\ : std_logic;
SIGNAL \Add4~1_cout\ : std_logic;
SIGNAL \Add4~3_cout\ : std_logic;
SIGNAL \Add4~5_cout\ : std_logic;
SIGNAL \Add4~7_cout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \counter25:prescaler[5]~q\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \prescaler~8_combout\ : std_logic;
SIGNAL \counter25:prescaler[6]~q\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \counter25:prescaler[7]~q\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \counter25:prescaler[9]~q\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \prescaler~9_combout\ : std_logic;
SIGNAL \counter25:prescaler[11]~q\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \prescaler~10_combout\ : std_logic;
SIGNAL \counter25:prescaler[12]~q\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \prescaler~11_combout\ : std_logic;
SIGNAL \counter25:prescaler[13]~q\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \counter25:prescaler[15]~q\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \prescaler~12_combout\ : std_logic;
SIGNAL \counter25:prescaler[14]~q\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \prescaler~15_combout\ : std_logic;
SIGNAL \counter25:prescaler[19]~q\ : std_logic;
SIGNAL \prescaler~13_combout\ : std_logic;
SIGNAL \counter25:prescaler[16]~q\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \counter25:prescaler[17]~q\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \prescaler~17_combout\ : std_logic;
SIGNAL \counter25:prescaler[21]~q\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \counter25:prescaler[23]~q\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \prescaler~19_combout\ : std_logic;
SIGNAL \counter25:prescaler[24]~q\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \counter25:prescaler[8]~q\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \counter25:prescaler[10]~q\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \glow~0_combout\ : std_logic;
SIGNAL \glow~q\ : std_logic;
SIGNAL \blue~4_combout\ : std_logic;
SIGNAL \red~2_combout\ : std_logic;
SIGNAL \red~3_combout\ : std_logic;
SIGNAL \sample_MIN~9_combout\ : std_logic;
SIGNAL \sample_MIN~11_combout\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \sample_MIN~13_combout\ : std_logic;
SIGNAL \sample_MIN~14_combout\ : std_logic;
SIGNAL \sample_MIN~15_combout\ : std_logic;
SIGNAL \sample_MIN[13]~feeder_combout\ : std_logic;
SIGNAL \Add8~24_combout\ : std_logic;
SIGNAL \sample_MIN~18_combout\ : std_logic;
SIGNAL \sample_MIN~10_combout\ : std_logic;
SIGNAL \sample_MIN[8]~feeder_combout\ : std_logic;
SIGNAL \sample_MIN~6_combout\ : std_logic;
SIGNAL \sample_MIN~4_combout\ : std_logic;
SIGNAL \sample_MIN~0_combout\ : std_logic;
SIGNAL \sample_MIN~2_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~36_combout\ : std_logic;
SIGNAL \sample_MIN[15]~1_combout\ : std_logic;
SIGNAL \Equal9~5_combout\ : std_logic;
SIGNAL \sample_MIN~16_combout\ : std_logic;
SIGNAL \Equal9~6_combout\ : std_logic;
SIGNAL \sample_MIN~19_combout\ : std_logic;
SIGNAL \Equal9~8_combout\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \sample_MAX~3_combout\ : std_logic;
SIGNAL \sample_MAX~7_combout\ : std_logic;
SIGNAL \sample_MIN~17_combout\ : std_logic;
SIGNAL \sample_MIN~7_combout\ : std_logic;
SIGNAL \sample_MAX[7]~feeder_combout\ : std_logic;
SIGNAL \sample_MAX~5_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~19_cout\ : std_logic;
SIGNAL \LessThan1~21_cout\ : std_logic;
SIGNAL \LessThan1~23_cout\ : std_logic;
SIGNAL \LessThan1~25_cout\ : std_logic;
SIGNAL \LessThan1~27_cout\ : std_logic;
SIGNAL \LessThan1~29_cout\ : std_logic;
SIGNAL \LessThan1~31_cout\ : std_logic;
SIGNAL \LessThan1~33_cout\ : std_logic;
SIGNAL \LessThan1~35_cout\ : std_logic;
SIGNAL \LessThan1~36_combout\ : std_logic;
SIGNAL \sample_MAX[15]~0_combout\ : std_logic;
SIGNAL \sample_MAX~2_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \sample_MIN~8_combout\ : std_logic;
SIGNAL \sample_MAX[6]~feeder_combout\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \sample_MAX~1_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal10~4_combout\ : std_logic;
SIGNAL \Add10~17\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \Equal10~5_combout\ : std_logic;
SIGNAL \sample_MIN~12_combout\ : std_logic;
SIGNAL \Equal10~6_combout\ : std_logic;
SIGNAL \Equal10~8_combout\ : std_logic;
SIGNAL \ramreader~30_combout\ : std_logic;
SIGNAL \red~4_combout\ : std_logic;
SIGNAL \red~5_combout\ : std_logic;
SIGNAL \red~6_combout\ : std_logic;
SIGNAL \red~7_combout\ : std_logic;
SIGNAL \red~8_combout\ : std_logic;
SIGNAL \red~9_combout\ : std_logic;
SIGNAL \red~10_combout\ : std_logic;
SIGNAL \red~11_combout\ : std_logic;
SIGNAL \red~12_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U6|colorgen~0_combout\ : std_logic;
SIGNAL \U1|LessThan1~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \counter32:prescaler[0]~q\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \counter32:prescaler[3]~q\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \counter32:prescaler[4]~q\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \counter32:prescaler[5]~q\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \counter32:prescaler[6]~q\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \counter32:prescaler[8]~q\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \counter32:prescaler[12]~q\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \counter32:prescaler[14]~q\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \counter32:prescaler[16]~q\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \counter32:prescaler[9]~q\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \prescaler~20_combout\ : std_logic;
SIGNAL \counter32:prescaler[10]~q\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \counter32:prescaler[1]~q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \counter32:prescaler[7]~q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \prescaler~22_combout\ : std_logic;
SIGNAL \counter32:prescaler[18]~q\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \counter32:prescaler[19]~q\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \counter32:prescaler[17]~q\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \prescaler~24_combout\ : std_logic;
SIGNAL \counter32:prescaler[21]~q\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \prescaler~26_combout\ : std_logic;
SIGNAL \counter32:prescaler[23]~q\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \prescaler~25_combout\ : std_logic;
SIGNAL \counter32:prescaler[22]~q\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \prescaler~23_combout\ : std_logic;
SIGNAL \counter32:prescaler[20]~q\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \count32[0]~4_combout\ : std_logic;
SIGNAL \count32[2]~2_combout\ : std_logic;
SIGNAL \count32[1]~3_combout\ : std_logic;
SIGNAL \count32[3]~0_combout\ : std_logic;
SIGNAL \count32[3]~1_combout\ : std_logic;
SIGNAL \count25[1]~3_combout\ : std_logic;
SIGNAL \count25[2]~2_combout\ : std_logic;
SIGNAL \count25[3]~0_combout\ : std_logic;
SIGNAL \count25[3]~1_combout\ : std_logic;
SIGNAL \LED~0_combout\ : std_logic;
SIGNAL \LED~1_combout\ : std_logic;
SIGNAL \LED~2_combout\ : std_logic;
SIGNAL \LED~3_combout\ : std_logic;
SIGNAL \U2|r_no_of_bytes_to_send\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U2|r_byte_to_send\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U6|green\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U6|red\ : std_logic_vector(7 DOWNTO 0);
SIGNAL sample_MIN : std_logic_vector(30 DOWNTO 0);
SIGNAL sample_MAX : std_logic_vector(30 DOWNTO 0);
SIGNAL red : std_logic_vector(7 DOWNTO 0);
SIGNAL green : std_logic_vector(7 DOWNTO 0);
SIGNAL count32 : std_logic_vector(3 DOWNTO 0);
SIGNAL count25 : std_logic_vector(3 DOWNTO 0);
SIGNAL blue : std_logic_vector(7 DOWNTO 0);
SIGNAL addr_write : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|vcs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|hcs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U2|ALT_INV_scl~en_q\ : std_logic;
SIGNAL \U1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_sda~en_q\ : std_logic;
SIGNAL \U2|ALT_INV_s_FSM_state.scllo~q\ : std_logic;

BEGIN

RAM_nWE <= ww_RAM_nWE;
RAM_nCAS <= ww_RAM_nCAS;
RAM_nRAS <= ww_RAM_nRAS;
RAM_nCS <= ww_RAM_nCS;
RAM_BA0 <= ww_RAM_BA0;
RAM_BA1 <= ww_RAM_BA1;
RAM_DQM <= ww_RAM_DQM;
RAM_CKE <= ww_RAM_CKE;
RAM_CLK <= ww_RAM_CLK;
RAM_A <= ww_RAM_A;
ww_CLK_25 <= CLK_25;
ww_CLK_32 <= CLK_32;
AD_CLK <= ww_AD_CLK;
ww_AD_data <= AD_data;
ADV_D <= ww_ADV_D;
ADV_HSYNC <= ww_ADV_HSYNC;
ADV_CLK <= ww_ADV_CLK;
ADV_VSYNC <= ww_ADV_VSYNC;
ADV_I2SD <= ww_ADV_I2SD;
ADV_SCLK <= ww_ADV_SCLK;
ADV_LRCLK <= ww_ADV_LRCLK;
ADV_DE <= ww_ADV_DE;
SCL <= ww_SCL;
ww_SW <= SW;
ww_KEY <= KEY;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\AD_data[10]~input_o\ & \AD_data[7]~input_o\ & \AD_data[6]~input_o\ & \AD_data[5]~input_o\ & \AD_data[4]~input_o\ & \AD_data[3]~input_o\ & \AD_data[2]~input_o\ & \AD_data[1]~input_o\ & 
\AD_data[0]~input_o\);

\U4|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (addr_write(9) & addr_write(8) & addr_write(7) & addr_write(6) & addr_write(5) & addr_write(4) & addr_write(3) & addr_write(2) & addr_write(1) & 
\addr_write[0]~_wirecell_combout\);

\U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr_read[9]~33_combout\ & \addr_read[8]~29_combout\ & \addr_read[7]~39_combout\ & \addr_read[6]~38_combout\ & \addr_read[5]~37_combout\ & \addr_read[4]~36_combout\ & \addr_read[3]~35_combout\
& \addr_read[2]~34_combout\ & \addr_read[1]~14_combout\ & \addr_read[0]~13_combout\);

\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\U4|ram_rtl_0|auto_generated|ram_block1a1\ <= \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\U4|ram_rtl_0|auto_generated|ram_block1a2\ <= \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\U4|ram_rtl_0|auto_generated|ram_block1a3\ <= \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\U4|ram_rtl_0|auto_generated|ram_block1a4\ <= \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\U4|ram_rtl_0|auto_generated|ram_block1a5\ <= \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\U4|ram_rtl_0|auto_generated|ram_block1a6\ <= \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\U4|ram_rtl_0|auto_generated|ram_block1a7\ <= \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\U4|ram_rtl_0|auto_generated|ram_block1a10\ <= \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);

\U4|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & \AD_data[11]~input_o\ & \AD_data[9]~input_o\ & \AD_data[8]~input_o\);

\U4|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (addr_write(9) & addr_write(8) & addr_write(7) & addr_write(6) & addr_write(5) & addr_write(4) & addr_write(3) & addr_write(2) & addr_write(1) & 
\addr_write[0]~_wirecell_combout\);

\U4|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\addr_read[9]~33_combout\ & \addr_read[8]~29_combout\ & \addr_read[7]~39_combout\ & \addr_read[6]~38_combout\ & \addr_read[5]~37_combout\ & \addr_read[4]~36_combout\ & \addr_read[3]~35_combout\
& \addr_read[2]~34_combout\ & \addr_read[1]~14_combout\ & \addr_read[0]~13_combout\);

\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);
\U4|ram_rtl_0|auto_generated|ram_block1a9\ <= \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(1);
\U4|ram_rtl_0|auto_generated|ram_block1a11\ <= \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(2);

\CLK_32~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_32~input_o\);

\CLK_25~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_25~input_o\);
\U2|ALT_INV_scl~en_q\ <= NOT \U2|scl~en_q\;
\U1|ALT_INV_LessThan0~1_combout\ <= NOT \U1|LessThan0~1_combout\;
\U2|ALT_INV_sda~en_q\ <= NOT \U2|sda~en_q\;
\U2|ALT_INV_s_FSM_state.scllo~q\ <= NOT \U2|s_FSM_state.scllo~q\;

-- Location: M9K_X27_Y11_N0
\U4|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000000000000000000000000000000000000000000000000000000783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C",
	mem_init3 => X"1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783",
	mem_init2 => X"C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F078",
	mem_init1 => X"3C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F07",
	mem_init0 => X"83C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/open-scope.ram0_sample_RAM_18ad8885.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sample_RAM:U4|altsyncram:ram_rtl_0|altsyncram_hbi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1000,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1000,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \s_ram_write_en~q\,
	portbre => VCC,
	clk0 => \CLK_32~inputclkctrl_outclk\,
	clk1 => \CLK_25~inputclkctrl_outclk\,
	ena0 => \s_ram_write_en~q\,
	portadatain => \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y11_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|romout[1][3]~5_combout\ & ((\Mult0|mult_core|romout[0][7]~6_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult0|mult_core|romout[0][7]~6_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult0|mult_core|romout[1][3]~5_combout\ & ((\Mult0|mult_core|romout[0][7]~6_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[0][7]~6_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|romout[1][3]~5_combout\ & (!\Mult0|mult_core|romout[0][7]~6_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult0|mult_core|romout[1][3]~5_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult0|mult_core|romout[0][7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][3]~5_combout\,
	datab => \Mult0|mult_core|romout[0][7]~6_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: M9K_X27_Y12_N0
\U4|ram_rtl_0|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/open-scope.ram0_sample_RAM_18ad8885.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sample_RAM:U4|altsyncram:ram_rtl_0|altsyncram_hbi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1000,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1000,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \s_ram_write_en~q\,
	portbre => VCC,
	clk0 => \CLK_32~inputclkctrl_outclk\,
	clk1 => \CLK_25~inputclkctrl_outclk\,
	ena0 => \s_ram_write_en~q\,
	portadatain => \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X25_Y11_N20
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\Mult0|mult_core|romout[2][6]~13_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|romout[2][6]~13_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # (!\Mult0|mult_core|romout[2][6]~13_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][6]~13_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X25_Y11_N24
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = ((\Mult0|mult_core|romout[2][8]~11_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ = CARRY((\Mult0|mult_core|romout[2][8]~11_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\))) # (!\Mult0|mult_core|romout[2][8]~11_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][8]~11_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X24_Y11_N0
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \Div0|auto_generated|divider|my_abs_num|cs2a[13]~14_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\Div0|auto_generated|divider|my_abs_num|cs2a[13]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[13]~14_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X24_Y11_N4
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[15]~12_combout\ & ((GND) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[15]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs2a[15]~12_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[15]~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X23_Y11_N4
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[42]~167_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[42]~168_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~167_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[42]~168_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[42]~167_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[42]~168_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[42]~167_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[42]~168_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X23_Y11_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[45]~162_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[45]~163_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[45]~162_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[45]~163_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[45]~162_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[45]~163_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[45]~162_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[45]~163_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X22_Y11_N0
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[48]~179_combout\) # (\Div0|auto_generated|divider|divider|StageOut[48]~180_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[48]~179_combout\) # (\Div0|auto_generated|divider|divider|StageOut[48]~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[48]~179_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[48]~180_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X22_Y11_N4
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[50]~176_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[50]~274_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[50]~176_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[50]~274_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[50]~176_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[50]~274_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~176_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~274_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X22_Y11_N6
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[51]~175_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[51]~175_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[51]~322_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[51]~322_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[51]~175_combout\ & !\Div0|auto_generated|divider|divider|StageOut[51]~322_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~175_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~322_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X23_Y13_N22
\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[60]~183_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[60]~277_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[60]~183_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[60]~277_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[60]~183_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[60]~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[60]~183_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[60]~277_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X23_Y13_N24
\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[61]~182_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[61]~276_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[61]~182_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[61]~276_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[61]~182_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[61]~276_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[61]~182_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[61]~276_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\);

-- Location: LCCOMB_X24_Y13_N2
\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[65]~195_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[65]~196_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[65]~195_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[65]~196_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[65]~195_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[65]~196_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[65]~195_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[65]~196_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X24_Y13_N8
\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[68]~281_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[68]~192_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[68]~281_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[68]~192_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[68]~281_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[68]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[68]~281_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[68]~192_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\);

-- Location: LCCOMB_X26_Y13_N8
\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[81]~213_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[81]~214_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[81]~213_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[81]~214_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[81]~213_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[81]~214_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[81]~213_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[81]~214_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X26_Y13_N12
\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[83]~291_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[83]~291_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[83]~211_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[83]~211_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[83]~291_combout\ & !\Div0|auto_generated|divider|divider|StageOut[83]~211_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[83]~291_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[83]~211_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X26_Y14_N18
\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[91]~220_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[91]~220_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[91]~296_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[91]~296_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[91]~220_combout\ & !\Div0|auto_generated|divider|divider|StageOut[91]~296_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[91]~220_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[91]~296_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\);

-- Location: LCCOMB_X26_Y14_N22
\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[93]~294_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[93]~218_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[93]~294_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[93]~218_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[93]~294_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[93]~218_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[93]~294_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[93]~218_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\);

-- Location: LCCOMB_X25_Y10_N10
\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[97]~231_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[97]~232_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[97]~231_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[97]~232_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[97]~231_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[97]~232_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[97]~231_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[97]~232_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X25_Y10_N14
\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[99]~300_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[99]~300_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[99]~229_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[99]~229_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[99]~300_combout\ & !\Div0|auto_generated|divider|divider|StageOut[99]~229_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[99]~300_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[99]~229_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\);

-- Location: LCCOMB_X25_Y10_N16
\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[100]~228_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[100]~299_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[100]~228_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[100]~299_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[100]~228_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[100]~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[100]~228_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[100]~299_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\);

-- Location: LCCOMB_X24_Y10_N6
\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[105]~240_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[105]~241_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[105]~240_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[105]~241_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[105]~240_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[105]~241_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[105]~240_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[105]~241_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X24_Y10_N10
\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[107]~305_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[107]~305_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[107]~238_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[107]~238_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[107]~305_combout\ & !\Div0|auto_generated|divider|divider|StageOut[107]~238_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[107]~305_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[107]~238_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\);

-- Location: LCCOMB_X24_Y10_N12
\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[108]~237_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[108]~304_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[108]~237_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[108]~304_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[108]~237_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[108]~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[108]~237_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[108]~304_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\);

-- Location: LCCOMB_X23_Y10_N2
\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[112]~252_combout\) # (\Div0|auto_generated|divider|divider|StageOut[112]~251_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[112]~252_combout\) # (\Div0|auto_generated|divider|divider|StageOut[112]~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[112]~252_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[112]~251_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\);

-- Location: LCCOMB_X23_Y10_N4
\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[113]~249_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[113]~250_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[113]~249_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[113]~250_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[113]~249_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[113]~250_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[113]~249_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[113]~250_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\);

-- Location: LCCOMB_X23_Y10_N6
\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[114]~310_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[114]~248_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~310_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[114]~248_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[114]~310_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[114]~248_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[114]~310_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[114]~248_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\);

-- Location: LCCOMB_X23_Y10_N8
\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[115]~309_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[115]~309_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[115]~247_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[115]~247_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[115]~309_combout\ & !\Div0|auto_generated|divider|divider|StageOut[115]~247_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[115]~309_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[115]~247_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\);

-- Location: LCCOMB_X19_Y10_N4
\Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[121]~259_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[121]~258_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[121]~259_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[121]~258_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[121]~259_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[121]~258_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[121]~259_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[121]~258_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\);

-- Location: LCCOMB_X19_Y10_N10
\Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[124]~255_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[124]~313_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[124]~255_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[124]~313_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[124]~255_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[124]~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[124]~255_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[124]~313_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\);

-- Location: LCCOMB_X22_Y10_N0
\Div0|auto_generated|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~0_combout\ = \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\ $ (VCC)
-- \Div0|auto_generated|divider|op_1~1\ = CARRY(\Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X22_Y10_N2
\Div0|auto_generated|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & (!\Div0|auto_generated|divider|op_1~1\)) # (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~1\) # (GND)))
-- \Div0|auto_generated|divider|op_1~3\ = CARRY((!\Div0|auto_generated|divider|op_1~1\) # (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X22_Y10_N6
\Div0|auto_generated|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & (!\Div0|auto_generated|divider|op_1~5\)) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~5\) # (GND)))
-- \Div0|auto_generated|divider|op_1~7\ = CARRY((!\Div0|auto_generated|divider|op_1~5\) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~5\,
	combout => \Div0|auto_generated|divider|op_1~6_combout\,
	cout => \Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X22_Y10_N8
\Div0|auto_generated|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|op_1~7\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~7\ & VCC))
-- \Div0|auto_generated|divider|op_1~9\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & !\Div0|auto_generated|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~7\,
	combout => \Div0|auto_generated|divider|op_1~8_combout\,
	cout => \Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X22_Y10_N12
\Div0|auto_generated|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~12_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|op_1~11\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~11\ & VCC))
-- \Div0|auto_generated|divider|op_1~13\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & !\Div0|auto_generated|divider|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~11\,
	combout => \Div0|auto_generated|divider|op_1~12_combout\,
	cout => \Div0|auto_generated|divider|op_1~13\);

-- Location: LCCOMB_X22_Y10_N14
\Div0|auto_generated|divider|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~14_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & (!\Div0|auto_generated|divider|op_1~13\)) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~13\) # (GND)))
-- \Div0|auto_generated|divider|op_1~15\ = CARRY((!\Div0|auto_generated|divider|op_1~13\) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~13\,
	combout => \Div0|auto_generated|divider|op_1~14_combout\,
	cout => \Div0|auto_generated|divider|op_1~15\);

-- Location: LCCOMB_X22_Y10_N16
\Div0|auto_generated|divider|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|op_1~15\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~15\ & VCC))
-- \Div0|auto_generated|divider|op_1~17\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & !\Div0|auto_generated|divider|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~15\,
	combout => \Div0|auto_generated|divider|op_1~16_combout\,
	cout => \Div0|auto_generated|divider|op_1~17\);

-- Location: LCCOMB_X22_Y10_N18
\Div0|auto_generated|divider|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~18_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & (!\Div0|auto_generated|divider|op_1~17\)) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~17\) # (GND)))
-- \Div0|auto_generated|divider|op_1~19\ = CARRY((!\Div0|auto_generated|divider|op_1~17\) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~17\,
	combout => \Div0|auto_generated|divider|op_1~18_combout\,
	cout => \Div0|auto_generated|divider|op_1~19\);

-- Location: LCCOMB_X22_Y10_N24
\Div0|auto_generated|divider|op_1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~24_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div0|auto_generated|divider|op_1~23\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~23\ & VCC))
-- \Div0|auto_generated|divider|op_1~25\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~23\,
	combout => \Div0|auto_generated|divider|op_1~24_combout\,
	cout => \Div0|auto_generated|divider|op_1~25\);

-- Location: LCCOMB_X22_Y10_N26
\Div0|auto_generated|divider|op_1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~26_combout\ = !\Div0|auto_generated|divider|op_1~25\
-- \Div0|auto_generated|divider|op_1~27\ = CARRY(!\Div0|auto_generated|divider|op_1~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~25\,
	combout => \Div0|auto_generated|divider|op_1~26_combout\,
	cout => \Div0|auto_generated|divider|op_1~27\);

-- Location: LCCOMB_X17_Y11_N6
\Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = \U1|vcs\(0) $ (VCC)
-- \Add9~1\ = CARRY(\U1|vcs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(0),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X17_Y11_N10
\Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\U1|vcs\(2) & ((GND) # (!\Add9~3\))) # (!\U1|vcs\(2) & (\Add9~3\ $ (GND)))
-- \Add9~5\ = CARRY((\U1|vcs\(2)) # (!\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X17_Y11_N12
\Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\U1|vcs\(3) & (\Add9~5\ & VCC)) # (!\U1|vcs\(3) & (!\Add9~5\))
-- \Add9~7\ = CARRY((!\U1|vcs\(3) & !\Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(3),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X17_Y11_N14
\Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\U1|vcs\(4) & ((GND) # (!\Add9~7\))) # (!\U1|vcs\(4) & (\Add9~7\ $ (GND)))
-- \Add9~9\ = CARRY((\U1|vcs\(4)) # (!\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X17_Y11_N20
\Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (\U1|vcs\(7) & (\Add9~13\ & VCC)) # (!\U1|vcs\(7) & (!\Add9~13\))
-- \Add9~15\ = CARRY((!\U1|vcs\(7) & !\Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(7),
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X17_Y11_N22
\Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (\U1|vcs\(8) & ((GND) # (!\Add9~15\))) # (!\U1|vcs\(8) & (\Add9~15\ $ (GND)))
-- \Add9~17\ = CARRY((\U1|vcs\(8)) # (!\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(8),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X18_Y13_N4
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \U1|vcs\(0) $ (VCC)
-- \Add7~1\ = CARRY(\U1|vcs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X18_Y13_N6
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\U1|vcs\(1) & (\Add7~1\ & VCC)) # (!\U1|vcs\(1) & (!\Add7~1\))
-- \Add7~3\ = CARRY((!\U1|vcs\(1) & !\Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X18_Y13_N10
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\U1|vcs\(3) & (!\Add7~5\)) # (!\U1|vcs\(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!\U1|vcs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X18_Y13_N14
\Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\U1|vcs\(5) & (\Add7~9\ & VCC)) # (!\U1|vcs\(5) & (!\Add7~9\))
-- \Add7~11\ = CARRY((!\U1|vcs\(5) & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X18_Y13_N18
\Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (\U1|vcs\(7) & (\Add7~13\ & VCC)) # (!\U1|vcs\(7) & (!\Add7~13\))
-- \Add7~15\ = CARRY((!\U1|vcs\(7) & !\Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X18_Y13_N20
\Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (\U1|vcs\(8) & ((GND) # (!\Add7~15\))) # (!\U1|vcs\(8) & (\Add7~15\ $ (GND)))
-- \Add7~17\ = CARRY((\U1|vcs\(8)) # (!\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X18_Y13_N22
\Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = \U1|vcs\(9) $ (!\Add7~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(9),
	cin => \Add7~17\,
	combout => \Add7~18_combout\);

-- Location: LCCOMB_X18_Y16_N8
\Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = \U1|vcs\(0) $ (VCC)
-- \Add10~1\ = CARRY(\U1|vcs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(0),
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X18_Y16_N14
\Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\U1|vcs\(3) & (!\Add10~5\)) # (!\U1|vcs\(3) & ((\Add10~5\) # (GND)))
-- \Add10~7\ = CARRY((!\Add10~5\) # (!\U1|vcs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(3),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X18_Y12_N2
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\U1|vcs\(2) & (\U1|vcs\(1) $ (VCC))) # (!\U1|vcs\(2) & (\U1|vcs\(1) & VCC))
-- \Add5~1\ = CARRY((\U1|vcs\(2) & \U1|vcs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(2),
	datab => \U1|vcs\(1),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X18_Y12_N4
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\U1|vcs\(3) & (!\Add5~1\)) # (!\U1|vcs\(3) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!\U1|vcs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(3),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X18_Y12_N6
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\U1|vcs\(4) & (\Add5~3\ $ (GND))) # (!\U1|vcs\(4) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((\U1|vcs\(4) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(4),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X18_Y12_N8
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\U1|vcs\(5) & (\Add5~5\ & VCC)) # (!\U1|vcs\(5) & (!\Add5~5\))
-- \Add5~7\ = CARRY((!\U1|vcs\(5) & !\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(5),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X18_Y12_N10
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\U1|vcs\(6) & ((GND) # (!\Add5~7\))) # (!\U1|vcs\(6) & (\Add5~7\ $ (GND)))
-- \Add5~9\ = CARRY((\U1|vcs\(6)) # (!\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(6),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X18_Y12_N14
\Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\U1|vcs\(8) & ((GND) # (!\Add5~11\))) # (!\U1|vcs\(8) & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((\U1|vcs\(8)) # (!\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(8),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X18_Y15_N14
\Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\U1|vcs\(6) & (\Add6~1_cout\ & VCC)) # (!\U1|vcs\(6) & (!\Add6~1_cout\))
-- \Add6~3\ = CARRY((!\U1|vcs\(6) & !\Add6~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(6),
	datad => VCC,
	cin => \Add6~1_cout\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X18_Y15_N16
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\U1|vcs\(7) & ((GND) # (!\Add6~3\))) # (!\U1|vcs\(7) & (\Add6~3\ $ (GND)))
-- \Add6~5\ = CARRY((\U1|vcs\(7)) # (!\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(7),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X18_Y15_N18
\Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\U1|vcs\(8) & (\Add6~5\ & VCC)) # (!\U1|vcs\(8) & (!\Add6~5\))
-- \Add6~7\ = CARRY((!\U1|vcs\(8) & !\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(8),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X18_Y15_N20
\Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = \U1|vcs\(9) $ (\Add6~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(9),
	cin => \Add6~7\,
	combout => \Add6~8_combout\);

-- Location: LCCOMB_X14_Y12_N14
\Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = \U1|hcs\(4) $ (VCC)
-- \Add13~1\ = CARRY(\U1|hcs\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(4),
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X14_Y12_N16
\Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (\U1|hcs\(5) & (\Add13~1\ & VCC)) # (!\U1|hcs\(5) & (!\Add13~1\))
-- \Add13~3\ = CARRY((!\U1|hcs\(5) & !\Add13~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(5),
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X12_Y13_N6
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\ = (\Add13~4_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\)) # (!\Add13~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\) # 
-- (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\) # (!\Add13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~4_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\);

-- Location: LCCOMB_X12_Y13_N8
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\ = (\Add13~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ $ (GND))) # (!\Add13~6_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\ = CARRY((\Add13~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\);

-- Location: LCCOMB_X12_Y13_N12
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\ = (\Add13~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ $ (GND))) # (!\Add13~10_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\ = CARRY((\Add13~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~10_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\);

-- Location: LCCOMB_X12_Y12_N16
\Mod0|auto_generated|divider|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~2_combout\ = (\Mod0|auto_generated|divider|divider|op_1~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[111]~69_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[111]~68_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_1~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[111]~69_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[111]~68_combout\)))
-- \Mod0|auto_generated|divider|divider|op_1~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[111]~69_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[111]~68_combout\ & !\Mod0|auto_generated|divider|divider|op_1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[111]~69_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[111]~68_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~1\,
	combout => \Mod0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X12_Y12_N18
\Mod0|auto_generated|divider|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~4_combout\ = (\Mod0|auto_generated|divider|divider|op_1~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[112]~67_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[112]~66_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_1~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[112]~67_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[112]~66_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_1~5\ = CARRY((!\Mod0|auto_generated|divider|divider|op_1~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[112]~67_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[112]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[112]~67_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[112]~66_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~3\,
	combout => \Mod0|auto_generated|divider|divider|op_1~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X11_Y11_N2
\Mod0|auto_generated|divider|divider|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~2_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[122]~85_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[122]~88_combout\)))
-- \Mod0|auto_generated|divider|divider|op_2~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[122]~85_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[122]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[122]~85_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[122]~88_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X11_Y11_N4
\Mod0|auto_generated|divider|divider|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~4_combout\ = (\Mod0|auto_generated|divider|divider|op_2~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[123]~83_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[123]~84_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~3\ & (!\Mod0|auto_generated|divider|divider|StageOut[123]~83_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[123]~84_combout\)))
-- \Mod0|auto_generated|divider|divider|op_2~5\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[123]~83_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[123]~84_combout\ & !\Mod0|auto_generated|divider|divider|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[123]~83_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[123]~84_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~3\,
	combout => \Mod0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X11_Y11_N6
\Mod0|auto_generated|divider|divider|op_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~6_combout\ = (\Mod0|auto_generated|divider|divider|op_2~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[124]~82_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[124]~95_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~5\ & ((((\Mod0|auto_generated|divider|divider|StageOut[124]~82_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[124]~95_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_2~7\ = CARRY((!\Mod0|auto_generated|divider|divider|op_2~5\ & ((\Mod0|auto_generated|divider|divider|StageOut[124]~82_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[124]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[124]~82_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[124]~95_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~5\,
	combout => \Mod0|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X11_Y11_N8
\Mod0|auto_generated|divider|divider|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[125]~81_combout\ & (((!\Mod0|auto_generated|divider|divider|op_2~7\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[125]~81_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[125]~94_combout\ & (!\Mod0|auto_generated|divider|divider|op_2~7\)) # (!\Mod0|auto_generated|divider|divider|StageOut[125]~94_combout\ & ((\Mod0|auto_generated|divider|divider|op_2~7\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|op_2~9\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[125]~81_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[125]~94_combout\)) # (!\Mod0|auto_generated|divider|divider|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[125]~81_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[125]~94_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~7\,
	combout => \Mod0|auto_generated|divider|divider|op_2~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~9\);

-- Location: LCCOMB_X11_Y11_N10
\Mod0|auto_generated|divider|divider|op_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~10_combout\ = (\Mod0|auto_generated|divider|divider|op_2~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[126]~93_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[126]~80_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~9\ & ((((\Mod0|auto_generated|divider|divider|StageOut[126]~93_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[126]~80_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_2~11\ = CARRY((!\Mod0|auto_generated|divider|divider|op_2~9\ & ((\Mod0|auto_generated|divider|divider|StageOut[126]~93_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[126]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[126]~93_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[126]~80_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~9\,
	combout => \Mod0|auto_generated|divider|divider|op_2~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~11\);

-- Location: FF_X13_Y14_N13
\U2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[4]~17_combout\,
	sclr => \U2|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(4));

-- Location: LCCOMB_X17_Y15_N6
\Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (\counter25:prescaler[16]~q\ & (!\Add4~29\)) # (!\counter25:prescaler[16]~q\ & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!\counter25:prescaler[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[16]~q\,
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X17_Y15_N10
\Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (\counter25:prescaler[18]~q\ & (!\Add4~33\)) # (!\counter25:prescaler[18]~q\ & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!\counter25:prescaler[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter25:prescaler[18]~q\,
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X17_Y15_N12
\Add4~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (\counter25:prescaler[19]~q\ & (\Add4~35\ $ (GND))) # (!\counter25:prescaler[19]~q\ & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((\counter25:prescaler[19]~q\ & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[19]~q\,
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: LCCOMB_X17_Y15_N14
\Add4~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (\counter25:prescaler[20]~q\ & (!\Add4~37\)) # (!\counter25:prescaler[20]~q\ & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!\counter25:prescaler[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter25:prescaler[20]~q\,
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X17_Y15_N18
\Add4~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (\counter25:prescaler[22]~q\ & (!\Add4~41\)) # (!\counter25:prescaler[22]~q\ & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!\counter25:prescaler[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter25:prescaler[22]~q\,
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X17_Y13_N12
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\counter32:prescaler[2]~q\ & (\Add2~3\ $ (GND))) # (!\counter32:prescaler[2]~q\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\counter32:prescaler[2]~q\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[2]~q\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X17_Y13_N30
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\counter32:prescaler[11]~q\ & (!\Add2~21\)) # (!\counter32:prescaler[11]~q\ & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!\counter32:prescaler[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[11]~q\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X17_Y12_N2
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\counter32:prescaler[13]~q\ & (!\Add2~25\)) # (!\counter32:prescaler[13]~q\ & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!\counter32:prescaler[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[13]~q\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X17_Y12_N6
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\counter32:prescaler[15]~q\ & (!\Add2~29\)) # (!\counter32:prescaler[15]~q\ & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!\counter32:prescaler[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[15]~q\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X19_Y17_N12
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (addr_write(1) & (!\Add0~1\)) # (!addr_write(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!addr_write(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_write(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X19_Y17_N14
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (addr_write(2) & (\Add0~3\ $ (GND))) # (!addr_write(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((addr_write(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X19_Y17_N18
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (addr_write(4) & (\Add0~7\ $ (GND))) # (!addr_write(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((addr_write(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X19_Y17_N22
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (addr_write(6) & (\Add0~11\ $ (GND))) # (!addr_write(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((addr_write(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_write(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X19_Y17_N26
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (addr_write(8) & (\Add0~15\ $ (GND))) # (!addr_write(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((addr_write(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_write(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X13_Y14_N12
\U2|count[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[4]~17_combout\ = (\U2|count\(4) & (\U2|count[3]~16\ $ (GND))) # (!\U2|count\(4) & (!\U2|count[3]~16\ & VCC))
-- \U2|count[4]~18\ = CARRY((\U2|count\(4) & !\U2|count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(4),
	datad => VCC,
	cin => \U2|count[3]~16\,
	combout => \U2|count[4]~17_combout\,
	cout => \U2|count[4]~18\);

-- Location: FF_X16_Y15_N17
\U2|FSM:bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|FSM:bit_count[2]~0_combout\,
	asdata => \U2|Selector19~0_combout\,
	sload => \U2|ALT_INV_s_FSM_state.scllo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|FSM:bit_count[2]~q\);

-- Location: LCCOMB_X16_Y15_N16
\U2|FSM:bit_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|FSM:bit_count[2]~0_combout\ = (\U2|Equal1~0_combout\ & ((\U2|Add0~2_combout\))) # (!\U2|Equal1~0_combout\ & (\U2|FSM:bit_count[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datac => \U2|FSM:bit_count[2]~q\,
	datad => \U2|Add0~2_combout\,
	combout => \U2|FSM:bit_count[2]~0_combout\);

-- Location: LCCOMB_X14_Y12_N4
\U1|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan3~0_combout\ = (!\U1|hcs\(4) & (!\U1|hcs\(5) & !\U1|hcs\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(4),
	datab => \U1|hcs\(5),
	datac => \U1|hcs\(6),
	combout => \U1|LessThan3~0_combout\);

-- Location: LCCOMB_X26_Y11_N30
\Mult0|mult_core|romout[1][8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][8]~0_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a4\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a7\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a5\) # (\U4|ram_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a7\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \Mult0|mult_core|romout[1][8]~0_combout\);

-- Location: LCCOMB_X26_Y11_N22
\Mult0|mult_core|romout[1][7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][7]~2_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a7\ & (((!\U4|ram_rtl_0|auto_generated|ram_block1a5\ & !\U4|ram_rtl_0|auto_generated|ram_block1a6\)))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a7\ & 
-- ((\U4|ram_rtl_0|auto_generated|ram_block1a4\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a5\) # (\U4|ram_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a7\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \Mult0|mult_core|romout[1][7]~2_combout\);

-- Location: LCCOMB_X28_Y11_N20
\Mult0|mult_core|romout[1][6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][6]~3_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a5\ & (((\U4|ram_rtl_0|auto_generated|ram_block1a7\ & !\U4|ram_rtl_0|auto_generated|ram_block1a4\)) # (!\U4|ram_rtl_0|auto_generated|ram_block1a6\))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a5\ & (\U4|ram_rtl_0|auto_generated|ram_block1a6\ $ (((!\U4|ram_rtl_0|auto_generated|ram_block1a7\ & \U4|ram_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mult0|mult_core|romout[1][6]~3_combout\);

-- Location: LCCOMB_X26_Y11_N20
\Mult0|mult_core|romout[1][5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][5]~combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a4\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a7\ & (\U4|ram_rtl_0|auto_generated|ram_block1a5\)) # (!\U4|ram_rtl_0|auto_generated|ram_block1a7\ & 
-- ((\U4|ram_rtl_0|auto_generated|ram_block1a6\) # (!\U4|ram_rtl_0|auto_generated|ram_block1a5\))))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a4\ & (\U4|ram_rtl_0|auto_generated|ram_block1a5\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a7\ & 
-- \U4|ram_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a7\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \Mult0|mult_core|romout[1][5]~combout\);

-- Location: LCCOMB_X28_Y11_N18
\Mult0|mult_core|romout[1][4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][4]~4_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a7\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a4\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a5\) # (\U4|ram_rtl_0|auto_generated|ram_block1a6\))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a4\ & ((!\U4|ram_rtl_0|auto_generated|ram_block1a6\))))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a7\ & (\U4|ram_rtl_0|auto_generated|ram_block1a4\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a5\ & 
-- \U4|ram_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \Mult0|mult_core|romout[1][4]~4_combout\);

-- Location: LCCOMB_X28_Y11_N16
\Mult0|mult_core|romout[1][3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][3]~5_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a7\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a5\ & (\U4|ram_rtl_0|auto_generated|ram_block1a4\ & !\U4|ram_rtl_0|auto_generated|ram_block1a6\)) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a5\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \Mult0|mult_core|romout[1][3]~5_combout\);

-- Location: LCCOMB_X28_Y11_N6
\Mult0|mult_core|romout[0][6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~8_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a1\ & (((\U4|ram_rtl_0|auto_generated|ram_block1a3\ & !\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\U4|ram_rtl_0|auto_generated|ram_block1a2\))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a1\ & (\U4|ram_rtl_0|auto_generated|ram_block1a2\ $ (((!\U4|ram_rtl_0|auto_generated|ram_block1a3\ & \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a3\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Mult0|mult_core|romout[0][6]~8_combout\);

-- Location: LCCOMB_X28_Y11_N10
\Mult0|mult_core|romout[0][5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a1\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a2\) # (\U4|ram_rtl_0|auto_generated|ram_block1a3\))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a1\ & ((!\U4|ram_rtl_0|auto_generated|ram_block1a3\))))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a1\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a2\ & 
-- \U4|ram_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \Mult0|mult_core|romout[0][5]~combout\);

-- Location: LCCOMB_X26_Y12_N28
\Mult0|mult_core|romout[2][7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][7]~12_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a10\ & (((!\U4|ram_rtl_0|auto_generated|ram_block1a11\)))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a10\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a11\ & 
-- ((!\U4|ram_rtl_0|auto_generated|ram_block1a9\))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a11\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\) # (\U4|ram_rtl_0|auto_generated|ram_block1a9\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \Mult0|mult_core|romout[2][7]~12_combout\);

-- Location: LCCOMB_X26_Y12_N22
\Mult0|mult_core|romout[2][6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][6]~13_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a9\ & (((!\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & \U4|ram_rtl_0|auto_generated|ram_block1a11\)) # (!\U4|ram_rtl_0|auto_generated|ram_block1a10\))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a9\ & (\U4|ram_rtl_0|auto_generated|ram_block1a10\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & !\U4|ram_rtl_0|auto_generated|ram_block1a11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \Mult0|mult_core|romout[2][6]~13_combout\);

-- Location: LCCOMB_X26_Y12_N24
\Mult0|mult_core|romout[2][5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][5]~combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a11\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a9\))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a11\ & 
-- ((\U4|ram_rtl_0|auto_generated|ram_block1a10\) # (!\U4|ram_rtl_0|auto_generated|ram_block1a9\))))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a9\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a10\ & 
-- \U4|ram_rtl_0|auto_generated|ram_block1a11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \Mult0|mult_core|romout[2][5]~combout\);

-- Location: LCCOMB_X26_Y12_N18
\Mult0|mult_core|romout[2][4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][4]~14_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a10\ & (\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ $ (((!\U4|ram_rtl_0|auto_generated|ram_block1a11\ & \U4|ram_rtl_0|auto_generated|ram_block1a9\))))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a10\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a9\) # (!\U4|ram_rtl_0|auto_generated|ram_block1a11\))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \Mult0|mult_core|romout[2][4]~14_combout\);

-- Location: LCCOMB_X26_Y12_N8
\Mult0|mult_core|romout[2][3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][3]~15_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a11\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a10\ & ((!\U4|ram_rtl_0|auto_generated|ram_block1a9\))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a10\ & 
-- (\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & \U4|ram_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \Mult0|mult_core|romout[2][3]~15_combout\);

-- Location: LCCOMB_X26_Y12_N10
\Mult0|mult_core|romout[2][2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][2]~16_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a10\ $ (((!\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & \U4|ram_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \Mult0|mult_core|romout[2][2]~16_combout\);

-- Location: LCCOMB_X26_Y12_N4
\Mult0|mult_core|romout[2][1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][1]~17_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ $ (\U4|ram_rtl_0|auto_generated|ram_block1a9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \Mult0|mult_core|romout[2][1]~17_combout\);

-- Location: LCCOMB_X25_Y11_N6
\Div0|auto_generated|divider|my_abs_num|cs2a[14]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\);

-- Location: LCCOMB_X25_Y11_N4
\Div0|auto_generated|divider|my_abs_num|cs2a[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\);

-- Location: LCCOMB_X25_Y11_N30
\Div0|auto_generated|divider|my_abs_num|cs2a[16]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\);

-- Location: LCCOMB_X24_Y11_N12
\Div0|auto_generated|divider|my_abs_num|cs2a[15]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[15]~12_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[15]~12_combout\);

-- Location: LCCOMB_X23_Y11_N22
\Div0|auto_generated|divider|divider|StageOut[45]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~162_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~162_combout\);

-- Location: LCCOMB_X23_Y11_N26
\Div0|auto_generated|divider|divider|StageOut[44]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~164_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~164_combout\);

-- Location: LCCOMB_X24_Y11_N20
\Div0|auto_generated|divider|divider|StageOut[43]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~166_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~166_combout\);

-- Location: LCCOMB_X24_Y11_N30
\Div0|auto_generated|divider|divider|StageOut[42]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~167_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~167_combout\);

-- Location: LCCOMB_X23_Y12_N28
\Div0|auto_generated|divider|divider|StageOut[41]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~169_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~169_combout\);

-- Location: LCCOMB_X22_Y13_N26
\Div0|auto_generated|divider|divider|StageOut[40]~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~170_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~170_combout\);

-- Location: LCCOMB_X22_Y11_N28
\Div0|auto_generated|divider|divider|StageOut[54]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~172_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~172_combout\);

-- Location: LCCOMB_X23_Y11_N20
\Div0|auto_generated|divider|divider|StageOut[51]~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~175_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~175_combout\);

-- Location: LCCOMB_X23_Y11_N30
\Div0|auto_generated|divider|divider|StageOut[50]~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~176_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~176_combout\);

-- Location: LCCOMB_X22_Y13_N18
\Div0|auto_generated|divider|divider|StageOut[49]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~177_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~177_combout\);

-- Location: LCCOMB_X22_Y11_N30
\Div0|auto_generated|divider|divider|StageOut[48]~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~179_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~179_combout\);

-- Location: LCCOMB_X23_Y13_N30
\Div0|auto_generated|divider|divider|StageOut[61]~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~182_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~182_combout\);

-- Location: LCCOMB_X23_Y13_N12
\Div0|auto_generated|divider|divider|StageOut[60]~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~183_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~183_combout\);

-- Location: LCCOMB_X22_Y13_N16
\Div0|auto_generated|divider|divider|StageOut[59]~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~184_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~184_combout\);

-- Location: LCCOMB_X22_Y13_N12
\Div0|auto_generated|divider|divider|StageOut[57]~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~187_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~187_combout\);

-- Location: LCCOMB_X23_Y12_N10
\Div0|auto_generated|divider|divider|StageOut[56]~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~189_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~189_combout\);

-- Location: LCCOMB_X24_Y13_N28
\Div0|auto_generated|divider|divider|StageOut[70]~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~190_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~190_combout\);

-- Location: LCCOMB_X24_Y13_N22
\Div0|auto_generated|divider|divider|StageOut[69]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[69]~191_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[69]~191_combout\);

-- Location: LCCOMB_X23_Y12_N14
\Div0|auto_generated|divider|divider|StageOut[65]~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~195_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~195_combout\);

-- Location: LCCOMB_X24_Y12_N22
\Div0|auto_generated|divider|divider|StageOut[64]~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~198_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~198_combout\);

-- Location: LCCOMB_X24_Y13_N26
\Div0|auto_generated|divider|divider|StageOut[77]~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[77]~200_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[77]~200_combout\);

-- Location: LCCOMB_X24_Y12_N4
\Div0|auto_generated|divider|divider|StageOut[74]~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~203_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~203_combout\);

-- Location: LCCOMB_X25_Y14_N26
\Div0|auto_generated|divider|divider|StageOut[73]~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~205_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~205_combout\);

-- Location: LCCOMB_X25_Y14_N30
\Div0|auto_generated|divider|divider|StageOut[72]~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~206_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~206_combout\);

-- Location: LCCOMB_X25_Y14_N12
\Div0|auto_generated|divider|divider|StageOut[81]~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~213_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~213_combout\);

-- Location: LCCOMB_X28_Y13_N10
\Div0|auto_generated|divider|divider|StageOut[80]~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[80]~215_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[80]~215_combout\);

-- Location: LCCOMB_X26_Y13_N24
\Div0|auto_generated|divider|divider|StageOut[92]~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~219_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~219_combout\);

-- Location: LCCOMB_X26_Y13_N30
\Div0|auto_generated|divider|divider|StageOut[91]~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[91]~220_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[91]~220_combout\);

-- Location: LCCOMB_X25_Y14_N0
\Div0|auto_generated|divider|divider|StageOut[90]~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[90]~221_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[90]~221_combout\);

-- Location: LCCOMB_X26_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[88]~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~224_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~224_combout\);

-- Location: LCCOMB_X26_Y14_N30
\Div0|auto_generated|divider|divider|StageOut[102]~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~226_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~226_combout\);

-- Location: LCCOMB_X26_Y14_N2
\Div0|auto_generated|divider|divider|StageOut[100]~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~228_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~228_combout\);

-- Location: LCCOMB_X26_Y14_N6
\Div0|auto_generated|divider|divider|StageOut[98]~230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[98]~230_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[98]~230_combout\);

-- Location: LCCOMB_X26_Y10_N20
\Div0|auto_generated|divider|divider|StageOut[97]~231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[97]~231_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[97]~231_combout\);

-- Location: LCCOMB_X26_Y10_N4
\Div0|auto_generated|divider|divider|StageOut[96]~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~234_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~234_combout\);

-- Location: LCCOMB_X25_Y10_N4
\Div0|auto_generated|divider|divider|StageOut[109]~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[109]~236_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[109]~236_combout\);

-- Location: LCCOMB_X25_Y10_N6
\Div0|auto_generated|divider|divider|StageOut[108]~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~237_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~237_combout\);

-- Location: LCCOMB_X25_Y10_N30
\Div0|auto_generated|divider|divider|StageOut[106]~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~239_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~239_combout\);

-- Location: LCCOMB_X26_Y10_N22
\Div0|auto_generated|divider|divider|StageOut[105]~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~240_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~240_combout\);

-- Location: LCCOMB_X26_Y10_N16
\Div0|auto_generated|divider|divider|StageOut[104]~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~243_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~243_combout\);

-- Location: LCCOMB_X23_Y10_N30
\Div0|auto_generated|divider|divider|StageOut[116]~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~246_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~246_combout\);

-- Location: LCCOMB_X26_Y10_N30
\Div0|auto_generated|divider|divider|StageOut[113]~249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~249_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~249_combout\);

-- Location: LCCOMB_X24_Y12_N30
\Div0|auto_generated|divider|divider|StageOut[112]~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~252_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & (\Mult0|mult_core|romout[0][3]~18_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][3]~18_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~252_combout\);

-- Location: LCCOMB_X23_Y10_N0
\Div0|auto_generated|divider|divider|StageOut[124]~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~255_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~255_combout\);

-- Location: LCCOMB_X23_Y10_N28
\Div0|auto_generated|divider|divider|StageOut[122]~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~257_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~257_combout\);

-- Location: LCCOMB_X23_Y10_N22
\Div0|auto_generated|divider|divider|StageOut[121]~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~259_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~259_combout\);

-- Location: LCCOMB_X26_Y10_N24
\Div0|auto_generated|divider|divider|StageOut[120]~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~260_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\ & \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~260_combout\);

-- Location: LCCOMB_X21_Y10_N6
\Div0|auto_generated|divider|divider|StageOut[133]~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[133]~263_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[133]~263_combout\);

-- Location: LCCOMB_X19_Y10_N30
\Div0|auto_generated|divider|divider|StageOut[130]~266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~266_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~266_combout\);

-- Location: LCCOMB_X18_Y10_N8
\Div0|auto_generated|divider|divider|StageOut[129]~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~267_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\ & \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~267_combout\);

-- Location: LCCOMB_X21_Y11_N0
\Div0|auto_generated|divider|divider|StageOut[128]~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~270_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a1\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~270_combout\);

-- Location: LCCOMB_X22_Y13_N20
\Div0|auto_generated|divider|quotient[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[9]~1_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~18_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|quotient[9]~1_combout\);

-- Location: LCCOMB_X22_Y10_N30
\Div0|auto_generated|divider|quotient[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[8]~2_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~16_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|op_1~16_combout\,
	combout => \Div0|auto_generated|divider|quotient[8]~2_combout\);

-- Location: LCCOMB_X22_Y12_N2
\Div0|auto_generated|divider|quotient[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[7]~3_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~14_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|op_1~14_combout\,
	combout => \Div0|auto_generated|divider|quotient[7]~3_combout\);

-- Location: LCCOMB_X23_Y14_N20
\Div0|auto_generated|divider|quotient[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[6]~4_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~12_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|op_1~12_combout\,
	combout => \Div0|auto_generated|divider|quotient[6]~4_combout\);

-- Location: LCCOMB_X23_Y14_N10
\Div0|auto_generated|divider|quotient[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[4]~6_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~8_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|quotient[4]~6_combout\);

-- Location: LCCOMB_X21_Y11_N18
\Div0|auto_generated|divider|quotient[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[3]~7_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~6_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|op_1~6_combout\,
	combout => \Div0|auto_generated|divider|quotient[3]~7_combout\);

-- Location: LCCOMB_X21_Y14_N10
\Div0|auto_generated|divider|quotient[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[1]~9_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (\Div0|auto_generated|divider|op_1~2_combout\)) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|op_1~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|quotient[1]~9_combout\);

-- Location: LCCOMB_X21_Y14_N12
\Div0|auto_generated|divider|quotient[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[0]~10_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (\Div0|auto_generated|divider|op_1~0_combout\)) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|op_1~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|quotient[0]~10_combout\);

-- Location: LCCOMB_X21_Y13_N22
\Div0|auto_generated|divider|quotient[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[12]~12_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~24_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|op_1~24_combout\,
	combout => \Div0|auto_generated|divider|quotient[12]~12_combout\);

-- Location: LCCOMB_X22_Y13_N30
\Div0|auto_generated|divider|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|_~0_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & \Div0|auto_generated|divider|op_1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|op_1~26_combout\,
	combout => \Div0|auto_generated|divider|_~0_combout\);

-- Location: LCCOMB_X21_Y14_N8
\ramreader~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~7_combout\ = (\Add7~2_combout\ & (\Add8~2_combout\ & (\Add7~0_combout\ $ (!\Add8~0_combout\)))) # (!\Add7~2_combout\ & (!\Add8~2_combout\ & (\Add7~0_combout\ $ (!\Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~0_combout\,
	datac => \Add8~0_combout\,
	datad => \Add8~2_combout\,
	combout => \ramreader~7_combout\);

-- Location: LCCOMB_X18_Y14_N26
\ramreader~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~14_combout\ = (\Add5~0_combout\ & (\Add8~4_combout\ & (\U1|vcs\(1) $ (\Add8~2_combout\)))) # (!\Add5~0_combout\ & (!\Add8~4_combout\ & (\U1|vcs\(1) $ (\Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \U1|vcs\(1),
	datac => \Add8~2_combout\,
	datad => \Add8~4_combout\,
	combout => \ramreader~14_combout\);

-- Location: LCCOMB_X17_Y14_N30
\ramreader~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~16_combout\ = (\Add5~2_combout\ & (\Add8~6_combout\ & (\Add5~4_combout\ $ (!\Add8~8_combout\)))) # (!\Add5~2_combout\ & (!\Add8~6_combout\ & (\Add5~4_combout\ $ (!\Add8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \Add5~4_combout\,
	datac => \Add8~8_combout\,
	datad => \Add8~6_combout\,
	combout => \ramreader~16_combout\);

-- Location: LCCOMB_X19_Y14_N6
\ramreader~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~17_combout\ = (\Add5~6_combout\ & (\Add8~10_combout\ & (\Add5~8_combout\ $ (!\Add8~12_combout\)))) # (!\Add5~6_combout\ & (!\Add8~10_combout\ & (\Add5~8_combout\ $ (!\Add8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => \Add5~8_combout\,
	datac => \Add8~12_combout\,
	datad => \Add8~10_combout\,
	combout => \ramreader~17_combout\);

-- Location: LCCOMB_X18_Y14_N30
\ramreader~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~18_combout\ = (\ramreader~16_combout\ & (\ramreader~17_combout\ & (\Add5~12_combout\ $ (!\Add8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~12_combout\,
	datab => \ramreader~16_combout\,
	datac => \Add8~16_combout\,
	datad => \ramreader~17_combout\,
	combout => \ramreader~18_combout\);

-- Location: FF_X16_Y14_N15
\U6|green[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U6|green~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|green\(4));

-- Location: LCCOMB_X23_Y15_N10
\Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (\Add10~0_combout\ & (sample_MIN(0) & (\Add10~2_combout\ $ (!sample_MIN(1))))) # (!\Add10~0_combout\ & (!sample_MIN(0) & (\Add10~2_combout\ $ (!sample_MIN(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \Add10~2_combout\,
	datac => sample_MIN(1),
	datad => sample_MIN(0),
	combout => \Equal9~0_combout\);

-- Location: FF_X23_Y14_N25
\sample_MIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~3_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(3));

-- Location: LCCOMB_X22_Y16_N4
\Equal9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (\Add10~4_combout\ & (sample_MIN(2) & (\Add10~6_combout\ $ (!sample_MIN(3))))) # (!\Add10~4_combout\ & (!sample_MIN(2) & (\Add10~6_combout\ $ (!sample_MIN(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => sample_MIN(2),
	datac => \Add10~6_combout\,
	datad => sample_MIN(3),
	combout => \Equal9~1_combout\);

-- Location: FF_X23_Y14_N29
\sample_MIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~5_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(5));

-- Location: LCCOMB_X23_Y16_N16
\Equal9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = (\Add10~8_combout\ & (sample_MIN(4) & (sample_MIN(5) $ (!\Add10~10_combout\)))) # (!\Add10~8_combout\ & (!sample_MIN(4) & (sample_MIN(5) $ (!\Add10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~8_combout\,
	datab => sample_MIN(4),
	datac => sample_MIN(5),
	datad => \Add10~10_combout\,
	combout => \Equal9~2_combout\);

-- Location: FF_X22_Y16_N11
\sample_MIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~7_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(7));

-- Location: FF_X19_Y15_N11
\sample_MIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~8_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(6));

-- Location: LCCOMB_X21_Y16_N0
\Equal9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~3_combout\ = (\Add10~12_combout\ & (sample_MIN(6) & (sample_MIN(7) $ (!\Add10~14_combout\)))) # (!\Add10~12_combout\ & (!sample_MIN(6) & (sample_MIN(7) $ (!\Add10~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~12_combout\,
	datab => sample_MIN(7),
	datac => sample_MIN(6),
	datad => \Add10~14_combout\,
	combout => \Equal9~3_combout\);

-- Location: LCCOMB_X22_Y16_N8
\Equal9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~4_combout\ = (\Equal9~0_combout\ & (\Equal9~1_combout\ & (\Equal9~3_combout\ & \Equal9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \Equal9~1_combout\,
	datac => \Equal9~3_combout\,
	datad => \Equal9~2_combout\,
	combout => \Equal9~4_combout\);

-- Location: FF_X23_Y14_N15
\sample_MAX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MAX[5]~feeder_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(5));

-- Location: FF_X21_Y14_N3
\sample_MAX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MAX~4_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(3));

-- Location: LCCOMB_X19_Y15_N22
\Equal10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (\Add10~4_combout\ & (sample_MAX(2) & (\Add10~6_combout\ $ (!sample_MAX(3))))) # (!\Add10~4_combout\ & (!sample_MAX(2) & (\Add10~6_combout\ $ (!sample_MAX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => sample_MAX(2),
	datac => \Add10~6_combout\,
	datad => sample_MAX(3),
	combout => \Equal10~2_combout\);

-- Location: FF_X22_Y13_N17
\sample_MAX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	asdata => \sample_MIN~9_combout\,
	sload => VCC,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(9));

-- Location: FF_X21_Y15_N27
\sample_MAX[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MAX~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(18));

-- Location: FF_X21_Y15_N25
\sample_MAX[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~14_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(14));

-- Location: FF_X23_Y15_N17
\sample_MAX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MAX[12]~feeder_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(12));

-- Location: LCCOMB_X23_Y15_N26
\Equal10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~7_combout\ = (!sample_MAX(13) & (!sample_MAX(12) & (!sample_MAX(11) & !sample_MAX(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(13),
	datab => sample_MAX(12),
	datac => sample_MAX(11),
	datad => sample_MAX(14),
	combout => \Equal10~7_combout\);

-- Location: FF_X22_Y15_N21
\sample_MIN[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~17_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(10));

-- Location: FF_X22_Y15_N27
\sample_MIN[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~12_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(16));

-- Location: LCCOMB_X19_Y15_N14
\Equal9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~7_combout\ = (!sample_MIN(17) & (!sample_MIN(15) & (!sample_MIN(14) & !sample_MIN(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sample_MIN(17),
	datab => sample_MIN(15),
	datac => sample_MIN(14),
	datad => sample_MIN(16),
	combout => \Equal9~7_combout\);

-- Location: LCCOMB_X18_Y12_N20
\U1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal1~1_combout\ = (\U1|vcs\(3) & (!\U1|vcs\(0) & (!\U1|vcs\(1) & \U1|vcs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(3),
	datab => \U1|vcs\(0),
	datac => \U1|vcs\(1),
	datad => \U1|vcs\(2),
	combout => \U1|Equal1~1_combout\);

-- Location: FF_X17_Y15_N27
\counter25:prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \prescaler~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[18]~q\);

-- Location: FF_X18_Y13_N3
\counter25:prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \prescaler~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[20]~q\);

-- Location: LCCOMB_X18_Y15_N22
\Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\counter25:prescaler[19]~q\ & (\counter25:prescaler[18]~q\ & (\counter25:prescaler[20]~q\ & !\counter25:prescaler[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter25:prescaler[19]~q\,
	datab => \counter25:prescaler[18]~q\,
	datac => \counter25:prescaler[20]~q\,
	datad => \counter25:prescaler[17]~q\,
	combout => \Equal2~4_combout\);

-- Location: FF_X18_Y15_N7
\counter25:prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \prescaler~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[22]~q\);

-- Location: FF_X17_Y13_N13
\counter32:prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[2]~q\);

-- Location: FF_X17_Y13_N31
\counter32:prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[11]~q\);

-- Location: FF_X17_Y12_N27
\counter32:prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \prescaler~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[13]~q\);

-- Location: FF_X17_Y12_N7
\counter32:prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[15]~q\);

-- Location: LCCOMB_X17_Y12_N24
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\counter32:prescaler[15]~q\ & (!\counter32:prescaler[14]~q\ & (\counter32:prescaler[13]~q\ & !\counter32:prescaler[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[15]~q\,
	datab => \counter32:prescaler[14]~q\,
	datac => \counter32:prescaler[13]~q\,
	datad => \counter32:prescaler[12]~q\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X14_Y11_N12
\U6|colorgen~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|colorgen~4_combout\ = ((\U1|hcs\(5)) # ((\U1|hcs\(3)) # (!\U1|hcs\(4)))) # (!\U1|vcs\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(2),
	datab => \U1|hcs\(5),
	datac => \U1|hcs\(3),
	datad => \U1|hcs\(4),
	combout => \U6|colorgen~4_combout\);

-- Location: LCCOMB_X12_Y13_N20
\Mod0|auto_generated|divider|divider|StageOut[117]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[117]~57_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[117]~57_combout\);

-- Location: LCCOMB_X13_Y14_N20
\Mod0|auto_generated|divider|divider|StageOut[116]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[116]~58_combout\ = (\Add13~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add13~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[116]~58_combout\);

-- Location: LCCOMB_X12_Y13_N30
\Mod0|auto_generated|divider|divider|StageOut[114]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[114]~63_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[114]~63_combout\);

-- Location: LCCOMB_X12_Y13_N28
\Mod0|auto_generated|divider|divider|StageOut[113]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[113]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Add13~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Add13~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[113]~64_combout\);

-- Location: LCCOMB_X12_Y14_N26
\Mod0|auto_generated|divider|divider|StageOut[112]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[112]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[112]~67_combout\);

-- Location: LCCOMB_X12_Y12_N12
\Mod0|auto_generated|divider|divider|StageOut[111]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[111]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[111]~69_combout\);

-- Location: LCCOMB_X13_Y12_N6
\Mod0|auto_generated|divider|divider|StageOut[110]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[110]~71_combout\ = (\U1|hcs\(2) & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|hcs\(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[110]~71_combout\);

-- Location: LCCOMB_X11_Y12_N18
\Mod0|auto_generated|divider|divider|StageOut[125]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[125]~81_combout\ = (!\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \Mod0|auto_generated|divider|divider|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[125]~81_combout\);

-- Location: LCCOMB_X11_Y12_N8
\Mod0|auto_generated|divider|divider|StageOut[124]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[124]~82_combout\ = (!\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \Mod0|auto_generated|divider|divider|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[124]~82_combout\);

-- Location: LCCOMB_X13_Y12_N10
\Mod0|auto_generated|divider|divider|StageOut[123]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[123]~83_combout\ = (\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \U1|hcs\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datac => \U1|hcs\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[123]~83_combout\);

-- Location: LCCOMB_X12_Y11_N4
\Mod0|auto_generated|divider|divider|StageOut[122]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[122]~85_combout\ = (\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \U1|hcs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \U1|hcs\(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[122]~85_combout\);

-- Location: LCCOMB_X11_Y11_N28
\addr_read[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[3]~17_combout\ = (\Mod0|auto_generated|divider|divider|op_2~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[122]~85_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[122]~88_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~20_combout\ & (((\Mod0|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[122]~85_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_2~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[122]~88_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_2~2_combout\,
	combout => \addr_read[3]~17_combout\);

-- Location: LCCOMB_X18_Y11_N6
\addr_read[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[3]~18_combout\ = (\SW~input_o\ & (!\addr_read[0]~12_combout\ & ((\addr_read[3]~17_combout\)))) # (!\SW~input_o\ & (((\U1|hcs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_read[0]~12_combout\,
	datab => \U1|hcs\(3),
	datac => \SW~input_o\,
	datad => \addr_read[3]~17_combout\,
	combout => \addr_read[3]~18_combout\);

-- Location: LCCOMB_X11_Y11_N22
\addr_read[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[4]~19_combout\ = (\Mod0|auto_generated|divider|divider|op_2~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[123]~83_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[123]~84_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~20_combout\ & (((\Mod0|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[123]~83_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[123]~84_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_2~20_combout\,
	combout => \addr_read[4]~19_combout\);

-- Location: LCCOMB_X18_Y11_N12
\addr_read[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[4]~20_combout\ = (\SW~input_o\ & (!\addr_read[0]~12_combout\ & ((\addr_read[4]~19_combout\)))) # (!\SW~input_o\ & (((\Add13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_read[0]~12_combout\,
	datab => \Add13~0_combout\,
	datac => \SW~input_o\,
	datad => \addr_read[4]~19_combout\,
	combout => \addr_read[4]~20_combout\);

-- Location: LCCOMB_X11_Y11_N0
\addr_read[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[5]~21_combout\ = (\Mod0|auto_generated|divider|divider|op_2~20_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[124]~82_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[124]~95_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~20_combout\ & (\Mod0|auto_generated|divider|divider|op_2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_2~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_2~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[124]~82_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[124]~95_combout\,
	combout => \addr_read[5]~21_combout\);

-- Location: LCCOMB_X18_Y11_N26
\addr_read[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[5]~22_combout\ = (\SW~input_o\ & ((\addr_read[5]~21_combout\) # ((\addr_read[0]~12_combout\)))) # (!\SW~input_o\ & (((\Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~input_o\,
	datab => \addr_read[5]~21_combout\,
	datac => \addr_read[0]~12_combout\,
	datad => \Add13~2_combout\,
	combout => \addr_read[5]~22_combout\);

-- Location: LCCOMB_X11_Y11_N30
\addr_read[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[6]~23_combout\ = (\Mod0|auto_generated|divider|divider|op_2~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[125]~81_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[125]~94_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~20_combout\ & (((\Mod0|auto_generated|divider|divider|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[125]~81_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[125]~94_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_2~20_combout\,
	combout => \addr_read[6]~23_combout\);

-- Location: LCCOMB_X18_Y11_N8
\addr_read[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[6]~24_combout\ = (\SW~input_o\ & ((\addr_read[0]~12_combout\) # ((\addr_read[6]~23_combout\)))) # (!\SW~input_o\ & (((\Add13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_read[0]~12_combout\,
	datab => \addr_read[6]~23_combout\,
	datac => \SW~input_o\,
	datad => \Add13~4_combout\,
	combout => \addr_read[6]~24_combout\);

-- Location: LCCOMB_X11_Y11_N24
\addr_read[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[7]~25_combout\ = (\Mod0|auto_generated|divider|divider|op_2~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[126]~93_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[126]~80_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~20_combout\ & (((\Mod0|auto_generated|divider|divider|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[126]~93_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[126]~80_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_2~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_2~20_combout\,
	combout => \addr_read[7]~25_combout\);

-- Location: LCCOMB_X18_Y11_N10
\addr_read[7]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[7]~26_combout\ = (\SW~input_o\ & ((\addr_read[0]~12_combout\) # ((\addr_read[7]~25_combout\)))) # (!\SW~input_o\ & (((\Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_read[0]~12_combout\,
	datab => \addr_read[7]~25_combout\,
	datac => \SW~input_o\,
	datad => \Add13~6_combout\,
	combout => \addr_read[7]~26_combout\);

-- Location: LCCOMB_X16_Y14_N14
\U6|green~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|green~0_combout\ = (\U6|red[1]~0_combout\ & \U6|colorgen~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|red[1]~0_combout\,
	datad => \U6|colorgen~2_combout\,
	combout => \U6|green~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\sample_MIN~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~3_combout\ = (!\U1|Equal1~2_combout\ & \Add8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal1~2_combout\,
	datad => \Add8~6_combout\,
	combout => \sample_MIN~3_combout\);

-- Location: LCCOMB_X23_Y14_N28
\sample_MIN~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~5_combout\ = (!\U1|Equal1~2_combout\ & \Add8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~2_combout\,
	datac => \Add8~10_combout\,
	combout => \sample_MIN~5_combout\);

-- Location: LCCOMB_X21_Y14_N2
\sample_MAX~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MAX~4_combout\ = (\U1|Equal1~2_combout\) # (\Add8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal1~2_combout\,
	datad => \Add8~6_combout\,
	combout => \sample_MAX~4_combout\);

-- Location: LCCOMB_X21_Y15_N26
\sample_MAX~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MAX~6_combout\ = (!\U1|Equal1~2_combout\ & ((\Add8~36_combout\) # ((sample_MAX(18) & !\LessThan1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~2_combout\,
	datab => \Add8~36_combout\,
	datac => sample_MAX(18),
	datad => \LessThan1~36_combout\,
	combout => \sample_MAX~6_combout\);

-- Location: LCCOMB_X13_Y14_N30
\U2|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal2~0_combout\ = (\U2|count\(3) & (\U2|count\(4) & (\U2|count\(5) & \U2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(3),
	datab => \U2|count\(4),
	datac => \U2|count\(5),
	datad => \U2|count\(1),
	combout => \U2|Equal2~0_combout\);

-- Location: LCCOMB_X14_Y16_N0
\U2|Selector25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector25~1_combout\ = (\U2|Equal2~1_combout\) # ((!\U2|s_FSM_state.sclhi2~q\ & !\U2|s_FSM_state.sclhi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.sclhi2~q\,
	datac => \U2|Equal2~1_combout\,
	datad => \U2|s_FSM_state.sclhi~q\,
	combout => \U2|Selector25~1_combout\);

-- Location: LCCOMB_X13_Y16_N10
\U2|Selector25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector25~2_combout\ = (\U2|Selector25~1_combout\ & ((\U2|Equal1~0_combout\) # ((!\U2|s_FSM_state.scllo2~q\ & !\U2|s_FSM_state.scllo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|s_FSM_state.scllo2~q\,
	datac => \U2|Selector25~1_combout\,
	datad => \U2|s_FSM_state.scllo~q\,
	combout => \U2|Selector25~2_combout\);

-- Location: LCCOMB_X17_Y15_N26
\prescaler~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~14_combout\ = (\Add4~34_combout\ & !\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~34_combout\,
	datad => \Equal2~6_combout\,
	combout => \prescaler~14_combout\);

-- Location: LCCOMB_X18_Y13_N2
\prescaler~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~16_combout\ = (\Add4~38_combout\ & !\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~38_combout\,
	datac => \Equal2~6_combout\,
	combout => \prescaler~16_combout\);

-- Location: LCCOMB_X18_Y15_N6
\prescaler~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~18_combout\ = (\Add4~42_combout\ & !\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~42_combout\,
	datad => \Equal2~6_combout\,
	combout => \prescaler~18_combout\);

-- Location: LCCOMB_X17_Y12_N26
\prescaler~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~21_combout\ = (\Add2~26_combout\ & (((!\Equal1~4_combout\) # (!\Equal1~6_combout\)) # (!\Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal1~6_combout\,
	datac => \Equal1~4_combout\,
	datad => \Add2~26_combout\,
	combout => \prescaler~21_combout\);

-- Location: LCCOMB_X19_Y16_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (addr_write(2) & (addr_write(1) & (!addr_write(0) & !addr_write(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(2),
	datab => addr_write(1),
	datac => addr_write(0),
	datad => addr_write(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y16_N12
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (addr_write(6) & (!addr_write(4) & (addr_write(5) & addr_write(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(6),
	datab => addr_write(4),
	datac => addr_write(5),
	datad => addr_write(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X19_Y16_N6
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (addr_write(8) & (addr_write(9) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => addr_write(8),
	datac => addr_write(9),
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X19_Y16_N26
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (!\s_mainFSM_state.readSamples~q\ & ((\s_mainFSM_state.writeSamples~q\ & (\Equal0~2_combout\)) # (!\s_mainFSM_state.writeSamples~q\ & ((\U5|o_triggered~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \U5|o_triggered~q\,
	datac => \s_mainFSM_state.writeSamples~q\,
	datad => \s_mainFSM_state.readSamples~q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X14_Y16_N23
\U2|run_timer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|run_timer~q\);

-- Location: LCCOMB_X14_Y16_N16
\U2|Selector12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector12~2_combout\ = (\U2|s_FSM_state.idle~q\ & \U2|s_FSM_state.sclhi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|s_FSM_state.idle~q\,
	datad => \U2|s_FSM_state.sclhi~q\,
	combout => \U2|Selector12~2_combout\);

-- Location: LCCOMB_X14_Y16_N26
\U2|Selector12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector12~3_combout\ = (\U2|Equal2~1_combout\) # ((\U2|Equal0~2_combout\ & ((\U2|s_FSM_state.start~q\) # (\U2|s_FSM_state.scllo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.start~q\,
	datab => \U2|Equal0~2_combout\,
	datac => \U2|Equal2~1_combout\,
	datad => \U2|s_FSM_state.scllo~q\,
	combout => \U2|Selector12~3_combout\);

-- Location: LCCOMB_X14_Y16_N8
\U2|Selector12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector12~4_combout\ = ((!\U2|Equal1~0_combout\ & (!\U2|Equal0~2_combout\ & !\U2|Equal6~1_combout\))) # (!\U2|s_FSM_state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.stop~q\,
	datab => \U2|Equal1~0_combout\,
	datac => \U2|Equal0~2_combout\,
	datad => \U2|Equal6~1_combout\,
	combout => \U2|Selector12~4_combout\);

-- Location: LCCOMB_X14_Y16_N6
\U2|Selector12~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector12~5_combout\ = (\U2|Selector12~2_combout\ & (((\U2|s_FSM_state.scllo2~q\) # (!\U2|Selector12~4_combout\)) # (!\U2|Selector12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector12~3_combout\,
	datab => \U2|Selector12~2_combout\,
	datac => \U2|Selector12~4_combout\,
	datad => \U2|s_FSM_state.scllo2~q\,
	combout => \U2|Selector12~5_combout\);

-- Location: FF_X13_Y16_N31
\U2|r_byte_to_send[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector0~0_combout\,
	ena => \U2|r_byte_to_send[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(7));

-- Location: LCCOMB_X13_Y16_N12
\U2|sda~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|sda~1_combout\ = (!\U2|s_FSM_state.scllo2~q\ & (\U2|s_FSM_state.idle~q\ & ((!\U2|s_FSM_state.scllo~q\) # (!\U2|r_byte_to_send\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo2~q\,
	datab => \U2|s_FSM_state.idle~q\,
	datac => \U2|r_byte_to_send\(7),
	datad => \U2|s_FSM_state.scllo~q\,
	combout => \U2|sda~1_combout\);

-- Location: LCCOMB_X14_Y16_N22
\U2|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector17~0_combout\ = (\U2|s_FSM_state.start~q\ & (!\U2|Equal0~2_combout\ & ((\U2|run_timer~q\) # (\U2|s_FSM_state.idle~q\)))) # (!\U2|s_FSM_state.start~q\ & (((\U2|run_timer~q\) # (\U2|s_FSM_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.start~q\,
	datab => \U2|Equal0~2_combout\,
	datac => \U2|run_timer~q\,
	datad => \U2|s_FSM_state.idle~q\,
	combout => \U2|Selector17~0_combout\);

-- Location: LCCOMB_X13_Y15_N12
\U2|Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector8~2_combout\ = (\U2|r_no_of_bytes_to_send\(1) $ (((\U2|Equal2~1_combout\ & \U2|r_no_of_bytes_to_send\(0))))) # (!\U2|s_FSM_state.sclhi2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|r_no_of_bytes_to_send\(1),
	datac => \U2|r_no_of_bytes_to_send\(0),
	datad => \U2|s_FSM_state.sclhi2~q\,
	combout => \U2|Selector8~2_combout\);

-- Location: LCCOMB_X13_Y15_N26
\U2|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|WideOr0~0_combout\ = (!\U2|s_FSM_state.sclhi2~q\ & \U2|s_FSM_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|s_FSM_state.sclhi2~q\,
	datad => \U2|s_FSM_state.idle~q\,
	combout => \U2|WideOr0~0_combout\);

-- Location: LCCOMB_X16_Y15_N22
\U2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = \U2|FSM:bit_count[3]~q\ $ (((\U2|FSM:bit_count[2]~q\ & (\U2|FSM:bit_count[1]~q\ & \U2|FSM:bit_count[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|FSM:bit_count[2]~q\,
	datab => \U2|FSM:bit_count[1]~q\,
	datac => \U2|FSM:bit_count[0]~q\,
	datad => \U2|FSM:bit_count[3]~q\,
	combout => \U2|Add0~0_combout\);

-- Location: LCCOMB_X16_Y15_N18
\U2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~2_combout\ = \U2|FSM:bit_count[2]~q\ $ (((\U2|FSM:bit_count[0]~q\ & \U2|FSM:bit_count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|FSM:bit_count[2]~q\,
	datac => \U2|FSM:bit_count[0]~q\,
	datad => \U2|FSM:bit_count[1]~q\,
	combout => \U2|Add0~2_combout\);

-- Location: LCCOMB_X16_Y15_N24
\U2|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector19~0_combout\ = (\U2|FSM:bit_count[2]~q\ & !\U2|s_FSM_state.scllo2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|FSM:bit_count[2]~q\,
	datad => \U2|s_FSM_state.scllo2~q\,
	combout => \U2|Selector19~0_combout\);

-- Location: FF_X13_Y16_N27
\U2|r_byte_to_send[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector1~0_combout\,
	ena => \U2|r_byte_to_send[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(6));

-- Location: LCCOMB_X13_Y16_N30
\U2|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector0~0_combout\ = (\U2|r_byte_to_send\(6) & \U2|s_FSM_state.scllo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|r_byte_to_send\(6),
	datad => \U2|s_FSM_state.scllo~q\,
	combout => \U2|Selector0~0_combout\);

-- Location: LCCOMB_X13_Y15_N16
\U2|r_byte_to_send[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|r_byte_to_send[3]~2_combout\ = (!\U2|r_byte_to_send[3]~3_combout\ & ((\U2|s_FSM_state.scllo~q\ & ((\U2|Equal1~0_combout\))) # (!\U2|s_FSM_state.scllo~q\ & (!\U2|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datab => \U2|r_byte_to_send[3]~3_combout\,
	datac => \U2|WideOr0~0_combout\,
	datad => \U2|Equal1~0_combout\,
	combout => \U2|r_byte_to_send[3]~2_combout\);

-- Location: FF_X18_Y17_N11
\U5|s_state.belowLevel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \U5|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|s_state.belowLevel~q\);

-- Location: FF_X13_Y16_N9
\U2|r_byte_to_send[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector2~0_combout\,
	ena => \U2|r_byte_to_send[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(5));

-- Location: LCCOMB_X13_Y15_N22
\U2|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector3~0_combout\ = (\U2|r_no_of_bytes_to_send\(0) & \U2|r_no_of_bytes_to_send\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|r_no_of_bytes_to_send\(0),
	datad => \U2|r_no_of_bytes_to_send\(1),
	combout => \U2|Selector3~0_combout\);

-- Location: LCCOMB_X13_Y16_N26
\U2|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector1~0_combout\ = (\U2|s_FSM_state.sclhi2~q\ & (!\U2|Selector3~0_combout\)) # (!\U2|s_FSM_state.sclhi2~q\ & (((\U2|r_byte_to_send\(5)) # (!\U2|s_FSM_state.scllo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector3~0_combout\,
	datab => \U2|s_FSM_state.sclhi2~q\,
	datac => \U2|r_byte_to_send\(5),
	datad => \U2|s_FSM_state.scllo~q\,
	combout => \U2|Selector1~0_combout\);

-- Location: LCCOMB_X18_Y17_N20
\U5|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|LessThan0~2_combout\ = (((!\AD_data[1]~input_o\) # (!\AD_data[2]~input_o\)) # (!\AD_data[3]~input_o\)) # (!\AD_data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD_data[0]~input_o\,
	datab => \AD_data[3]~input_o\,
	datac => \AD_data[2]~input_o\,
	datad => \AD_data[1]~input_o\,
	combout => \U5|LessThan0~2_combout\);

-- Location: LCCOMB_X18_Y17_N22
\U5|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|LessThan0~3_combout\ = ((\U5|LessThan0~1_combout\ & ((\U5|LessThan0~2_combout\) # (!\AD_data[4]~input_o\)))) # (!\AD_data[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|LessThan0~1_combout\,
	datab => \AD_data[11]~input_o\,
	datac => \AD_data[4]~input_o\,
	datad => \U5|LessThan0~2_combout\,
	combout => \U5|LessThan0~3_combout\);

-- Location: FF_X18_Y17_N13
\U5|s_state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \U5|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|s_state.ready~q\);

-- Location: LCCOMB_X18_Y17_N30
\U5|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Selector2~0_combout\ = (\U5|s_state.ready~q\ & \U5|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|s_state.ready~q\,
	datac => \U5|LessThan0~3_combout\,
	combout => \U5|Selector2~0_combout\);

-- Location: FF_X18_Y17_N17
\U5|s_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \U5|s_state.start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|s_state.start~q\);

-- Location: LCCOMB_X18_Y17_N18
\U5|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Selector3~1_combout\ = (\U5|s_state.belowLevel~q\ & (\AD_data[11]~input_o\ & !\U5|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|s_state.belowLevel~q\,
	datac => \AD_data[11]~input_o\,
	datad => \U5|LessThan0~1_combout\,
	combout => \U5|Selector3~1_combout\);

-- Location: LCCOMB_X18_Y17_N24
\U5|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Selector1~0_combout\ = (!\U5|Selector3~1_combout\ & (((!\U5|s_state.ready~q\ & \U5|s_state.start~q\)) # (!\U5|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|s_state.ready~q\,
	datab => \U5|s_state.start~q\,
	datac => \U5|LessThan0~3_combout\,
	datad => \U5|Selector3~1_combout\,
	combout => \U5|Selector1~0_combout\);

-- Location: LCCOMB_X18_Y17_N10
\U5|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Selector2~1_combout\ = (!\U5|s_state.triggered~q\ & ((\U5|Selector2~0_combout\) # ((\U5|s_state.belowLevel~q\ & \U5|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Selector2~0_combout\,
	datab => \U5|s_state.triggered~q\,
	datac => \U5|s_state.belowLevel~q\,
	datad => \U5|Selector1~0_combout\,
	combout => \U5|Selector2~1_combout\);

-- Location: FF_X13_Y16_N15
\U2|r_byte_to_send[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector3~1_combout\,
	ena => \U2|r_byte_to_send[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(4));

-- Location: LCCOMB_X13_Y16_N8
\U2|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector2~0_combout\ = (\U2|s_FSM_state.scllo~q\ & ((\U2|r_byte_to_send\(4)))) # (!\U2|s_FSM_state.scllo~q\ & (!\U2|s_FSM_state.sclhi2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|s_FSM_state.sclhi2~q\,
	datac => \U2|r_byte_to_send\(4),
	datad => \U2|s_FSM_state.scllo~q\,
	combout => \U2|Selector2~0_combout\);

-- Location: LCCOMB_X18_Y17_N26
\U5|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Selector1~1_combout\ = (\U5|s_state.triggered~q\) # ((!\U5|Selector3~1_combout\ & ((!\U5|s_state.ready~q\) # (!\U5|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|LessThan0~3_combout\,
	datab => \U5|Selector3~1_combout\,
	datac => \U5|s_state.triggered~q\,
	datad => \U5|s_state.ready~q\,
	combout => \U5|Selector1~1_combout\);

-- Location: LCCOMB_X18_Y17_N12
\U5|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Selector1~2_combout\ = (\U5|Selector1~0_combout\ & (((\U5|s_state.triggered~q\) # (\U5|s_state.ready~q\)))) # (!\U5|Selector1~0_combout\ & (\U5|Selector1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Selector1~1_combout\,
	datab => \U5|s_state.triggered~q\,
	datac => \U5|s_state.ready~q\,
	datad => \U5|Selector1~0_combout\,
	combout => \U5|Selector1~2_combout\);

-- Location: LCCOMB_X18_Y17_N16
\U5|s_state.start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|s_state.start~0_combout\ = (\U5|LessThan0~3_combout\) # ((\U5|Selector3~1_combout\) # (\U5|s_state.start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|LessThan0~3_combout\,
	datab => \U5|Selector3~1_combout\,
	datac => \U5|s_state.start~q\,
	combout => \U5|s_state.start~0_combout\);

-- Location: FF_X13_Y16_N5
\U2|r_byte_to_send[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector4~0_combout\,
	ena => \U2|r_byte_to_send[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(3));

-- Location: LCCOMB_X13_Y16_N14
\U2|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector3~1_combout\ = (\U2|s_FSM_state.sclhi2~q\ & (\U2|Selector3~0_combout\)) # (!\U2|s_FSM_state.sclhi2~q\ & (((\U2|r_byte_to_send\(3)) # (!\U2|s_FSM_state.scllo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector3~0_combout\,
	datab => \U2|s_FSM_state.scllo~q\,
	datac => \U2|r_byte_to_send\(3),
	datad => \U2|s_FSM_state.sclhi2~q\,
	combout => \U2|Selector3~1_combout\);

-- Location: FF_X13_Y16_N23
\U2|r_byte_to_send[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector5~0_combout\,
	ena => \U2|r_byte_to_send[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(2));

-- Location: LCCOMB_X13_Y16_N4
\U2|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector4~0_combout\ = (\U2|r_byte_to_send\(2) & \U2|s_FSM_state.scllo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|r_byte_to_send\(2),
	datad => \U2|s_FSM_state.scllo~q\,
	combout => \U2|Selector4~0_combout\);

-- Location: FF_X13_Y16_N25
\U2|r_byte_to_send[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector6~0_combout\,
	ena => \U2|r_byte_to_send[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(1));

-- Location: LCCOMB_X13_Y16_N22
\U2|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector5~0_combout\ = (\U2|r_byte_to_send\(1) & \U2|s_FSM_state.scllo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|r_byte_to_send\(1),
	datad => \U2|s_FSM_state.scllo~q\,
	combout => \U2|Selector5~0_combout\);

-- Location: FF_X13_Y15_N5
\U2|r_byte_to_send[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(0));

-- Location: LCCOMB_X13_Y16_N24
\U2|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector6~0_combout\ = (\U2|s_FSM_state.scllo~q\ & ((\U2|r_byte_to_send\(0)))) # (!\U2|s_FSM_state.scllo~q\ & (!\U2|s_FSM_state.sclhi2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|s_FSM_state.sclhi2~q\,
	datac => \U2|r_byte_to_send\(0),
	datad => \U2|s_FSM_state.scllo~q\,
	combout => \U2|Selector6~0_combout\);

-- Location: LCCOMB_X13_Y15_N6
\U2|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector7~0_combout\ = (\U2|Equal2~1_combout\ & (\U2|s_FSM_state.sclhi2~q\ & (\U2|r_no_of_bytes_to_send\(1) $ (\U2|r_no_of_bytes_to_send\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|r_no_of_bytes_to_send\(1),
	datac => \U2|r_no_of_bytes_to_send\(0),
	datad => \U2|s_FSM_state.sclhi2~q\,
	combout => \U2|Selector7~0_combout\);

-- Location: LCCOMB_X13_Y15_N4
\U2|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector7~1_combout\ = (\U2|Selector7~0_combout\) # ((\U2|r_byte_to_send\(0) & ((\U2|WideOr0~0_combout\) # (\U2|r_byte_to_send[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr0~0_combout\,
	datab => \U2|r_byte_to_send[3]~3_combout\,
	datac => \U2|r_byte_to_send\(0),
	datad => \U2|Selector7~0_combout\,
	combout => \U2|Selector7~1_combout\);

-- Location: LCCOMB_X24_Y11_N24
\Div0|auto_generated|divider|divider|StageOut[52]~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~273_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[43]~271_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[43]~271_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~273_combout\);

-- Location: LCCOMB_X23_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[62]~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[62]~275_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~321_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[53]~321_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[62]~275_combout\);

-- Location: LCCOMB_X22_Y13_N22
\Div0|auto_generated|divider|divider|StageOut[67]~282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~282_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[58]~323_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[58]~323_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~282_combout\);

-- Location: LCCOMB_X22_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[66]~283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~283_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[57]~186_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[57]~186_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~283_combout\);

-- Location: LCCOMB_X25_Y13_N10
\Div0|auto_generated|divider|divider|StageOut[78]~284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[78]~284_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[69]~280_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[69]~280_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[78]~284_combout\);

-- Location: LCCOMB_X22_Y13_N10
\Div0|auto_generated|divider|divider|StageOut[76]~286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[76]~286_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[67]~282_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[67]~282_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[76]~286_combout\);

-- Location: LCCOMB_X22_Y13_N24
\Div0|auto_generated|divider|divider|StageOut[75]~287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~287_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[66]~283_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[66]~283_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~287_combout\);

-- Location: LCCOMB_X26_Y13_N26
\Div0|auto_generated|divider|divider|StageOut[86]~288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~288_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[77]~285_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[77]~285_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~288_combout\);

-- Location: LCCOMB_X25_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[85]~289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~289_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[76]~286_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[76]~286_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~289_combout\);

-- Location: LCCOMB_X26_Y14_N10
\Div0|auto_generated|divider|divider|StageOut[94]~293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[94]~293_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[85]~289_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[85]~289_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[94]~293_combout\);

-- Location: LCCOMB_X26_Y10_N14
\Div0|auto_generated|divider|divider|StageOut[101]~298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~298_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[92]~295_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[92]~295_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~298_combout\);

-- Location: LCCOMB_X24_Y10_N30
\Div0|auto_generated|divider|divider|StageOut[110]~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~302_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[101]~298_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[101]~298_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~302_combout\);

-- Location: LCCOMB_X23_Y10_N20
\Div0|auto_generated|divider|divider|StageOut[118]~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~306_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[109]~303_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[109]~303_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~306_combout\);

-- Location: LCCOMB_X24_Y10_N2
\Div0|auto_generated|divider|divider|StageOut[117]~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~307_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[108]~304_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[108]~304_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~307_combout\);

-- Location: LCCOMB_X26_Y10_N10
\Div0|auto_generated|divider|divider|StageOut[114]~310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~310_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[105]~240_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[105]~240_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~310_combout\);

-- Location: LCCOMB_X19_Y10_N0
\Div0|auto_generated|divider|divider|StageOut[126]~311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~311_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[117]~307_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~307_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~311_combout\);

-- Location: LCCOMB_X19_Y10_N26
\Div0|auto_generated|divider|divider|StageOut[125]~312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~312_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[116]~308_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[116]~308_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~312_combout\);

-- Location: LCCOMB_X19_Y10_N22
\Div0|auto_generated|divider|divider|StageOut[123]~314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~314_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~310_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[114]~310_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~314_combout\);

-- Location: LCCOMB_X21_Y11_N22
\Div0|auto_generated|divider|my_abs_num|cs2a[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a2\ $ (((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a1\ & !\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\);

-- Location: LCCOMB_X21_Y10_N30
\Div0|auto_generated|divider|divider|StageOut[134]~315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[134]~315_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[125]~312_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[125]~312_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[134]~315_combout\);

-- Location: LCCOMB_X21_Y10_N26
\Div0|auto_generated|divider|divider|StageOut[132]~317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~317_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[123]~314_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[123]~314_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~317_combout\);

-- Location: LCCOMB_X18_Y10_N20
\Div0|auto_generated|divider|divider|StageOut[131]~318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~318_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[122]~327_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[122]~327_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~318_combout\);

-- Location: LCCOMB_X13_Y15_N20
\U2|r_byte_to_send[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|r_byte_to_send[3]~3_combout\ = (\U2|s_FSM_state.sclhi2~q\ & (((!\U2|r_no_of_bytes_to_send\(1) & !\U2|r_no_of_bytes_to_send\(0))) # (!\U2|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|r_no_of_bytes_to_send\(1),
	datac => \U2|r_no_of_bytes_to_send\(0),
	datad => \U2|s_FSM_state.sclhi2~q\,
	combout => \U2|r_byte_to_send[3]~3_combout\);

-- Location: LCCOMB_X22_Y11_N26
\Div0|auto_generated|divider|divider|StageOut[53]~321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~321_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~321_combout\);

-- Location: LCCOMB_X22_Y13_N14
\Div0|auto_generated|divider|divider|StageOut[58]~323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~323_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~323_combout\);

-- Location: LCCOMB_X12_Y13_N22
\Mod0|auto_generated|divider|divider|StageOut[130]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[130]~89_combout\ = (\Mod0|auto_generated|divider|divider|op_1~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Add13~10_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Add13~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[130]~89_combout\);

-- Location: LCCOMB_X12_Y13_N24
\Mod0|auto_generated|divider|divider|StageOut[129]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[129]~90_combout\ = (\Mod0|auto_generated|divider|divider|op_1~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Add13~8_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Add13~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[129]~90_combout\);

-- Location: LCCOMB_X12_Y14_N20
\Mod0|auto_generated|divider|divider|StageOut[128]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[128]~91_combout\ = (\Mod0|auto_generated|divider|divider|op_1~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Add13~6_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datab => \Add13~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[128]~91_combout\);

-- Location: LCCOMB_X12_Y13_N18
\Mod0|auto_generated|divider|divider|StageOut[127]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[127]~92_combout\ = (\Mod0|auto_generated|divider|divider|op_1~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Add13~4_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[127]~92_combout\);

-- Location: LCCOMB_X12_Y12_N10
\Mod0|auto_generated|divider|divider|StageOut[126]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[126]~93_combout\ = (\Mod0|auto_generated|divider|divider|op_1~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Add13~2_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \Add13~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[126]~93_combout\);

-- Location: LCCOMB_X23_Y14_N14
\sample_MAX[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MAX[5]~feeder_combout\ = \sample_MIN~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_MIN~5_combout\,
	combout => \sample_MAX[5]~feeder_combout\);

-- Location: LCCOMB_X23_Y15_N16
\sample_MAX[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MAX[12]~feeder_combout\ = \sample_MIN~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_MIN~16_combout\,
	combout => \sample_MAX[12]~feeder_combout\);

-- Location: IOOBUF_X5_Y24_N9
\SCL~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_scl~en_q\,
	devoe => ww_devoe,
	o => \SCL~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\RAM_DQ[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RAM_DQ[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\RAM_DQ[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RAM_DQ[1]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\RAM_DQ[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RAM_DQ[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\RAM_DQ[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RAM_DQ[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\RAM_DQ[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RAM_DQ[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\RAM_DQ[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RAM_DQ[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\RAM_DQ[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RAM_DQ[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\RAM_DQ[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RAM_DQ[7]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\SDA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_sda~en_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SDA~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\RAM_nWE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_nWE~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\RAM_nCAS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_nCAS~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\RAM_nRAS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_nRAS~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\RAM_nCS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_nCS~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\RAM_BA0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_BA0~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\RAM_BA1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_BA1~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\RAM_DQM~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_DQM~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\RAM_CKE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_CKE~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\RAM_CLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_CLK~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\RAM_A[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\RAM_A[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\RAM_A[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\RAM_A[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\RAM_A[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\RAM_A[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\RAM_A[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\RAM_A[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\RAM_A[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\RAM_A[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[9]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\RAM_A[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[10]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\RAM_A[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[11]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\RAM_A[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RAM_A[12]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\AD_CLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_32~input_o\,
	devoe => ww_devoe,
	o => \AD_CLK~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\ADV_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADV_D[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\ADV_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => blue(1),
	devoe => ww_devoe,
	o => \ADV_D[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N23
\ADV_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => blue(2),
	devoe => ww_devoe,
	o => \ADV_D[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\ADV_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => blue(3),
	devoe => ww_devoe,
	o => \ADV_D[3]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\ADV_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADV_D[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\ADV_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => blue(5),
	devoe => ww_devoe,
	o => \ADV_D[5]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\ADV_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => blue(6),
	devoe => ww_devoe,
	o => \ADV_D[6]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\ADV_D[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => blue(7),
	devoe => ww_devoe,
	o => \ADV_D[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\ADV_D[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => green(0),
	devoe => ww_devoe,
	o => \ADV_D[8]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\ADV_D[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => green(1),
	devoe => ww_devoe,
	o => \ADV_D[9]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\ADV_D[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => green(2),
	devoe => ww_devoe,
	o => \ADV_D[10]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\ADV_D[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => green(3),
	devoe => ww_devoe,
	o => \ADV_D[11]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\ADV_D[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => green(4),
	devoe => ww_devoe,
	o => \ADV_D[12]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\ADV_D[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => green(5),
	devoe => ww_devoe,
	o => \ADV_D[13]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\ADV_D[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => green(6),
	devoe => ww_devoe,
	o => \ADV_D[14]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\ADV_D[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => green(7),
	devoe => ww_devoe,
	o => \ADV_D[15]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\ADV_D[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => red(0),
	devoe => ww_devoe,
	o => \ADV_D[16]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\ADV_D[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => red(1),
	devoe => ww_devoe,
	o => \ADV_D[17]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\ADV_D[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => red(2),
	devoe => ww_devoe,
	o => \ADV_D[18]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\ADV_D[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => red(3),
	devoe => ww_devoe,
	o => \ADV_D[19]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\ADV_D[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => red(4),
	devoe => ww_devoe,
	o => \ADV_D[20]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\ADV_D[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => red(5),
	devoe => ww_devoe,
	o => \ADV_D[21]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\ADV_D[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => red(6),
	devoe => ww_devoe,
	o => \ADV_D[22]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\ADV_D[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => red(7),
	devoe => ww_devoe,
	o => \ADV_D[23]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\ADV_HSYNC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_LessThan0~1_combout\,
	devoe => ww_devoe,
	o => \ADV_HSYNC~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\ADV_CLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_25~input_o\,
	devoe => ww_devoe,
	o => \ADV_CLK~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\ADV_VSYNC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LessThan1~0_combout\,
	devoe => ww_devoe,
	o => \ADV_VSYNC~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\ADV_I2SD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADV_I2SD~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\ADV_SCLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADV_SCLK~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\ADV_LRCLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADV_LRCLK~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\ADV_DE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|visible_img~1_combout\,
	devoe => ww_devoe,
	o => \ADV_DE~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\LED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED~0_combout\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\LED[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED~1_combout\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\LED[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED~2_combout\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\LED[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED~3_combout\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOIBUF_X34_Y12_N1
\CLK_25~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_25,
	o => \CLK_25~input_o\);

-- Location: CLKCTRL_G9
\CLK_25~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_25~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_25~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y14_N4
\U2|count[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[0]~8_combout\ = \U2|count\(0) $ (VCC)
-- \U2|count[0]~9\ = CARRY(\U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(0),
	datad => VCC,
	combout => \U2|count[0]~8_combout\,
	cout => \U2|count[0]~9\);

-- Location: LCCOMB_X13_Y14_N24
\U2|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal6~0_combout\ = (!\U2|count\(0) & \U2|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|count\(0),
	datad => \U2|count\(7),
	combout => \U2|Equal6~0_combout\);

-- Location: LCCOMB_X13_Y14_N26
\U2|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal2~1_combout\ = (\U2|Equal2~0_combout\ & (\U2|count\(6) & (!\U2|count\(2) & \U2|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~0_combout\,
	datab => \U2|count\(6),
	datac => \U2|count\(2),
	datad => \U2|Equal6~0_combout\,
	combout => \U2|Equal2~1_combout\);

-- Location: LCCOMB_X14_Y16_N4
\U2|count[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[4]~14_combout\ = (\U2|Equal2~1_combout\) # (!\U2|run_timer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|run_timer~q\,
	datac => \U2|Equal2~1_combout\,
	combout => \U2|count[4]~14_combout\);

-- Location: FF_X13_Y14_N5
\U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[0]~8_combout\,
	sclr => \U2|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(0));

-- Location: LCCOMB_X13_Y14_N6
\U2|count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[1]~10_combout\ = (\U2|count\(1) & (!\U2|count[0]~9\)) # (!\U2|count\(1) & ((\U2|count[0]~9\) # (GND)))
-- \U2|count[1]~11\ = CARRY((!\U2|count[0]~9\) # (!\U2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(1),
	datad => VCC,
	cin => \U2|count[0]~9\,
	combout => \U2|count[1]~10_combout\,
	cout => \U2|count[1]~11\);

-- Location: LCCOMB_X13_Y14_N8
\U2|count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[2]~12_combout\ = (\U2|count\(2) & (\U2|count[1]~11\ $ (GND))) # (!\U2|count\(2) & (!\U2|count[1]~11\ & VCC))
-- \U2|count[2]~13\ = CARRY((\U2|count\(2) & !\U2|count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(2),
	datad => VCC,
	cin => \U2|count[1]~11\,
	combout => \U2|count[2]~12_combout\,
	cout => \U2|count[2]~13\);

-- Location: FF_X13_Y14_N9
\U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[2]~12_combout\,
	sclr => \U2|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(2));

-- Location: LCCOMB_X13_Y14_N10
\U2|count[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[3]~15_combout\ = (\U2|count\(3) & (!\U2|count[2]~13\)) # (!\U2|count\(3) & ((\U2|count[2]~13\) # (GND)))
-- \U2|count[3]~16\ = CARRY((!\U2|count[2]~13\) # (!\U2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(3),
	datad => VCC,
	cin => \U2|count[2]~13\,
	combout => \U2|count[3]~15_combout\,
	cout => \U2|count[3]~16\);

-- Location: LCCOMB_X13_Y14_N14
\U2|count[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[5]~19_combout\ = (\U2|count\(5) & (!\U2|count[4]~18\)) # (!\U2|count\(5) & ((\U2|count[4]~18\) # (GND)))
-- \U2|count[5]~20\ = CARRY((!\U2|count[4]~18\) # (!\U2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(5),
	datad => VCC,
	cin => \U2|count[4]~18\,
	combout => \U2|count[5]~19_combout\,
	cout => \U2|count[5]~20\);

-- Location: FF_X13_Y14_N15
\U2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[5]~19_combout\,
	sclr => \U2|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(5));

-- Location: LCCOMB_X13_Y14_N16
\U2|count[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[6]~21_combout\ = (\U2|count\(6) & (\U2|count[5]~20\ $ (GND))) # (!\U2|count\(6) & (!\U2|count[5]~20\ & VCC))
-- \U2|count[6]~22\ = CARRY((\U2|count\(6) & !\U2|count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(6),
	datad => VCC,
	cin => \U2|count[5]~20\,
	combout => \U2|count[6]~21_combout\,
	cout => \U2|count[6]~22\);

-- Location: FF_X13_Y14_N17
\U2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[6]~21_combout\,
	sclr => \U2|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(6));

-- Location: LCCOMB_X13_Y14_N18
\U2|count[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[7]~23_combout\ = \U2|count[6]~22\ $ (\U2|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|count\(7),
	cin => \U2|count[6]~22\,
	combout => \U2|count[7]~23_combout\);

-- Location: FF_X13_Y14_N19
\U2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[7]~23_combout\,
	sclr => \U2|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(7));

-- Location: FF_X13_Y14_N11
\U2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[3]~15_combout\,
	sclr => \U2|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(3));

-- Location: LCCOMB_X13_Y14_N2
\U2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal0~0_combout\ = (\U2|count\(4) & (\U2|count\(5) & (\U2|count\(2) & \U2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(4),
	datab => \U2|count\(5),
	datac => \U2|count\(2),
	datad => \U2|count\(3),
	combout => \U2|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y14_N28
\U2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal0~1_combout\ = (!\U2|count\(7) & (\U2|count\(0) & \U2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(7),
	datac => \U2|count\(0),
	datad => \U2|Equal0~0_combout\,
	combout => \U2|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y14_N0
\U2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~0_combout\ = (!\U2|count\(1) & (\U2|Equal0~1_combout\ & \U2|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(1),
	datab => \U2|Equal0~1_combout\,
	datad => \U2|count\(6),
	combout => \U2|Equal1~0_combout\);

-- Location: LCCOMB_X13_Y14_N22
\U2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal0~2_combout\ = (\U2|count\(1) & (\U2|Equal0~1_combout\ & !\U2|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(1),
	datab => \U2|Equal0~1_combout\,
	datad => \U2|count\(6),
	combout => \U2|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y16_N24
\U2|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector13~0_combout\ = (\U2|s_FSM_state.start~q\ & ((\U2|Equal0~2_combout\) # ((!\U2|Equal1~0_combout\ & \U2|s_FSM_state.scllo~q\)))) # (!\U2|s_FSM_state.start~q\ & (!\U2|Equal1~0_combout\ & ((\U2|s_FSM_state.scllo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.start~q\,
	datab => \U2|Equal1~0_combout\,
	datac => \U2|Equal0~2_combout\,
	datad => \U2|s_FSM_state.scllo~q\,
	combout => \U2|Selector13~0_combout\);

-- Location: IOIBUF_X34_Y19_N15
\SW~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW,
	o => \SW~input_o\);

-- Location: LCCOMB_X14_Y16_N30
\U3|reg0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|reg0~feeder_combout\ = \SW~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~input_o\,
	combout => \U3|reg0~feeder_combout\);

-- Location: FF_X14_Y16_N31
\U3|reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U3|reg0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg0~q\);

-- Location: FF_X13_Y16_N19
\U3|reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	asdata => \U3|reg0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg1~q\);

-- Location: LCCOMB_X13_Y16_N18
\U2|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector11~0_combout\ = (\U3|reg0~q\ & !\U3|reg1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg0~q\,
	datac => \U3|reg1~q\,
	combout => \U2|Selector11~0_combout\);

-- Location: LCCOMB_X13_Y16_N28
\U2|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector10~0_combout\ = (\U2|Equal2~1_combout\ & (!\U2|s_FSM_state.stop~q\ & ((\U2|s_FSM_state.idle~q\) # (\U2|Selector11~0_combout\)))) # (!\U2|Equal2~1_combout\ & (((\U2|s_FSM_state.idle~q\) # (\U2|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|s_FSM_state.stop~q\,
	datac => \U2|s_FSM_state.idle~q\,
	datad => \U2|Selector11~0_combout\,
	combout => \U2|Selector10~0_combout\);

-- Location: FF_X13_Y16_N29
\U2|s_FSM_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|s_FSM_state.idle~q\);

-- Location: LCCOMB_X13_Y15_N2
\U2|Selector8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector8~3_combout\ = (\U2|Selector8~2_combout\ & ((\U2|s_FSM_state.sclhi2~q\) # ((\U2|r_no_of_bytes_to_send\(1)) # (!\U2|s_FSM_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector8~2_combout\,
	datab => \U2|s_FSM_state.sclhi2~q\,
	datac => \U2|r_no_of_bytes_to_send\(1),
	datad => \U2|s_FSM_state.idle~q\,
	combout => \U2|Selector8~3_combout\);

-- Location: FF_X13_Y15_N3
\U2|r_no_of_bytes_to_send[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_no_of_bytes_to_send\(1));

-- Location: LCCOMB_X13_Y15_N18
\U2|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector9~0_combout\ = (\U2|s_FSM_state.sclhi2~q\ & ((\U2|r_no_of_bytes_to_send\(1)))) # (!\U2|s_FSM_state.sclhi2~q\ & (\U2|s_FSM_state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.idle~q\,
	datab => \U2|r_no_of_bytes_to_send\(1),
	datad => \U2|s_FSM_state.sclhi2~q\,
	combout => \U2|Selector9~0_combout\);

-- Location: LCCOMB_X13_Y15_N8
\U2|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector9~1_combout\ = (\U2|Equal2~1_combout\ & (\U2|Selector9~0_combout\ & (\U2|r_no_of_bytes_to_send\(0) $ (\U2|s_FSM_state.sclhi2~q\)))) # (!\U2|Equal2~1_combout\ & (\U2|r_no_of_bytes_to_send\(0) & ((\U2|Selector9~0_combout\) # 
-- (\U2|s_FSM_state.sclhi2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|Selector9~0_combout\,
	datac => \U2|r_no_of_bytes_to_send\(0),
	datad => \U2|s_FSM_state.sclhi2~q\,
	combout => \U2|Selector9~1_combout\);

-- Location: FF_X13_Y15_N9
\U2|r_no_of_bytes_to_send[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_no_of_bytes_to_send\(0));

-- Location: LCCOMB_X13_Y15_N24
\U2|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal4~0_combout\ = (!\U2|r_no_of_bytes_to_send\(0) & !\U2|r_no_of_bytes_to_send\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|r_no_of_bytes_to_send\(0),
	datad => \U2|r_no_of_bytes_to_send\(1),
	combout => \U2|Equal4~0_combout\);

-- Location: LCCOMB_X16_Y15_N30
\U2|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector21~0_combout\ = (\U2|s_FSM_state.scllo~q\ & (\U2|Equal1~0_combout\ $ ((\U2|FSM:bit_count[0]~q\)))) # (!\U2|s_FSM_state.scllo~q\ & (((\U2|FSM:bit_count[0]~q\ & !\U2|s_FSM_state.scllo2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|s_FSM_state.scllo~q\,
	datac => \U2|FSM:bit_count[0]~q\,
	datad => \U2|s_FSM_state.scllo2~q\,
	combout => \U2|Selector21~0_combout\);

-- Location: FF_X16_Y15_N31
\U2|FSM:bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|FSM:bit_count[0]~q\);

-- Location: LCCOMB_X16_Y15_N14
\U2|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~1_combout\ = \U2|FSM:bit_count[0]~q\ $ (\U2|FSM:bit_count[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|FSM:bit_count[0]~q\,
	datad => \U2|FSM:bit_count[1]~q\,
	combout => \U2|Add0~1_combout\);

-- Location: LCCOMB_X16_Y15_N2
\U2|FSM:bit_count[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|FSM:bit_count[1]~0_combout\ = (\U2|Equal1~0_combout\ & (\U2|Add0~1_combout\)) # (!\U2|Equal1~0_combout\ & ((\U2|FSM:bit_count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|Add0~1_combout\,
	datac => \U2|FSM:bit_count[1]~q\,
	combout => \U2|FSM:bit_count[1]~0_combout\);

-- Location: LCCOMB_X16_Y15_N4
\U2|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector20~0_combout\ = (\U2|FSM:bit_count[1]~q\ & !\U2|s_FSM_state.scllo2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|FSM:bit_count[1]~q\,
	datad => \U2|s_FSM_state.scllo2~q\,
	combout => \U2|Selector20~0_combout\);

-- Location: FF_X16_Y15_N3
\U2|FSM:bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|FSM:bit_count[1]~0_combout\,
	asdata => \U2|Selector20~0_combout\,
	sload => \U2|ALT_INV_s_FSM_state.scllo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|FSM:bit_count[1]~q\);

-- Location: LCCOMB_X16_Y15_N28
\U2|FSM:bit_count[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|FSM:bit_count[3]~0_combout\ = (\U2|Equal1~0_combout\ & (\U2|Add0~0_combout\)) # (!\U2|Equal1~0_combout\ & ((\U2|FSM:bit_count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~0_combout\,
	datac => \U2|FSM:bit_count[3]~q\,
	datad => \U2|Equal1~0_combout\,
	combout => \U2|FSM:bit_count[3]~0_combout\);

-- Location: LCCOMB_X16_Y15_N8
\U2|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector18~0_combout\ = (\U2|FSM:bit_count[3]~q\ & !\U2|s_FSM_state.scllo2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|FSM:bit_count[3]~q\,
	datad => \U2|s_FSM_state.scllo2~q\,
	combout => \U2|Selector18~0_combout\);

-- Location: FF_X16_Y15_N29
\U2|FSM:bit_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|FSM:bit_count[3]~0_combout\,
	asdata => \U2|Selector18~0_combout\,
	sload => \U2|ALT_INV_s_FSM_state.scllo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|FSM:bit_count[3]~q\);

-- Location: LCCOMB_X16_Y15_N12
\U2|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal3~0_combout\ = (!\U2|FSM:bit_count[2]~q\ & (!\U2|FSM:bit_count[1]~q\ & (!\U2|FSM:bit_count[0]~q\ & \U2|FSM:bit_count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|FSM:bit_count[2]~q\,
	datab => \U2|FSM:bit_count[1]~q\,
	datac => \U2|FSM:bit_count[0]~q\,
	datad => \U2|FSM:bit_count[3]~q\,
	combout => \U2|Equal3~0_combout\);

-- Location: LCCOMB_X16_Y15_N20
\U2|Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector13~1_combout\ = (\U2|s_FSM_state.sclhi2~q\ & (((\U2|s_FSM_state.sclhi~q\ & !\U2|Equal3~0_combout\)) # (!\U2|Equal4~0_combout\))) # (!\U2|s_FSM_state.sclhi2~q\ & (\U2|s_FSM_state.sclhi~q\ & ((!\U2|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.sclhi2~q\,
	datab => \U2|s_FSM_state.sclhi~q\,
	datac => \U2|Equal4~0_combout\,
	datad => \U2|Equal3~0_combout\,
	combout => \U2|Selector13~1_combout\);

-- Location: LCCOMB_X16_Y15_N0
\U2|Selector13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector13~2_combout\ = (\U2|Selector13~0_combout\) # ((\U2|Equal2~1_combout\ & \U2|Selector13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Selector13~0_combout\,
	datac => \U2|Equal2~1_combout\,
	datad => \U2|Selector13~1_combout\,
	combout => \U2|Selector13~2_combout\);

-- Location: FF_X16_Y15_N1
\U2|s_FSM_state.scllo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|s_FSM_state.scllo~q\);

-- Location: LCCOMB_X14_Y16_N28
\U2|Selector12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector12~6_combout\ = (\U2|Equal1~0_combout\ & (!\U2|s_FSM_state.scllo2~q\ & ((\U2|Selector12~5_combout\) # (\U2|s_FSM_state.scllo~q\)))) # (!\U2|Equal1~0_combout\ & (\U2|Selector12~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector12~5_combout\,
	datab => \U2|s_FSM_state.scllo2~q\,
	datac => \U2|Equal1~0_combout\,
	datad => \U2|s_FSM_state.scllo~q\,
	combout => \U2|Selector12~6_combout\);

-- Location: FF_X14_Y16_N29
\U2|s_FSM_state.sclhi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|s_FSM_state.sclhi~q\);

-- Location: LCCOMB_X16_Y15_N10
\U2|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector14~0_combout\ = (\U2|s_FSM_state.sclhi~q\ & \U2|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|s_FSM_state.sclhi~q\,
	datad => \U2|Equal3~0_combout\,
	combout => \U2|Selector14~0_combout\);

-- Location: LCCOMB_X16_Y15_N6
\U2|Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector14~1_combout\ = (\U2|Equal2~1_combout\ & ((\U2|Selector14~0_combout\) # ((!\U2|Equal1~0_combout\ & \U2|s_FSM_state.scllo2~q\)))) # (!\U2|Equal2~1_combout\ & (!\U2|Equal1~0_combout\ & (\U2|s_FSM_state.scllo2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|Equal1~0_combout\,
	datac => \U2|s_FSM_state.scllo2~q\,
	datad => \U2|Selector14~0_combout\,
	combout => \U2|Selector14~1_combout\);

-- Location: FF_X16_Y15_N7
\U2|s_FSM_state.scllo2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|s_FSM_state.scllo2~q\);

-- Location: LCCOMB_X13_Y15_N28
\U2|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector15~0_combout\ = (\U2|Equal2~1_combout\ & (\U2|Equal1~0_combout\ & ((\U2|s_FSM_state.scllo2~q\)))) # (!\U2|Equal2~1_combout\ & ((\U2|s_FSM_state.sclhi2~q\) # ((\U2|Equal1~0_combout\ & \U2|s_FSM_state.scllo2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|Equal1~0_combout\,
	datac => \U2|s_FSM_state.sclhi2~q\,
	datad => \U2|s_FSM_state.scllo2~q\,
	combout => \U2|Selector15~0_combout\);

-- Location: FF_X13_Y15_N29
\U2|s_FSM_state.sclhi2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|s_FSM_state.sclhi2~q\);

-- Location: LCCOMB_X13_Y15_N14
\U2|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector16~0_combout\ = (\U2|Equal2~1_combout\ & (\U2|s_FSM_state.sclhi2~q\ & ((\U2|Equal4~0_combout\)))) # (!\U2|Equal2~1_combout\ & (((\U2|s_FSM_state.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|s_FSM_state.sclhi2~q\,
	datac => \U2|s_FSM_state.stop~q\,
	datad => \U2|Equal4~0_combout\,
	combout => \U2|Selector16~0_combout\);

-- Location: FF_X13_Y15_N15
\U2|s_FSM_state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|s_FSM_state.stop~q\);

-- Location: LCCOMB_X14_Y16_N18
\U2|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector25~0_combout\ = ((!\U2|Equal0~2_combout\ & ((\U2|Equal2~1_combout\) # (\U2|Equal1~0_combout\)))) # (!\U2|s_FSM_state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|Equal1~0_combout\,
	datac => \U2|Equal0~2_combout\,
	datad => \U2|s_FSM_state.stop~q\,
	combout => \U2|Selector25~0_combout\);

-- Location: LCCOMB_X14_Y16_N10
\U2|Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector11~1_combout\ = (\U2|Equal0~2_combout\ & (!\U2|s_FSM_state.idle~q\ & ((\U2|Selector11~0_combout\)))) # (!\U2|Equal0~2_combout\ & ((\U2|s_FSM_state.start~q\) # ((!\U2|s_FSM_state.idle~q\ & \U2|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal0~2_combout\,
	datab => \U2|s_FSM_state.idle~q\,
	datac => \U2|s_FSM_state.start~q\,
	datad => \U2|Selector11~0_combout\,
	combout => \U2|Selector11~1_combout\);

-- Location: FF_X14_Y16_N11
\U2|s_FSM_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|s_FSM_state.start~q\);

-- Location: LCCOMB_X14_Y16_N20
\U2|scl~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|scl~4_combout\ = (\U2|s_FSM_state.sclhi2~q\) # ((\U2|s_FSM_state.sclhi~q\) # ((\U2|Equal0~2_combout\ & \U2|s_FSM_state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.sclhi2~q\,
	datab => \U2|s_FSM_state.sclhi~q\,
	datac => \U2|Equal0~2_combout\,
	datad => \U2|s_FSM_state.start~q\,
	combout => \U2|scl~4_combout\);

-- Location: LCCOMB_X14_Y16_N12
\U2|scl~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|scl~3_combout\ = (\U2|Selector25~2_combout\ & ((\U2|Selector25~0_combout\ & ((\U2|scl~4_combout\))) # (!\U2|Selector25~0_combout\ & (\U2|scl~en_q\)))) # (!\U2|Selector25~2_combout\ & (((\U2|scl~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector25~2_combout\,
	datab => \U2|Selector25~0_combout\,
	datac => \U2|scl~en_q\,
	datad => \U2|scl~4_combout\,
	combout => \U2|scl~3_combout\);

-- Location: FF_X14_Y16_N13
\U2|scl~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|scl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|scl~en_q\);

-- Location: LCCOMB_X18_Y13_N24
\U2|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector22~0_combout\ = (!\U2|s_FSM_state.sclhi2~q\ & !\U2|s_FSM_state.sclhi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|s_FSM_state.sclhi2~q\,
	datad => \U2|s_FSM_state.sclhi~q\,
	combout => \U2|Selector22~0_combout\);

-- Location: FF_X13_Y14_N7
\U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[1]~10_combout\,
	sclr => \U2|count[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(1));

-- Location: LCCOMB_X14_Y14_N0
\U2|Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal6~1_combout\ = (!\U2|count\(6) & (\U2|Equal6~0_combout\ & (!\U2|count\(1) & \U2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(6),
	datab => \U2|Equal6~0_combout\,
	datac => \U2|count\(1),
	datad => \U2|Equal0~0_combout\,
	combout => \U2|Equal6~1_combout\);

-- Location: LCCOMB_X13_Y15_N10
\U2|Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector22~1_combout\ = ((!\U2|Equal1~0_combout\ & ((\U2|Equal2~1_combout\) # (\U2|Equal6~1_combout\)))) # (!\U2|s_FSM_state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|Equal1~0_combout\,
	datac => \U2|s_FSM_state.stop~q\,
	datad => \U2|Equal6~1_combout\,
	combout => \U2|Selector22~1_combout\);

-- Location: LCCOMB_X13_Y15_N0
\U2|Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector22~2_combout\ = (\U2|Selector22~0_combout\ & ((\U2|Equal0~2_combout\) # ((!\U2|s_FSM_state.scllo~q\ & \U2|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datab => \U2|Equal0~2_combout\,
	datac => \U2|Selector22~0_combout\,
	datad => \U2|Selector22~1_combout\,
	combout => \U2|Selector22~2_combout\);

-- Location: LCCOMB_X14_Y16_N2
\U2|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector24~0_combout\ = ((\U2|Equal0~2_combout\) # (\U2|Equal6~1_combout\)) # (!\U2|s_FSM_state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.stop~q\,
	datac => \U2|Equal0~2_combout\,
	datad => \U2|Equal6~1_combout\,
	combout => \U2|Selector24~0_combout\);

-- Location: LCCOMB_X13_Y16_N16
\U2|sda~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|sda~2_combout\ = (\U2|Selector22~2_combout\ & (\U2|sda~1_combout\ & ((\U2|Selector24~0_combout\)))) # (!\U2|Selector22~2_combout\ & (((\U2|sda~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|sda~1_combout\,
	datab => \U2|Selector22~2_combout\,
	datac => \U2|sda~en_q\,
	datad => \U2|Selector24~0_combout\,
	combout => \U2|sda~2_combout\);

-- Location: FF_X13_Y16_N17
\U2|sda~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|sda~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|sda~en_q\);

-- Location: IOIBUF_X0_Y11_N15
\CLK_32~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_32,
	o => \CLK_32~input_o\);

-- Location: LCCOMB_X19_Y12_N8
\U1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~2_combout\ = (\U1|vcs\(1) & (!\U1|Add1~1\)) # (!\U1|vcs\(1) & ((\U1|Add1~1\) # (GND)))
-- \U1|Add1~3\ = CARRY((!\U1|Add1~1\) # (!\U1|vcs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(1),
	datad => VCC,
	cin => \U1|Add1~1\,
	combout => \U1|Add1~2_combout\,
	cout => \U1|Add1~3\);

-- Location: LCCOMB_X19_Y12_N10
\U1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~4_combout\ = (\U1|vcs\(2) & (\U1|Add1~3\ $ (GND))) # (!\U1|vcs\(2) & (!\U1|Add1~3\ & VCC))
-- \U1|Add1~5\ = CARRY((\U1|vcs\(2) & !\U1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(2),
	datad => VCC,
	cin => \U1|Add1~3\,
	combout => \U1|Add1~4_combout\,
	cout => \U1|Add1~5\);

-- Location: LCCOMB_X19_Y12_N4
\U1|vcs~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|vcs~1_combout\ = (!\U1|Equal1~2_combout\ & \U1|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal1~2_combout\,
	datad => \U1|Add1~4_combout\,
	combout => \U1|vcs~1_combout\);

-- Location: LCCOMB_X16_Y13_N4
\U1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|hcs\(0) $ (VCC)
-- \U1|Add0~1\ = CARRY(\U1|hcs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(0),
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: FF_X16_Y13_N5
\U1|hcs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|hcs\(0));

-- Location: LCCOMB_X16_Y13_N6
\U1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|hcs\(1) & (!\U1|Add0~1\)) # (!\U1|hcs\(1) & ((\U1|Add0~1\) # (GND)))
-- \U1|Add0~3\ = CARRY((!\U1|Add0~1\) # (!\U1|hcs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(1),
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: LCCOMB_X16_Y13_N8
\U1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|hcs\(2) & (\U1|Add0~3\ $ (GND))) # (!\U1|hcs\(2) & (!\U1|Add0~3\ & VCC))
-- \U1|Add0~5\ = CARRY((\U1|hcs\(2) & !\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(2),
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: FF_X16_Y13_N9
\U1|hcs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|hcs\(2));

-- Location: LCCOMB_X16_Y13_N10
\U1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|hcs\(3) & (!\U1|Add0~5\)) # (!\U1|hcs\(3) & ((\U1|Add0~5\) # (GND)))
-- \U1|Add0~7\ = CARRY((!\U1|Add0~5\) # (!\U1|hcs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(3),
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: LCCOMB_X16_Y13_N12
\U1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|hcs\(4) & (\U1|Add0~7\ $ (GND))) # (!\U1|hcs\(4) & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|hcs\(4) & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(4),
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: FF_X16_Y13_N13
\U1|hcs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|hcs\(4));

-- Location: LCCOMB_X16_Y13_N14
\U1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|hcs\(5) & (!\U1|Add0~9\)) # (!\U1|hcs\(5) & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|hcs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(5),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: FF_X16_Y13_N7
\U1|hcs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|hcs\(1));

-- Location: LCCOMB_X14_Y15_N12
\U6|colorgen~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|colorgen~1_combout\ = (\U1|hcs\(1) & (\U1|hcs\(2) & \U1|hcs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(1),
	datac => \U1|hcs\(2),
	datad => \U1|hcs\(0),
	combout => \U6|colorgen~1_combout\);

-- Location: LCCOMB_X16_Y16_N4
\U1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\U1|hcs\(3) & (\U1|hcs\(4) & \U6|colorgen~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(3),
	datac => \U1|hcs\(4),
	datad => \U6|colorgen~1_combout\,
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y13_N0
\U1|hcs~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|hcs~0_combout\ = (\U1|Add0~10_combout\ & (((\U1|hcs\(7)) # (!\U1|Equal0~0_combout\)) # (!\U1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~1_combout\,
	datab => \U1|hcs\(7),
	datac => \U1|Add0~10_combout\,
	datad => \U1|Equal0~0_combout\,
	combout => \U1|hcs~0_combout\);

-- Location: FF_X16_Y13_N1
\U1|hcs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|hcs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|hcs\(5));

-- Location: LCCOMB_X16_Y13_N16
\U1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|hcs\(6) & (\U1|Add0~11\ $ (GND))) # (!\U1|hcs\(6) & (!\U1|Add0~11\ & VCC))
-- \U1|Add0~13\ = CARRY((\U1|hcs\(6) & !\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(6),
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: FF_X16_Y13_N17
\U1|hcs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|hcs\(6));

-- Location: LCCOMB_X16_Y13_N18
\U1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|hcs\(7) & (!\U1|Add0~13\)) # (!\U1|hcs\(7) & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|hcs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(7),
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: FF_X16_Y13_N19
\U1|hcs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|hcs\(7));

-- Location: LCCOMB_X16_Y13_N20
\U1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|hcs\(8) & (\U1|Add0~15\ $ (GND))) # (!\U1|hcs\(8) & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|hcs\(8) & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(8),
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: LCCOMB_X16_Y13_N28
\U1|hcs~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|hcs~2_combout\ = (\U1|Add0~16_combout\ & (((\U1|hcs\(7)) # (!\U1|Equal0~1_combout\)) # (!\U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U1|Add0~16_combout\,
	datac => \U1|Equal0~1_combout\,
	datad => \U1|hcs\(7),
	combout => \U1|hcs~2_combout\);

-- Location: FF_X16_Y13_N29
\U1|hcs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|hcs~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|hcs\(8));

-- Location: LCCOMB_X16_Y13_N22
\U1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = \U1|hcs\(9) $ (\U1|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(9),
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\);

-- Location: LCCOMB_X16_Y13_N30
\U1|hcs~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|hcs~1_combout\ = (\U1|Add0~18_combout\ & (((\U1|hcs\(7)) # (!\U1|Equal0~0_combout\)) # (!\U1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~1_combout\,
	datab => \U1|hcs\(7),
	datac => \U1|Add0~18_combout\,
	datad => \U1|Equal0~0_combout\,
	combout => \U1|hcs~1_combout\);

-- Location: FF_X16_Y13_N31
\U1|hcs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|hcs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|hcs\(9));

-- Location: LCCOMB_X16_Y13_N26
\U1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (\U1|hcs\(8) & (!\U1|hcs\(6) & (\U1|hcs\(9) & !\U1|hcs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(8),
	datab => \U1|hcs\(6),
	datac => \U1|hcs\(9),
	datad => \U1|hcs\(5),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y13_N24
\U1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (!\U1|hcs\(7) & (\U1|Equal0~1_combout\ & \U1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(7),
	datac => \U1|Equal0~1_combout\,
	datad => \U1|Equal0~0_combout\,
	combout => \U1|Equal0~2_combout\);

-- Location: FF_X16_Y13_N25
\U1|vsenable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vsenable~q\);

-- Location: FF_X19_Y12_N5
\U1|vcs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|vcs~1_combout\,
	ena => \U1|vsenable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vcs\(2));

-- Location: LCCOMB_X19_Y12_N12
\U1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~6_combout\ = (\U1|vcs\(3) & (!\U1|Add1~5\)) # (!\U1|vcs\(3) & ((\U1|Add1~5\) # (GND)))
-- \U1|Add1~7\ = CARRY((!\U1|Add1~5\) # (!\U1|vcs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(3),
	datad => VCC,
	cin => \U1|Add1~5\,
	combout => \U1|Add1~6_combout\,
	cout => \U1|Add1~7\);

-- Location: LCCOMB_X19_Y12_N14
\U1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~8_combout\ = (\U1|vcs\(4) & (\U1|Add1~7\ $ (GND))) # (!\U1|vcs\(4) & (!\U1|Add1~7\ & VCC))
-- \U1|Add1~9\ = CARRY((\U1|vcs\(4) & !\U1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(4),
	datad => VCC,
	cin => \U1|Add1~7\,
	combout => \U1|Add1~8_combout\,
	cout => \U1|Add1~9\);

-- Location: FF_X19_Y12_N15
\U1|vcs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add1~8_combout\,
	ena => \U1|vsenable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vcs\(4));

-- Location: LCCOMB_X19_Y12_N16
\U1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~10_combout\ = (\U1|vcs\(5) & (!\U1|Add1~9\)) # (!\U1|vcs\(5) & ((\U1|Add1~9\) # (GND)))
-- \U1|Add1~11\ = CARRY((!\U1|Add1~9\) # (!\U1|vcs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(5),
	datad => VCC,
	cin => \U1|Add1~9\,
	combout => \U1|Add1~10_combout\,
	cout => \U1|Add1~11\);

-- Location: FF_X19_Y12_N17
\U1|vcs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add1~10_combout\,
	ena => \U1|vsenable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vcs\(5));

-- Location: LCCOMB_X19_Y12_N18
\U1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~12_combout\ = (\U1|vcs\(6) & (\U1|Add1~11\ $ (GND))) # (!\U1|vcs\(6) & (!\U1|Add1~11\ & VCC))
-- \U1|Add1~13\ = CARRY((\U1|vcs\(6) & !\U1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(6),
	datad => VCC,
	cin => \U1|Add1~11\,
	combout => \U1|Add1~12_combout\,
	cout => \U1|Add1~13\);

-- Location: FF_X19_Y12_N19
\U1|vcs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add1~12_combout\,
	ena => \U1|vsenable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vcs\(6));

-- Location: LCCOMB_X19_Y12_N20
\U1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~14_combout\ = (\U1|vcs\(7) & (!\U1|Add1~13\)) # (!\U1|vcs\(7) & ((\U1|Add1~13\) # (GND)))
-- \U1|Add1~15\ = CARRY((!\U1|Add1~13\) # (!\U1|vcs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(7),
	datad => VCC,
	cin => \U1|Add1~13\,
	combout => \U1|Add1~14_combout\,
	cout => \U1|Add1~15\);

-- Location: FF_X19_Y12_N21
\U1|vcs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add1~14_combout\,
	ena => \U1|vsenable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vcs\(7));

-- Location: LCCOMB_X19_Y12_N22
\U1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~16_combout\ = (\U1|vcs\(8) & (\U1|Add1~15\ $ (GND))) # (!\U1|vcs\(8) & (!\U1|Add1~15\ & VCC))
-- \U1|Add1~17\ = CARRY((\U1|vcs\(8) & !\U1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(8),
	datad => VCC,
	cin => \U1|Add1~15\,
	combout => \U1|Add1~16_combout\,
	cout => \U1|Add1~17\);

-- Location: LCCOMB_X19_Y12_N24
\U1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~18_combout\ = \U1|Add1~17\ $ (\U1|vcs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|vcs\(9),
	cin => \U1|Add1~17\,
	combout => \U1|Add1~18_combout\);

-- Location: LCCOMB_X17_Y11_N0
\U1|vcs~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|vcs~0_combout\ = (!\U1|Equal1~2_combout\ & \U1|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datac => \U1|Add1~18_combout\,
	combout => \U1|vcs~0_combout\);

-- Location: FF_X17_Y11_N1
\U1|vcs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|vcs~0_combout\,
	ena => \U1|vsenable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vcs\(9));

-- Location: FF_X19_Y12_N23
\U1|vcs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add1~16_combout\,
	ena => \U1|vsenable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vcs\(8));

-- Location: LCCOMB_X18_Y12_N0
\U1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal1~0_combout\ = (!\U1|vcs\(6) & (!\U1|vcs\(8) & (!\U1|vcs\(7) & !\U1|vcs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(6),
	datab => \U1|vcs\(8),
	datac => \U1|vcs\(7),
	datad => \U1|vcs\(5),
	combout => \U1|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y12_N26
\U1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal1~2_combout\ = (\U1|Equal1~1_combout\ & (\U1|vcs\(9) & (!\U1|vcs\(4) & \U1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~1_combout\,
	datab => \U1|vcs\(9),
	datac => \U1|vcs\(4),
	datad => \U1|Equal1~0_combout\,
	combout => \U1|Equal1~2_combout\);

-- Location: LCCOMB_X19_Y12_N6
\U1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~0_combout\ = \U1|vcs\(0) $ (VCC)
-- \U1|Add1~1\ = CARRY(\U1|vcs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(0),
	datad => VCC,
	combout => \U1|Add1~0_combout\,
	cout => \U1|Add1~1\);

-- Location: LCCOMB_X17_Y11_N26
\U1|vcs~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|vcs~3_combout\ = (!\U1|Equal1~2_combout\ & \U1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal1~2_combout\,
	datad => \U1|Add1~0_combout\,
	combout => \U1|vcs~3_combout\);

-- Location: FF_X17_Y11_N27
\U1|vcs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|vcs~3_combout\,
	ena => \U1|vsenable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vcs\(0));

-- Location: FF_X19_Y12_N9
\U1|vcs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add1~2_combout\,
	ena => \U1|vsenable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vcs\(1));

-- Location: LCCOMB_X18_Y16_N10
\Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\U1|vcs\(1) & (!\Add10~1\)) # (!\U1|vcs\(1) & ((\Add10~1\) # (GND)))
-- \Add10~3\ = CARRY((!\Add10~1\) # (!\U1|vcs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(1),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X21_Y14_N14
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = \Div0|auto_generated|divider|quotient[0]~10_combout\ $ (VCC)
-- \Add8~1\ = CARRY(\Div0|auto_generated|divider|quotient[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[0]~10_combout\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X21_Y14_N16
\Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Div0|auto_generated|divider|quotient[1]~9_combout\ & (!\Add8~1\)) # (!\Div0|auto_generated|divider|quotient[1]~9_combout\ & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!\Div0|auto_generated|divider|quotient[1]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[1]~9_combout\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X19_Y14_N20
\Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (\Add10~0_combout\ & (\Add8~0_combout\ & (\Add10~2_combout\ $ (!\Add8~2_combout\)))) # (!\Add10~0_combout\ & (!\Add8~0_combout\ & (\Add10~2_combout\ $ (!\Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \Add10~2_combout\,
	datac => \Add8~0_combout\,
	datad => \Add8~2_combout\,
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X18_Y16_N12
\Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (\U1|vcs\(2) & (\Add10~3\ $ (GND))) # (!\U1|vcs\(2) & (!\Add10~3\ & VCC))
-- \Add10~5\ = CARRY((\U1|vcs\(2) & !\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(2),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X18_Y16_N16
\Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (\U1|vcs\(4) & (\Add10~7\ $ (GND))) # (!\U1|vcs\(4) & (!\Add10~7\ & VCC))
-- \Add10~9\ = CARRY((\U1|vcs\(4) & !\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(4),
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: CLKCTRL_G4
\CLK_32~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_32~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_32~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y6_N15
\AD_data[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_data(11),
	o => \AD_data[11]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\AD_data[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_data(10),
	o => \AD_data[10]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\AD_data[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_data(9),
	o => \AD_data[9]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\AD_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_data(5),
	o => \AD_data[5]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\AD_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_data(6),
	o => \AD_data[6]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\AD_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_data(7),
	o => \AD_data[7]~input_o\);

-- Location: LCCOMB_X18_Y17_N0
\U5|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|LessThan0~0_combout\ = (!\AD_data[8]~input_o\ & (!\AD_data[5]~input_o\ & (!\AD_data[6]~input_o\ & !\AD_data[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD_data[8]~input_o\,
	datab => \AD_data[5]~input_o\,
	datac => \AD_data[6]~input_o\,
	datad => \AD_data[7]~input_o\,
	combout => \U5|LessThan0~0_combout\);

-- Location: LCCOMB_X18_Y17_N6
\U5|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|LessThan0~1_combout\ = (!\AD_data[10]~input_o\ & (!\AD_data[9]~input_o\ & \U5|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AD_data[10]~input_o\,
	datac => \AD_data[9]~input_o\,
	datad => \U5|LessThan0~0_combout\,
	combout => \U5|LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y17_N8
\U5|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Selector3~0_combout\ = (\U5|s_state.belowLevel~q\ & (\AD_data[11]~input_o\ & (!\U5|s_state.triggered~q\ & !\U5|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|s_state.belowLevel~q\,
	datab => \AD_data[11]~input_o\,
	datac => \U5|s_state.triggered~q\,
	datad => \U5|LessThan0~1_combout\,
	combout => \U5|Selector3~0_combout\);

-- Location: FF_X18_Y17_N9
\U5|s_state.triggered\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \U5|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|s_state.triggered~q\);

-- Location: LCCOMB_X19_Y16_N24
\U5|o_triggered~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|o_triggered~feeder_combout\ = \U5|s_state.triggered~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U5|s_state.triggered~q\,
	combout => \U5|o_triggered~feeder_combout\);

-- Location: FF_X19_Y16_N25
\U5|o_triggered\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \U5|o_triggered~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|o_triggered~q\);

-- Location: LCCOMB_X19_Y16_N28
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Equal0~2_combout\ & \s_mainFSM_state.writeSamples~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => \s_mainFSM_state.writeSamples~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X19_Y16_N29
\s_mainFSM_state.readSamples\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_mainFSM_state.readSamples~q\);

-- Location: LCCOMB_X19_Y16_N18
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\s_mainFSM_state.readSamples~q\ & ((\U5|o_triggered~q\) # (\s_mainFSM_state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|o_triggered~q\,
	datac => \s_mainFSM_state.start~q\,
	datad => \s_mainFSM_state.readSamples~q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X19_Y16_N19
\s_mainFSM_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_mainFSM_state.start~q\);

-- Location: LCCOMB_X19_Y16_N14
\Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Equal0~2_combout\ & (!\s_mainFSM_state.start~q\ & ((\U5|o_triggered~q\)))) # (!\Equal0~2_combout\ & ((\s_mainFSM_state.writeSamples~q\) # ((!\s_mainFSM_state.start~q\ & \U5|o_triggered~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \s_mainFSM_state.start~q\,
	datac => \s_mainFSM_state.writeSamples~q\,
	datad => \U5|o_triggered~q\,
	combout => \Selector11~1_combout\);

-- Location: FF_X19_Y16_N15
\s_mainFSM_state.writeSamples\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_mainFSM_state.writeSamples~q\);

-- Location: LCCOMB_X19_Y16_N16
\s_ram_write_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_ram_write_en~0_combout\ = (\Selector13~0_combout\ & (!\s_mainFSM_state.writeSamples~q\)) # (!\Selector13~0_combout\ & ((\s_ram_write_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \s_mainFSM_state.writeSamples~q\,
	datac => \s_ram_write_en~q\,
	combout => \s_ram_write_en~0_combout\);

-- Location: FF_X19_Y16_N17
s_ram_write_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \s_ram_write_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_ram_write_en~q\);

-- Location: IOIBUF_X0_Y18_N15
\AD_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_data(0),
	o => \AD_data[0]~input_o\);

-- Location: LCCOMB_X19_Y17_N10
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = addr_write(0) $ (GND)
-- \Add0~1\ = CARRY(!addr_write(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X19_Y16_N22
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\s_mainFSM_state.readSamples~q\ & (addr_write(0) & ((!\Add0~0_combout\) # (!\s_mainFSM_state.writeSamples~q\)))) # (!\s_mainFSM_state.readSamples~q\ & (((!\Add0~0_combout\)) # (!\s_mainFSM_state.writeSamples~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \s_mainFSM_state.writeSamples~q\,
	datac => addr_write(0),
	datad => \Add0~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X19_Y16_N23
\addr_write[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_write(0));

-- Location: LCCOMB_X19_Y15_N12
\addr_write[0]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_write[0]~_wirecell_combout\ = !addr_write(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => addr_write(0),
	combout => \addr_write[0]~_wirecell_combout\);

-- Location: LCCOMB_X19_Y16_N8
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add0~2_combout\ & ((\s_mainFSM_state.writeSamples~q\) # ((addr_write(1) & \s_mainFSM_state.readSamples~q\)))) # (!\Add0~2_combout\ & (((addr_write(1) & \s_mainFSM_state.readSamples~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \s_mainFSM_state.writeSamples~q\,
	datac => addr_write(1),
	datad => \s_mainFSM_state.readSamples~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X19_Y16_N9
\addr_write[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_write(1));

-- Location: LCCOMB_X19_Y16_N10
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Add0~4_combout\ & ((\s_mainFSM_state.writeSamples~q\) # ((addr_write(2) & \s_mainFSM_state.readSamples~q\)))) # (!\Add0~4_combout\ & (((addr_write(2) & \s_mainFSM_state.readSamples~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \s_mainFSM_state.writeSamples~q\,
	datac => addr_write(2),
	datad => \s_mainFSM_state.readSamples~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X19_Y16_N11
\addr_write[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_write(2));

-- Location: LCCOMB_X19_Y17_N16
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (addr_write(3) & (!\Add0~5\)) # (!addr_write(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!addr_write(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_write(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y17_N8
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Selector11~0_combout\ & ((\Add0~6_combout\) # ((\s_mainFSM_state.readSamples~q\ & addr_write(3))))) # (!\Selector11~0_combout\ & (\s_mainFSM_state.readSamples~q\ & (addr_write(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => \s_mainFSM_state.readSamples~q\,
	datac => addr_write(3),
	datad => \Add0~6_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X19_Y17_N9
\addr_write[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_write(3));

-- Location: LCCOMB_X19_Y16_N0
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Add0~8_combout\ & ((\s_mainFSM_state.writeSamples~q\) # ((addr_write(4) & \s_mainFSM_state.readSamples~q\)))) # (!\Add0~8_combout\ & (((addr_write(4) & \s_mainFSM_state.readSamples~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \s_mainFSM_state.writeSamples~q\,
	datac => addr_write(4),
	datad => \s_mainFSM_state.readSamples~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X19_Y16_N1
\addr_write[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_write(4));

-- Location: LCCOMB_X19_Y17_N20
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (addr_write(5) & (!\Add0~9\)) # (!addr_write(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!addr_write(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X19_Y17_N6
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector11~0_combout\ & ((\Add0~10_combout\) # ((\s_mainFSM_state.readSamples~q\ & addr_write(5))))) # (!\Selector11~0_combout\ & (\s_mainFSM_state.readSamples~q\ & (addr_write(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => \s_mainFSM_state.readSamples~q\,
	datac => addr_write(5),
	datad => \Add0~10_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X19_Y17_N7
\addr_write[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_write(5));

-- Location: LCCOMB_X19_Y16_N20
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\Equal0~2_combout\ & \s_mainFSM_state.writeSamples~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => \s_mainFSM_state.writeSamples~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X19_Y17_N0
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Add0~12_combout\ & ((\Selector11~0_combout\) # ((\s_mainFSM_state.readSamples~q\ & addr_write(6))))) # (!\Add0~12_combout\ & (\s_mainFSM_state.readSamples~q\ & (addr_write(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \s_mainFSM_state.readSamples~q\,
	datac => addr_write(6),
	datad => \Selector11~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X19_Y17_N1
\addr_write[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_write(6));

-- Location: LCCOMB_X19_Y17_N24
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (addr_write(7) & (!\Add0~13\)) # (!addr_write(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!addr_write(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_write(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X19_Y17_N2
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector11~0_combout\ & ((\Add0~14_combout\) # ((\s_mainFSM_state.readSamples~q\ & addr_write(7))))) # (!\Selector11~0_combout\ & (\s_mainFSM_state.readSamples~q\ & (addr_write(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => \s_mainFSM_state.readSamples~q\,
	datac => addr_write(7),
	datad => \Add0~14_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X19_Y17_N3
\addr_write[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_write(7));

-- Location: LCCOMB_X19_Y17_N4
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Add0~16_combout\ & ((\Selector11~0_combout\) # ((\s_mainFSM_state.readSamples~q\ & addr_write(8))))) # (!\Add0~16_combout\ & (\s_mainFSM_state.readSamples~q\ & (addr_write(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \s_mainFSM_state.readSamples~q\,
	datac => addr_write(8),
	datad => \Selector11~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X19_Y17_N5
\addr_write[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_write(8));

-- Location: LCCOMB_X19_Y17_N28
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = addr_write(9) $ (\Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X19_Y17_N30
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Selector11~0_combout\ & ((\Add0~18_combout\) # ((\s_mainFSM_state.readSamples~q\ & addr_write(9))))) # (!\Selector11~0_combout\ & (\s_mainFSM_state.readSamples~q\ & (addr_write(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => \s_mainFSM_state.readSamples~q\,
	datac => addr_write(9),
	datad => \Add0~18_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X19_Y17_N31
\addr_write[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_write(9));

-- Location: LCCOMB_X14_Y12_N10
\U1|visible_img~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|visible_img~0_combout\ = (\U1|hcs\(9) & (((\U1|LessThan3~0_combout\ & !\U1|hcs\(7))) # (!\U1|hcs\(8)))) # (!\U1|hcs\(9) & ((\U1|hcs\(8)) # ((!\U1|LessThan3~0_combout\ & \U1|hcs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan3~0_combout\,
	datab => \U1|hcs\(9),
	datac => \U1|hcs\(7),
	datad => \U1|hcs\(8),
	combout => \U1|visible_img~0_combout\);

-- Location: LCCOMB_X18_Y12_N30
\U1|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan4~1_combout\ = ((\U1|LessThan4~0_combout\ & (!\U1|vcs\(4) & \U1|Equal1~0_combout\))) # (!\U1|vcs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan4~0_combout\,
	datab => \U1|vcs\(9),
	datac => \U1|vcs\(4),
	datad => \U1|Equal1~0_combout\,
	combout => \U1|LessThan4~1_combout\);

-- Location: LCCOMB_X19_Y12_N30
\U1|vcs~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|vcs~2_combout\ = (!\U1|Equal1~2_combout\ & \U1|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal1~2_combout\,
	datad => \U1|Add1~6_combout\,
	combout => \U1|vcs~2_combout\);

-- Location: FF_X19_Y12_N31
\U1|vcs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|vcs~2_combout\,
	ena => \U1|vsenable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|vcs\(3));

-- Location: LCCOMB_X17_Y11_N28
\U1|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan4~0_combout\ = (!\U1|vcs\(3) & (!\U1|vcs\(2) & ((!\U1|vcs\(0)) # (!\U1|vcs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(1),
	datab => \U1|vcs\(3),
	datac => \U1|vcs\(0),
	datad => \U1|vcs\(2),
	combout => \U1|LessThan4~0_combout\);

-- Location: LCCOMB_X17_Y11_N30
\U1|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan5~0_combout\ = (!\U1|vcs\(8) & (!\U1|vcs\(9) & (!\U1|vcs\(6) & !\U1|vcs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(8),
	datab => \U1|vcs\(9),
	datac => \U1|vcs\(6),
	datad => \U1|vcs\(7),
	combout => \U1|LessThan5~0_combout\);

-- Location: LCCOMB_X18_Y11_N20
\U1|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan5~1_combout\ = (\U1|LessThan5~0_combout\ & (((!\U1|vcs\(4) & \U1|LessThan4~0_combout\)) # (!\U1|vcs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(4),
	datab => \U1|LessThan4~0_combout\,
	datac => \U1|vcs\(5),
	datad => \U1|LessThan5~0_combout\,
	combout => \U1|LessThan5~1_combout\);

-- Location: LCCOMB_X18_Y11_N30
\U1|visible_img~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|visible_img~1_combout\ = (\U1|visible_img~0_combout\ & (\U1|LessThan4~1_combout\ & !\U1|LessThan5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|visible_img~0_combout\,
	datac => \U1|LessThan4~1_combout\,
	datad => \U1|LessThan5~1_combout\,
	combout => \U1|visible_img~1_combout\);

-- Location: LCCOMB_X14_Y12_N18
\Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (\U1|hcs\(6) & ((GND) # (!\Add13~3\))) # (!\U1|hcs\(6) & (\Add13~3\ $ (GND)))
-- \Add13~5\ = CARRY((\U1|hcs\(6)) # (!\Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(6),
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X14_Y12_N20
\Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (\U1|hcs\(7) & (!\Add13~5\)) # (!\U1|hcs\(7) & ((\Add13~5\) # (GND)))
-- \Add13~7\ = CARRY((!\Add13~5\) # (!\U1|hcs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(7),
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X14_Y12_N22
\Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = (\U1|hcs\(8) & ((GND) # (!\Add13~7\))) # (!\U1|hcs\(8) & (\Add13~7\ $ (GND)))
-- \Add13~9\ = CARRY((\U1|hcs\(8)) # (!\Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(8),
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X14_Y12_N24
\Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = \U1|hcs\(9) $ (!\Add13~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(9),
	cin => \Add13~9\,
	combout => \Add13~10_combout\);

-- Location: LCCOMB_X16_Y13_N2
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ((\U1|hcs\(4)) # ((!\U1|hcs\(2) & !\U1|hcs\(1)))) # (!\U1|hcs\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(3),
	datab => \U1|hcs\(4),
	datac => \U1|hcs\(2),
	datad => \U1|hcs\(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X14_Y12_N0
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (((\LessThan2~0_combout\) # (!\Add13~4_combout\)) # (!\Add13~6_combout\)) # (!\Add13~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~2_combout\,
	datab => \Add13~6_combout\,
	datac => \Add13~4_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X16_Y14_N18
\addr_read[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[0]~12_combout\ = (\Add13~8_combout\) # ((\Add13~10_combout\) # (!\LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~8_combout\,
	datac => \Add13~10_combout\,
	datad => \LessThan2~1_combout\,
	combout => \addr_read[0]~12_combout\);

-- Location: LCCOMB_X16_Y14_N4
\addr_read[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[0]~13_combout\ = (\U1|visible_img~1_combout\ & ((\SW~input_o\ & ((\addr_read[0]~12_combout\))) # (!\SW~input_o\ & (\U1|hcs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~input_o\,
	datab => \U1|visible_img~1_combout\,
	datac => \U1|hcs\(0),
	datad => \addr_read[0]~12_combout\,
	combout => \addr_read[0]~13_combout\);

-- Location: LCCOMB_X16_Y14_N10
\addr_read[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[1]~14_combout\ = (\U1|visible_img~1_combout\ & ((\SW~input_o\ & ((\addr_read[0]~12_combout\))) # (!\SW~input_o\ & (\U1|hcs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(1),
	datab => \U1|visible_img~1_combout\,
	datac => \SW~input_o\,
	datad => \addr_read[0]~12_combout\,
	combout => \addr_read[1]~14_combout\);

-- Location: LCCOMB_X12_Y13_N0
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\ = \U1|hcs\(3) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\ = CARRY(\U1|hcs\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(3),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\);

-- Location: LCCOMB_X12_Y13_N2
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\ = (\U1|hcs\(4) & (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\)) # (!\U1|hcs\(4) & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ = CARRY((\U1|hcs\(4) & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\);

-- Location: LCCOMB_X12_Y13_N4
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\ = (\Add13~2_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ $ (GND))) # (!\Add13~2_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\ = CARRY((\Add13~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~2_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\);

-- Location: LCCOMB_X12_Y13_N10
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\ = (\Add13~8_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\)) # (!\Add13~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\) 
-- # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\) # (!\Add13~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add13~8_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\);

-- Location: LCCOMB_X12_Y13_N14
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\);

-- Location: LCCOMB_X12_Y12_N4
\Mod0|auto_generated|divider|divider|StageOut[117]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[117]~56_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Add13~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Add13~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[117]~56_combout\);

-- Location: LCCOMB_X12_Y13_N26
\Mod0|auto_generated|divider|divider|StageOut[116]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[116]~59_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[116]~59_combout\);

-- Location: LCCOMB_X12_Y14_N10
\Mod0|auto_generated|divider|divider|StageOut[115]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[115]~61_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[115]~61_combout\);

-- Location: LCCOMB_X12_Y13_N16
\Mod0|auto_generated|divider|divider|StageOut[114]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[114]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Add13~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \Add13~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[114]~62_combout\);

-- Location: LCCOMB_X13_Y12_N22
\Mod0|auto_generated|divider|divider|StageOut[113]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[113]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[113]~65_combout\);

-- Location: LCCOMB_X12_Y14_N24
\Mod0|auto_generated|divider|divider|StageOut[112]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[112]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & !\U1|hcs\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \U1|hcs\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[112]~66_combout\);

-- Location: LCCOMB_X12_Y12_N2
\Mod0|auto_generated|divider|divider|StageOut[111]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[111]~68_combout\ = (\U1|hcs\(3) & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[111]~68_combout\);

-- Location: LCCOMB_X13_Y12_N12
\Mod0|auto_generated|divider|divider|StageOut[110]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[110]~70_combout\ = (\U1|hcs\(2) & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|hcs\(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[110]~70_combout\);

-- Location: LCCOMB_X12_Y12_N14
\Mod0|auto_generated|divider|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[110]~71_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[110]~70_combout\)))
-- \Mod0|auto_generated|divider|divider|op_1~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[110]~71_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[110]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[110]~71_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[110]~70_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X12_Y12_N20
\Mod0|auto_generated|divider|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[113]~64_combout\ & (((!\Mod0|auto_generated|divider|divider|op_1~5\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[113]~64_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[113]~65_combout\ & (!\Mod0|auto_generated|divider|divider|op_1~5\)) # (!\Mod0|auto_generated|divider|divider|StageOut[113]~65_combout\ & ((\Mod0|auto_generated|divider|divider|op_1~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|op_1~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[113]~64_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[113]~65_combout\)) # (!\Mod0|auto_generated|divider|divider|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[113]~64_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[113]~65_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~5\,
	combout => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~7\);

-- Location: LCCOMB_X12_Y12_N22
\Mod0|auto_generated|divider|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~8_combout\ = (\Mod0|auto_generated|divider|divider|op_1~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[114]~63_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[114]~62_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_1~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[114]~63_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[114]~62_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_1~9\ = CARRY((!\Mod0|auto_generated|divider|divider|op_1~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[114]~63_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[114]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[114]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[114]~62_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~7\,
	combout => \Mod0|auto_generated|divider|divider|op_1~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~9\);

-- Location: LCCOMB_X12_Y12_N24
\Mod0|auto_generated|divider|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[115]~60_combout\ & (((!\Mod0|auto_generated|divider|divider|op_1~9\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[115]~60_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[115]~61_combout\ & (!\Mod0|auto_generated|divider|divider|op_1~9\)) # (!\Mod0|auto_generated|divider|divider|StageOut[115]~61_combout\ & ((\Mod0|auto_generated|divider|divider|op_1~9\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|op_1~11\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[115]~60_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[115]~61_combout\)) # (!\Mod0|auto_generated|divider|divider|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[115]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[115]~61_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~9\,
	combout => \Mod0|auto_generated|divider|divider|op_1~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~11\);

-- Location: LCCOMB_X12_Y12_N26
\Mod0|auto_generated|divider|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~12_combout\ = (\Mod0|auto_generated|divider|divider|op_1~11\ & (((\Mod0|auto_generated|divider|divider|StageOut[116]~58_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[116]~59_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_1~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[116]~58_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[116]~59_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_1~13\ = CARRY((!\Mod0|auto_generated|divider|divider|op_1~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[116]~58_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[116]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[116]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[116]~59_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~11\,
	combout => \Mod0|auto_generated|divider|divider|op_1~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~13\);

-- Location: LCCOMB_X12_Y12_N28
\Mod0|auto_generated|divider|divider|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~14_combout\ = (\Mod0|auto_generated|divider|divider|op_1~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[117]~57_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[117]~56_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_1~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[117]~57_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[117]~56_combout\)))
-- \Mod0|auto_generated|divider|divider|op_1~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[117]~57_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[117]~56_combout\ & !\Mod0|auto_generated|divider|divider|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[117]~57_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[117]~56_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_1~13\,
	combout => \Mod0|auto_generated|divider|divider|op_1~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_1~15\);

-- Location: LCCOMB_X12_Y12_N30
\Mod0|auto_generated|divider|divider|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~16_combout\ = \Mod0|auto_generated|divider|divider|op_1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_1~15\,
	combout => \Mod0|auto_generated|divider|divider|op_1~16_combout\);

-- Location: LCCOMB_X13_Y12_N4
\Mod0|auto_generated|divider|divider|StageOut[108]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[108]~74_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1|hcs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \U1|hcs\(0),
	combout => \Mod0|auto_generated|divider|divider|StageOut[108]~74_combout\);

-- Location: LCCOMB_X13_Y12_N2
\Mod0|auto_generated|divider|divider|StageOut[108]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[108]~73_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1|hcs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \U1|hcs\(0),
	combout => \Mod0|auto_generated|divider|divider|StageOut[108]~73_combout\);

-- Location: LCCOMB_X13_Y12_N20
\Mod0|auto_generated|divider|divider|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~18_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[108]~74_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[108]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[108]~74_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[108]~73_combout\,
	combout => \Mod0|auto_generated|divider|divider|op_1~18_combout\);

-- Location: LCCOMB_X13_Y12_N30
\Mod0|auto_generated|divider|divider|StageOut[121]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[121]~75_combout\ = (!\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \Mod0|auto_generated|divider|divider|op_1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[121]~75_combout\);

-- Location: LCCOMB_X13_Y12_N0
\Mod0|auto_generated|divider|divider|StageOut[121]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[121]~72_combout\ = (\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \U1|hcs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \U1|hcs\(0),
	combout => \Mod0|auto_generated|divider|divider|StageOut[121]~72_combout\);

-- Location: LCCOMB_X13_Y12_N18
\Mod0|auto_generated|divider|divider|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[121]~75_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[121]~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[121]~75_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[121]~72_combout\,
	combout => \Mod0|auto_generated|divider|divider|op_2~0_combout\);

-- Location: LCCOMB_X13_Y12_N8
\Mod0|auto_generated|divider|divider|StageOut[130]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[130]~76_combout\ = (!\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \Mod0|auto_generated|divider|divider|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[130]~76_combout\);

-- Location: LCCOMB_X11_Y12_N4
\Mod0|auto_generated|divider|divider|StageOut[129]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[129]~77_combout\ = (!\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \Mod0|auto_generated|divider|divider|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[129]~77_combout\);

-- Location: LCCOMB_X12_Y14_N28
\Mod0|auto_generated|divider|divider|StageOut[128]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[128]~78_combout\ = (!\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \Mod0|auto_generated|divider|divider|op_1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[128]~78_combout\);

-- Location: LCCOMB_X11_Y12_N10
\Mod0|auto_generated|divider|divider|StageOut[127]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[127]~79_combout\ = (!\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \Mod0|auto_generated|divider|divider|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[127]~79_combout\);

-- Location: LCCOMB_X11_Y12_N12
\Mod0|auto_generated|divider|divider|StageOut[126]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[126]~80_combout\ = (!\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \Mod0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[126]~80_combout\);

-- Location: LCCOMB_X12_Y14_N14
\Mod0|auto_generated|divider|divider|StageOut[125]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[125]~94_combout\ = (\Mod0|auto_generated|divider|divider|op_1~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((!\U1|hcs\(4)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \U1|hcs\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[125]~94_combout\);

-- Location: FF_X16_Y13_N11
\U1|hcs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|hcs\(3));

-- Location: LCCOMB_X12_Y14_N16
\Mod0|auto_generated|divider|divider|StageOut[124]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[124]~95_combout\ = (\Mod0|auto_generated|divider|divider|op_1~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\U1|hcs\(3))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datac => \U1|hcs\(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[124]~95_combout\);

-- Location: LCCOMB_X11_Y12_N30
\Mod0|auto_generated|divider|divider|StageOut[123]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[123]~84_combout\ = (!\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \Mod0|auto_generated|divider|divider|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_1~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[123]~84_combout\);

-- Location: LCCOMB_X13_Y12_N26
\Mod0|auto_generated|divider|divider|StageOut[109]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[109]~87_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1|hcs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \U1|hcs\(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[109]~87_combout\);

-- Location: LCCOMB_X13_Y12_N16
\Mod0|auto_generated|divider|divider|StageOut[109]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[109]~86_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1|hcs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \U1|hcs\(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[109]~86_combout\);

-- Location: LCCOMB_X13_Y12_N24
\Mod0|auto_generated|divider|divider|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_1~20_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[109]~87_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[109]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[109]~87_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[109]~86_combout\,
	combout => \Mod0|auto_generated|divider|divider|op_1~20_combout\);

-- Location: LCCOMB_X13_Y12_N28
\Mod0|auto_generated|divider|divider|StageOut[122]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[122]~88_combout\ = (!\Mod0|auto_generated|divider|divider|op_1~16_combout\ & \Mod0|auto_generated|divider|divider|op_1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[122]~88_combout\);

-- Location: LCCOMB_X11_Y11_N12
\Mod0|auto_generated|divider|divider|op_2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~12_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[127]~92_combout\ & (((!\Mod0|auto_generated|divider|divider|op_2~11\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[127]~92_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[127]~79_combout\ & (!\Mod0|auto_generated|divider|divider|op_2~11\)) # (!\Mod0|auto_generated|divider|divider|StageOut[127]~79_combout\ & ((\Mod0|auto_generated|divider|divider|op_2~11\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|op_2~13\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[127]~92_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[127]~79_combout\)) # (!\Mod0|auto_generated|divider|divider|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[127]~92_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[127]~79_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~11\,
	combout => \Mod0|auto_generated|divider|divider|op_2~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~13\);

-- Location: LCCOMB_X11_Y11_N14
\Mod0|auto_generated|divider|divider|op_2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~14_combout\ = (\Mod0|auto_generated|divider|divider|op_2~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[128]~91_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[128]~78_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~13\ & ((((\Mod0|auto_generated|divider|divider|StageOut[128]~91_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[128]~78_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_2~15\ = CARRY((!\Mod0|auto_generated|divider|divider|op_2~13\ & ((\Mod0|auto_generated|divider|divider|StageOut[128]~91_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[128]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[128]~91_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[128]~78_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~13\,
	combout => \Mod0|auto_generated|divider|divider|op_2~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~15\);

-- Location: LCCOMB_X11_Y11_N16
\Mod0|auto_generated|divider|divider|op_2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~17_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[129]~90_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[129]~77_combout\ & !\Mod0|auto_generated|divider|divider|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[129]~90_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[129]~77_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~15\,
	cout => \Mod0|auto_generated|divider|divider|op_2~17_cout\);

-- Location: LCCOMB_X11_Y11_N18
\Mod0|auto_generated|divider|divider|op_2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~19_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[130]~89_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[130]~76_combout\) # (!\Mod0|auto_generated|divider|divider|op_2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[130]~89_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[130]~76_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_2~17_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~19_cout\);

-- Location: LCCOMB_X11_Y11_N20
\Mod0|auto_generated|divider|divider|op_2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~20_combout\ = !\Mod0|auto_generated|divider|divider|op_2~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_2~19_cout\,
	combout => \Mod0|auto_generated|divider|divider|op_2~20_combout\);

-- Location: LCCOMB_X13_Y12_N14
\addr_read[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[2]~15_combout\ = (\Mod0|auto_generated|divider|divider|op_2~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[121]~75_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[121]~72_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~20_combout\ & (((\Mod0|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[121]~75_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_2~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_2~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[121]~72_combout\,
	combout => \addr_read[2]~15_combout\);

-- Location: LCCOMB_X18_Y11_N4
\addr_read[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[2]~16_combout\ = (\SW~input_o\ & ((\addr_read[0]~12_combout\) # ((\addr_read[2]~15_combout\)))) # (!\SW~input_o\ & (((\U1|hcs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_read[0]~12_combout\,
	datab => \U1|hcs\(2),
	datac => \SW~input_o\,
	datad => \addr_read[2]~15_combout\,
	combout => \addr_read[2]~16_combout\);

-- Location: LCCOMB_X18_Y11_N24
\addr_read[2]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[2]~34_combout\ = (\U1|visible_img~0_combout\ & (\addr_read[2]~16_combout\ & (\U1|LessThan4~1_combout\ & !\U1|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|visible_img~0_combout\,
	datab => \addr_read[2]~16_combout\,
	datac => \U1|LessThan4~1_combout\,
	datad => \U1|LessThan5~1_combout\,
	combout => \addr_read[2]~34_combout\);

-- Location: LCCOMB_X18_Y11_N14
\addr_read[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[3]~35_combout\ = (\addr_read[3]~18_combout\ & (\U1|visible_img~0_combout\ & (\U1|LessThan4~1_combout\ & !\U1|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_read[3]~18_combout\,
	datab => \U1|visible_img~0_combout\,
	datac => \U1|LessThan4~1_combout\,
	datad => \U1|LessThan5~1_combout\,
	combout => \addr_read[3]~35_combout\);

-- Location: LCCOMB_X18_Y11_N16
\addr_read[4]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[4]~36_combout\ = (\addr_read[4]~20_combout\ & (!\U1|LessThan5~1_combout\ & (\U1|LessThan4~1_combout\ & \U1|visible_img~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_read[4]~20_combout\,
	datab => \U1|LessThan5~1_combout\,
	datac => \U1|LessThan4~1_combout\,
	datad => \U1|visible_img~0_combout\,
	combout => \addr_read[4]~36_combout\);

-- Location: LCCOMB_X18_Y11_N18
\addr_read[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[5]~37_combout\ = (\addr_read[5]~22_combout\ & (\U1|visible_img~0_combout\ & (\U1|LessThan4~1_combout\ & !\U1|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_read[5]~22_combout\,
	datab => \U1|visible_img~0_combout\,
	datac => \U1|LessThan4~1_combout\,
	datad => \U1|LessThan5~1_combout\,
	combout => \addr_read[5]~37_combout\);

-- Location: LCCOMB_X18_Y11_N28
\addr_read[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[6]~38_combout\ = (\addr_read[6]~24_combout\ & (!\U1|LessThan5~1_combout\ & (\U1|LessThan4~1_combout\ & \U1|visible_img~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_read[6]~24_combout\,
	datab => \U1|LessThan5~1_combout\,
	datac => \U1|LessThan4~1_combout\,
	datad => \U1|visible_img~0_combout\,
	combout => \addr_read[6]~38_combout\);

-- Location: LCCOMB_X18_Y11_N22
\addr_read[7]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[7]~39_combout\ = (\addr_read[7]~26_combout\ & (!\U1|LessThan5~1_combout\ & (\U1|LessThan4~1_combout\ & \U1|visible_img~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_read[7]~26_combout\,
	datab => \U1|LessThan5~1_combout\,
	datac => \U1|LessThan4~1_combout\,
	datad => \U1|visible_img~0_combout\,
	combout => \addr_read[7]~39_combout\);

-- Location: LCCOMB_X11_Y11_N26
\addr_read[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[8]~27_combout\ = (\Mod0|auto_generated|divider|divider|op_2~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[127]~92_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[127]~79_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_2~20_combout\ & (((\Mod0|auto_generated|divider|divider|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[127]~92_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[127]~79_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_2~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_2~20_combout\,
	combout => \addr_read[8]~27_combout\);

-- Location: LCCOMB_X16_Y14_N8
\addr_read[8]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[8]~28_combout\ = (\SW~input_o\ & ((\addr_read[8]~27_combout\) # ((\Add13~10_combout\) # (!\LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~input_o\,
	datab => \addr_read[8]~27_combout\,
	datac => \Add13~10_combout\,
	datad => \LessThan2~1_combout\,
	combout => \addr_read[8]~28_combout\);

-- Location: LCCOMB_X17_Y14_N14
\addr_read[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[8]~29_combout\ = (\U1|visible_img~1_combout\ & ((\Add13~8_combout\) # (\addr_read[8]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|visible_img~1_combout\,
	datab => \Add13~8_combout\,
	datad => \addr_read[8]~28_combout\,
	combout => \addr_read[8]~29_combout\);

-- Location: LCCOMB_X12_Y14_N4
\Mod0|auto_generated|divider|divider|StageOut[115]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[115]~60_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Add13~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Add13~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[115]~60_combout\);

-- Location: LCCOMB_X12_Y14_N22
\addr_read[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[9]~31_combout\ = (\Mod0|auto_generated|divider|divider|op_1~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[115]~61_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[115]~60_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_1~16_combout\ & (((\Mod0|auto_generated|divider|divider|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[115]~61_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[115]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_1~10_combout\,
	combout => \addr_read[9]~31_combout\);

-- Location: LCCOMB_X16_Y14_N6
\addr_read[9]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[9]~30_combout\ = (\Add13~8_combout\) # ((!\Mod0|auto_generated|divider|divider|op_2~20_combout\ & \Mod0|auto_generated|divider|divider|op_2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_2~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_2~14_combout\,
	combout => \addr_read[9]~30_combout\);

-- Location: LCCOMB_X16_Y14_N0
\addr_read[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[9]~32_combout\ = ((\addr_read[9]~30_combout\) # ((\Mod0|auto_generated|divider|divider|op_2~20_combout\ & \addr_read[9]~31_combout\))) # (!\LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_2~20_combout\,
	datac => \addr_read[9]~31_combout\,
	datad => \addr_read[9]~30_combout\,
	combout => \addr_read[9]~32_combout\);

-- Location: LCCOMB_X16_Y14_N2
\addr_read[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[9]~33_combout\ = (\U1|visible_img~1_combout\ & ((\Add13~10_combout\) # ((\SW~input_o\ & \addr_read[9]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~input_o\,
	datab => \Add13~10_combout\,
	datac => \U1|visible_img~1_combout\,
	datad => \addr_read[9]~32_combout\,
	combout => \addr_read[9]~33_combout\);

-- Location: IOIBUF_X1_Y24_N8
\AD_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_data(1),
	o => \AD_data[1]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\AD_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_data(2),
	o => \AD_data[2]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\AD_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_data(3),
	o => \AD_data[3]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\AD_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_data(4),
	o => \AD_data[4]~input_o\);

-- Location: LCCOMB_X26_Y11_N24
\Mult0|mult_core|romout[0][8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~1_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a3\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a1\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\) # (\U4|ram_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a3\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \Mult0|mult_core|romout[0][8]~1_combout\);

-- Location: LCCOMB_X28_Y11_N2
\Mult0|mult_core|romout[0][7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~6_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a2\ & (((!\U4|ram_rtl_0|auto_generated|ram_block1a3\)))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a2\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a1\ & 
-- ((!\U4|ram_rtl_0|auto_generated|ram_block1a3\))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a1\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\) # (\U4|ram_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \Mult0|mult_core|romout[0][7]~6_combout\);

-- Location: LCCOMB_X28_Y11_N24
\Mult0|mult_core|romout[1][2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][2]~7_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a6\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a5\ & !\U4|ram_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \Mult0|mult_core|romout[1][2]~7_combout\);

-- Location: LCCOMB_X28_Y11_N28
\Mult0|mult_core|romout[1][1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][1]~9_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a5\ $ (\U4|ram_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mult0|mult_core|romout[1][1]~9_combout\);

-- Location: LCCOMB_X28_Y11_N8
\Mult0|mult_core|romout[0][4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][4]~10_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a3\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a2\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a2\ & 
-- ((\U4|ram_rtl_0|auto_generated|ram_block1a1\) # (!\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a3\ & (\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ $ 
-- (((\U4|ram_rtl_0|auto_generated|ram_block1a1\ & \U4|ram_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a3\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Mult0|mult_core|romout[0][4]~10_combout\);

-- Location: LCCOMB_X26_Y11_N0
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a4\ & (\Mult0|mult_core|romout[0][4]~10_combout\ $ (VCC))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a4\ & 
-- (\Mult0|mult_core|romout[0][4]~10_combout\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\U4|ram_rtl_0|auto_generated|ram_block1a4\ & \Mult0|mult_core|romout[0][4]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	datab => \Mult0|mult_core|romout[0][4]~10_combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X26_Y11_N2
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|romout[0][5]~combout\ & ((\Mult0|mult_core|romout[1][1]~9_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult0|mult_core|romout[1][1]~9_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|romout[0][5]~combout\ & ((\Mult0|mult_core|romout[1][1]~9_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[1][1]~9_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|romout[0][5]~combout\ & (!\Mult0|mult_core|romout[1][1]~9_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[0][5]~combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult0|mult_core|romout[1][1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][5]~combout\,
	datab => \Mult0|mult_core|romout[1][1]~9_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X26_Y11_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|romout[0][6]~8_combout\ $ (\Mult0|mult_core|romout[1][2]~7_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[0][6]~8_combout\ & ((\Mult0|mult_core|romout[1][2]~7_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult0|mult_core|romout[0][6]~8_combout\ & (\Mult0|mult_core|romout[1][2]~7_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][6]~8_combout\,
	datab => \Mult0|mult_core|romout[1][2]~7_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X26_Y11_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|romout[1][4]~4_combout\ $ (\Mult0|mult_core|romout[0][8]~1_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|romout[1][4]~4_combout\ & ((\Mult0|mult_core|romout[0][8]~1_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\Mult0|mult_core|romout[1][4]~4_combout\ & (\Mult0|mult_core|romout[0][8]~1_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][4]~4_combout\,
	datab => \Mult0|mult_core|romout[0][8]~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X26_Y11_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|romout[1][5]~combout\ & ((\Mult0|mult_core|romout[0][8]~1_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\Mult0|mult_core|romout[0][8]~1_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\Mult0|mult_core|romout[1][5]~combout\ & ((\Mult0|mult_core|romout[0][8]~1_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|romout[0][8]~1_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|romout[1][5]~combout\ & (!\Mult0|mult_core|romout[0][8]~1_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|romout[1][5]~combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Mult0|mult_core|romout[0][8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][5]~combout\,
	datab => \Mult0|mult_core|romout[0][8]~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X26_Y11_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\Mult0|mult_core|romout[1][6]~3_combout\ $ (\Mult0|mult_core|romout[0][8]~1_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|romout[1][6]~3_combout\ & ((\Mult0|mult_core|romout[0][8]~1_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\Mult0|mult_core|romout[1][6]~3_combout\ & (\Mult0|mult_core|romout[0][8]~1_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][6]~3_combout\,
	datab => \Mult0|mult_core|romout[0][8]~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X26_Y11_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|romout[1][7]~2_combout\ & ((\Mult0|mult_core|romout[0][8]~1_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\Mult0|mult_core|romout[0][8]~1_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\Mult0|mult_core|romout[1][7]~2_combout\ & ((\Mult0|mult_core|romout[0][8]~1_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|romout[0][8]~1_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\Mult0|mult_core|romout[1][7]~2_combout\ & (!\Mult0|mult_core|romout[0][8]~1_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\Mult0|mult_core|romout[1][7]~2_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\Mult0|mult_core|romout[0][8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][7]~2_combout\,
	datab => \Mult0|mult_core|romout[0][8]~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X26_Y11_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = \Mult0|mult_core|romout[1][8]~0_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (!\Mult0|mult_core|romout[0][8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][8]~0_combout\,
	datad => \Mult0|mult_core|romout[0][8]~1_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X25_Y11_N8
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (VCC))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & VCC))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X25_Y11_N10
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|romout[2][1]~17_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\Mult0|mult_core|romout[2][1]~17_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ 
-- & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|romout[2][1]~17_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[2][1]~17_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][1]~17_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X25_Y11_N12
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|romout[2][2]~16_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[2][2]~16_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\Mult0|mult_core|romout[2][2]~16_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][2]~16_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X25_Y11_N14
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|romout[2][3]~15_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\Mult0|mult_core|romout[2][3]~15_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ 
-- & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|romout[2][3]~15_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[2][3]~15_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][3]~15_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X25_Y11_N16
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|romout[2][4]~14_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|romout[2][4]~14_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))) # (!\Mult0|mult_core|romout[2][4]~14_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][4]~14_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X25_Y11_N18
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|romout[2][5]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\Mult0|mult_core|romout[2][5]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|romout[2][5]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|romout[2][5]~combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][5]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: IOIBUF_X0_Y23_N1
\AD_data[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_data(8),
	o => \AD_data[8]~input_o\);

-- Location: LCCOMB_X25_Y11_N0
\Mult0|mult_core|romout[2][8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][8]~11_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a9\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a10\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a11\) # (\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	combout => \Mult0|mult_core|romout[2][8]~11_combout\);

-- Location: LCCOMB_X25_Y11_N22
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|romout[2][7]~12_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\Mult0|mult_core|romout[2][7]~12_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((\Mult0|mult_core|romout[2][7]~12_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|romout[2][7]~12_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][7]~12_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X25_Y11_N26
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ = \Mult0|mult_core|romout[2][8]~11_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ $ 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[2][8]~11_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\);

-- Location: LCCOMB_X28_Y11_N4
\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ = (!\U4|ram_rtl_0|auto_generated|ram_block1a2\ & (!\U4|ram_rtl_0|auto_generated|ram_block1a1\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- !\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\);

-- Location: LCCOMB_X26_Y11_N18
\Div0|auto_generated|divider|my_abs_num|cs2a[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ & ((\Mult0|mult_core|romout[0][3]~18_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)) # (!\Mult0|mult_core|romout[0][3]~18_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & 
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][3]~18_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\);

-- Location: LCCOMB_X26_Y11_N28
\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\);

-- Location: LCCOMB_X26_Y11_N26
\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\);

-- Location: LCCOMB_X25_Y11_N2
\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\);

-- Location: LCCOMB_X25_Y11_N28
\Div0|auto_generated|divider|my_abs_num|cs2a[12]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\);

-- Location: LCCOMB_X24_Y11_N14
\Div0|auto_generated|divider|my_abs_num|cs2a[14]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\))) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\);

-- Location: LCCOMB_X24_Y11_N28
\Div0|auto_generated|divider|my_abs_num|cs2a[13]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[13]~14_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[13]~14_combout\);

-- Location: LCCOMB_X24_Y11_N2
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y11_N6
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X24_Y11_N8
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X24_Y11_N10
\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X23_Y11_N14
\Div0|auto_generated|divider|divider|StageOut[41]~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~272_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~272_combout\);

-- Location: LCCOMB_X22_Y13_N4
\Div0|auto_generated|divider|my_abs_num|cs2a[12]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\)) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\);

-- Location: LCCOMB_X22_Y13_N28
\Div0|auto_generated|divider|divider|StageOut[40]~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~171_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~171_combout\);

-- Location: LCCOMB_X23_Y11_N0
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[40]~170_combout\) # (\Div0|auto_generated|divider|divider|StageOut[40]~171_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[40]~170_combout\) # (\Div0|auto_generated|divider|divider|StageOut[40]~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~170_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[40]~171_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X23_Y11_N2
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[41]~169_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[41]~272_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[41]~169_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[41]~272_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[41]~169_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[41]~272_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~169_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[41]~272_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X23_Y11_N24
\Div0|auto_generated|divider|divider|StageOut[45]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~163_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~163_combout\);

-- Location: LCCOMB_X24_Y11_N18
\Div0|auto_generated|divider|divider|StageOut[44]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~165_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~165_combout\);

-- Location: LCCOMB_X24_Y11_N26
\Div0|auto_generated|divider|divider|StageOut[43]~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~271_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~271_combout\);

-- Location: LCCOMB_X24_Y11_N16
\Div0|auto_generated|divider|divider|StageOut[42]~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~168_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~168_combout\);

-- Location: LCCOMB_X23_Y11_N6
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[43]~166_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[43]~166_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[43]~271_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[43]~271_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[43]~166_combout\ & !\Div0|auto_generated|divider|divider|StageOut[43]~271_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[43]~166_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[43]~271_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X23_Y11_N8
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[44]~164_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[44]~165_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[44]~164_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[44]~165_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[44]~164_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[44]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[44]~164_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[44]~165_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X23_Y11_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X23_Y11_N16
\Div0|auto_generated|divider|divider|StageOut[50]~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~274_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[41]~272_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[41]~272_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~274_combout\);

-- Location: LCCOMB_X22_Y11_N16
\Div0|auto_generated|divider|divider|StageOut[54]~320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~320_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~320_combout\);

-- Location: LCCOMB_X22_Y11_N18
\Div0|auto_generated|divider|divider|StageOut[53]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~173_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~173_combout\);

-- Location: LCCOMB_X22_Y11_N20
\Div0|auto_generated|divider|divider|StageOut[52]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~174_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~174_combout\);

-- Location: LCCOMB_X24_Y11_N22
\Div0|auto_generated|divider|divider|StageOut[51]~322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~322_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~322_combout\);

-- Location: LCCOMB_X23_Y11_N28
\Div0|auto_generated|divider|divider|StageOut[49]~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~178_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~178_combout\);

-- Location: LCCOMB_X22_Y11_N24
\Div0|auto_generated|divider|divider|StageOut[48]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~180_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~180_combout\);

-- Location: LCCOMB_X22_Y11_N2
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[49]~177_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[49]~178_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[49]~177_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[49]~178_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[49]~177_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[49]~178_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~177_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~178_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X22_Y11_N8
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[52]~273_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[52]~174_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[52]~273_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[52]~174_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[52]~273_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[52]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~273_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~174_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X22_Y11_N10
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[53]~321_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~173_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[53]~321_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[53]~173_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[53]~321_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[53]~173_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~321_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~173_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X22_Y11_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[54]~172_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[54]~320_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~172_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~320_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X22_Y11_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X23_Y11_N18
\Div0|auto_generated|divider|divider|StageOut[59]~278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~278_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[50]~274_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[50]~274_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~278_combout\);

-- Location: LCCOMB_X23_Y13_N8
\Div0|auto_generated|divider|divider|StageOut[62]~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[62]~181_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[62]~181_combout\);

-- Location: LCCOMB_X23_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[61]~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~276_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[52]~273_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~273_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~276_combout\);

-- Location: LCCOMB_X23_Y13_N4
\Div0|auto_generated|divider|divider|StageOut[60]~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~277_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[51]~322_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[51]~322_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~277_combout\);

-- Location: LCCOMB_X22_Y11_N22
\Div0|auto_generated|divider|divider|StageOut[58]~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~185_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~185_combout\);

-- Location: LCCOMB_X22_Y13_N6
\Div0|auto_generated|divider|divider|StageOut[57]~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~186_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~186_combout\);

-- Location: LCCOMB_X23_Y12_N26
\Div0|auto_generated|divider|my_abs_num|cs2a[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\)) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\);

-- Location: LCCOMB_X23_Y12_N4
\Div0|auto_generated|divider|divider|StageOut[56]~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~188_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~188_combout\);

-- Location: LCCOMB_X23_Y13_N14
\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[56]~189_combout\) # (\Div0|auto_generated|divider|divider|StageOut[56]~188_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[56]~189_combout\) # (\Div0|auto_generated|divider|divider|StageOut[56]~188_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[56]~189_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[56]~188_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X23_Y13_N16
\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[57]~187_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[57]~186_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[57]~187_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[57]~186_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[57]~187_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[57]~186_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[57]~187_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[57]~186_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X23_Y13_N18
\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[58]~323_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[58]~185_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[58]~323_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[58]~185_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[58]~323_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[58]~185_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[58]~323_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[58]~185_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X23_Y13_N20
\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[59]~184_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[59]~184_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[59]~278_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[59]~278_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[59]~184_combout\ & !\Div0|auto_generated|divider|divider|StageOut[59]~278_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[59]~184_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[59]~278_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X23_Y13_N26
\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[62]~275_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[62]~181_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[62]~275_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[62]~181_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\);

-- Location: LCCOMB_X23_Y13_N28
\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\);

-- Location: LCCOMB_X23_Y13_N10
\Div0|auto_generated|divider|divider|StageOut[68]~281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~281_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[59]~278_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[59]~278_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~281_combout\);

-- Location: LCCOMB_X24_Y13_N16
\Div0|auto_generated|divider|divider|StageOut[70]~279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~279_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[61]~276_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[61]~276_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~279_combout\);

-- Location: LCCOMB_X24_Y13_N18
\Div0|auto_generated|divider|divider|StageOut[69]~280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[69]~280_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[60]~277_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[60]~277_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[69]~280_combout\);

-- Location: LCCOMB_X23_Y13_N6
\Div0|auto_generated|divider|divider|StageOut[68]~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~192_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~192_combout\);

-- Location: LCCOMB_X22_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[67]~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~193_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~193_combout\);

-- Location: LCCOMB_X23_Y12_N24
\Div0|auto_generated|divider|divider|StageOut[66]~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~194_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~194_combout\);

-- Location: LCCOMB_X23_Y12_N8
\Div0|auto_generated|divider|divider|StageOut[65]~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~196_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~196_combout\);

-- Location: LCCOMB_X24_Y12_N0
\Div0|auto_generated|divider|divider|StageOut[64]~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~197_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~197_combout\);

-- Location: LCCOMB_X24_Y13_N0
\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[64]~198_combout\) # (\Div0|auto_generated|divider|divider|StageOut[64]~197_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[64]~198_combout\) # (\Div0|auto_generated|divider|divider|StageOut[64]~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[64]~198_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[64]~197_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X24_Y13_N4
\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[66]~283_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[66]~194_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[66]~283_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[66]~194_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[66]~283_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[66]~194_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[66]~283_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[66]~194_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X24_Y13_N6
\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[67]~282_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[67]~282_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[67]~193_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[67]~193_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[67]~282_combout\ & !\Div0|auto_generated|divider|divider|StageOut[67]~193_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[67]~282_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[67]~193_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X24_Y13_N10
\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[69]~191_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[69]~280_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[69]~191_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[69]~280_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[69]~191_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[69]~280_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[69]~191_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[69]~280_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\);

-- Location: LCCOMB_X24_Y13_N12
\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[70]~190_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[70]~279_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[70]~190_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[70]~279_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\);

-- Location: LCCOMB_X24_Y13_N14
\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\);

-- Location: LCCOMB_X25_Y13_N28
\Div0|auto_generated|divider|divider|StageOut[77]~285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[77]~285_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[68]~281_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[68]~281_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[77]~285_combout\);

-- Location: LCCOMB_X24_Y13_N20
\Div0|auto_generated|divider|divider|StageOut[76]~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[76]~201_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[76]~201_combout\);

-- Location: LCCOMB_X24_Y13_N30
\Div0|auto_generated|divider|divider|StageOut[75]~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~202_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~202_combout\);

-- Location: LCCOMB_X23_Y12_N0
\Div0|auto_generated|divider|divider|StageOut[74]~324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~324_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~324_combout\);

-- Location: LCCOMB_X25_Y14_N24
\Div0|auto_generated|divider|divider|StageOut[73]~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~204_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~204_combout\);

-- Location: LCCOMB_X25_Y14_N8
\Div0|auto_generated|divider|my_abs_num|cs2a[8]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ & 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\)) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\);

-- Location: LCCOMB_X25_Y14_N16
\Div0|auto_generated|divider|divider|StageOut[72]~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~207_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~207_combout\);

-- Location: LCCOMB_X25_Y13_N12
\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[72]~206_combout\) # (\Div0|auto_generated|divider|divider|StageOut[72]~207_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[72]~206_combout\) # (\Div0|auto_generated|divider|divider|StageOut[72]~207_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[72]~206_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[72]~207_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X25_Y13_N14
\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[73]~205_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[73]~204_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[73]~205_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[73]~204_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[73]~205_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[73]~204_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[73]~205_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[73]~204_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X25_Y13_N16
\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[74]~203_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[74]~324_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[74]~203_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[74]~324_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[74]~203_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[74]~324_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[74]~203_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[74]~324_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X25_Y13_N18
\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[75]~287_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[75]~287_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[75]~202_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[75]~202_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[75]~287_combout\ & !\Div0|auto_generated|divider|divider|StageOut[75]~202_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[75]~287_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[75]~202_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X25_Y13_N20
\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[76]~286_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[76]~201_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[76]~286_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[76]~201_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[76]~286_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[76]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[76]~286_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[76]~201_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\);

-- Location: LCCOMB_X25_Y13_N22
\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[77]~200_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[77]~285_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[77]~200_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[77]~285_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[77]~200_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[77]~285_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[77]~200_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[77]~285_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\);

-- Location: LCCOMB_X24_Y13_N24
\Div0|auto_generated|divider|divider|StageOut[78]~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[78]~199_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[78]~199_combout\);

-- Location: LCCOMB_X25_Y13_N24
\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[78]~284_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[78]~199_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[78]~284_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[78]~199_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13_cout\);

-- Location: LCCOMB_X25_Y13_N26
\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\);

-- Location: LCCOMB_X25_Y13_N4
\Div0|auto_generated|divider|divider|StageOut[86]~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~208_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~208_combout\);

-- Location: LCCOMB_X26_Y13_N28
\Div0|auto_generated|divider|divider|StageOut[85]~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~209_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~209_combout\);

-- Location: LCCOMB_X25_Y13_N6
\Div0|auto_generated|divider|divider|StageOut[84]~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~210_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~210_combout\);

-- Location: LCCOMB_X25_Y13_N8
\Div0|auto_generated|divider|divider|StageOut[83]~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[83]~211_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[83]~211_combout\);

-- Location: LCCOMB_X25_Y14_N18
\Div0|auto_generated|divider|divider|StageOut[82]~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~212_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~212_combout\);

-- Location: LCCOMB_X28_Y13_N4
\Div0|auto_generated|divider|divider|StageOut[81]~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~214_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~214_combout\);

-- Location: LCCOMB_X25_Y14_N22
\Div0|auto_generated|divider|divider|StageOut[80]~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[80]~216_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[80]~216_combout\);

-- Location: LCCOMB_X26_Y13_N6
\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[80]~215_combout\) # (\Div0|auto_generated|divider|divider|StageOut[80]~216_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[80]~215_combout\) # (\Div0|auto_generated|divider|divider|StageOut[80]~216_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[80]~215_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[80]~216_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X26_Y13_N10
\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[82]~292_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[82]~212_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[82]~292_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[82]~212_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[82]~292_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[82]~212_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[82]~292_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[82]~212_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X26_Y13_N14
\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[84]~290_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[84]~210_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[84]~290_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[84]~210_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[84]~290_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[84]~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[84]~290_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[84]~210_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\);

-- Location: LCCOMB_X26_Y13_N16
\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[85]~289_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[85]~209_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[85]~289_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[85]~209_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[85]~289_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[85]~209_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[85]~289_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[85]~209_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\);

-- Location: LCCOMB_X26_Y13_N18
\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[86]~288_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[86]~208_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[86]~288_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[86]~208_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\);

-- Location: LCCOMB_X26_Y13_N20
\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\);

-- Location: LCCOMB_X26_Y14_N4
\Div0|auto_generated|divider|divider|StageOut[94]~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[94]~217_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[94]~217_combout\);

-- Location: LCCOMB_X26_Y13_N2
\Div0|auto_generated|divider|divider|StageOut[93]~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[93]~218_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[93]~218_combout\);

-- Location: LCCOMB_X23_Y12_N30
\Div0|auto_generated|divider|divider|StageOut[83]~291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[83]~291_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[74]~324_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[74]~324_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[83]~291_combout\);

-- Location: LCCOMB_X25_Y13_N30
\Div0|auto_generated|divider|divider|StageOut[92]~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~295_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[83]~291_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[83]~291_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~295_combout\);

-- Location: LCCOMB_X25_Y14_N14
\Div0|auto_generated|divider|divider|StageOut[82]~292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~292_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[73]~204_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[73]~204_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~292_combout\);

-- Location: LCCOMB_X25_Y14_N4
\Div0|auto_generated|divider|divider|StageOut[91]~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[91]~296_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[82]~292_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[82]~292_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[91]~296_combout\);

-- Location: LCCOMB_X25_Y14_N28
\Div0|auto_generated|divider|divider|StageOut[90]~325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[90]~325_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[90]~325_combout\);

-- Location: LCCOMB_X25_Y14_N6
\Div0|auto_generated|divider|divider|StageOut[89]~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[89]~223_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[89]~223_combout\);

-- Location: LCCOMB_X26_Y10_N6
\Div0|auto_generated|divider|my_abs_num|cs2a[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\);

-- Location: LCCOMB_X25_Y14_N20
\Div0|auto_generated|divider|divider|StageOut[88]~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~225_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~225_combout\);

-- Location: LCCOMB_X26_Y14_N12
\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[88]~224_combout\) # (\Div0|auto_generated|divider|divider|StageOut[88]~225_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[88]~224_combout\) # (\Div0|auto_generated|divider|divider|StageOut[88]~225_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[88]~224_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[88]~225_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X26_Y14_N14
\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[89]~222_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[89]~223_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[89]~222_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[89]~223_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[89]~222_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[89]~223_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[89]~222_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[89]~223_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X26_Y14_N16
\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[90]~221_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[90]~325_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[90]~221_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[90]~325_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[90]~221_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[90]~325_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[90]~221_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[90]~325_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X26_Y14_N20
\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[92]~219_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[92]~295_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[92]~219_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[92]~295_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[92]~219_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[92]~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[92]~219_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[92]~295_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\);

-- Location: LCCOMB_X26_Y14_N24
\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[94]~293_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[94]~217_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[94]~293_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[94]~217_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13_cout\);

-- Location: LCCOMB_X26_Y14_N26
\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\);

-- Location: LCCOMB_X25_Y13_N0
\Div0|auto_generated|divider|divider|StageOut[84]~290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~290_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[75]~287_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[75]~287_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~290_combout\);

-- Location: LCCOMB_X26_Y13_N4
\Div0|auto_generated|divider|divider|StageOut[93]~294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[93]~294_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[84]~290_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[84]~290_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[93]~294_combout\);

-- Location: LCCOMB_X26_Y13_N22
\Div0|auto_generated|divider|divider|StageOut[102]~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~297_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[93]~294_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[93]~294_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~297_combout\);

-- Location: LCCOMB_X26_Y14_N8
\Div0|auto_generated|divider|divider|StageOut[101]~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~227_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~227_combout\);

-- Location: LCCOMB_X25_Y10_N24
\Div0|auto_generated|divider|divider|StageOut[100]~299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~299_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[91]~296_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[91]~296_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~299_combout\);

-- Location: LCCOMB_X26_Y14_N0
\Div0|auto_generated|divider|divider|StageOut[99]~229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[99]~229_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[99]~229_combout\);

-- Location: LCCOMB_X26_Y10_N0
\Div0|auto_generated|divider|divider|StageOut[89]~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[89]~222_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[89]~222_combout\);

-- Location: LCCOMB_X26_Y10_N12
\Div0|auto_generated|divider|divider|StageOut[98]~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[98]~301_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[89]~222_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[89]~222_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[98]~301_combout\);

-- Location: LCCOMB_X26_Y14_N28
\Div0|auto_generated|divider|divider|StageOut[97]~232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[97]~232_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[97]~232_combout\);

-- Location: LCCOMB_X26_Y10_N18
\Div0|auto_generated|divider|divider|StageOut[96]~233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~233_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~233_combout\);

-- Location: LCCOMB_X25_Y10_N8
\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[96]~234_combout\) # (\Div0|auto_generated|divider|divider|StageOut[96]~233_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[96]~234_combout\) # (\Div0|auto_generated|divider|divider|StageOut[96]~233_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[96]~234_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[96]~233_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\);

-- Location: LCCOMB_X25_Y10_N12
\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[98]~230_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[98]~301_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[98]~230_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[98]~301_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[98]~230_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[98]~301_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[98]~230_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[98]~301_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\);

-- Location: LCCOMB_X25_Y10_N18
\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[101]~298_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[101]~227_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[101]~298_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[101]~227_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[101]~298_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[101]~227_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[101]~298_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[101]~227_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\);

-- Location: LCCOMB_X25_Y10_N20
\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[102]~226_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[102]~297_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[102]~226_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[102]~297_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13_cout\);

-- Location: LCCOMB_X25_Y10_N22
\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\);

-- Location: LCCOMB_X25_Y10_N2
\Div0|auto_generated|divider|divider|StageOut[109]~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[109]~303_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[100]~299_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[100]~299_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[109]~303_combout\);

-- Location: LCCOMB_X25_Y14_N10
\Div0|auto_generated|divider|divider|StageOut[99]~300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[99]~300_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[90]~325_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[90]~325_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[99]~300_combout\);

-- Location: LCCOMB_X24_Y10_N20
\Div0|auto_generated|divider|divider|StageOut[108]~304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~304_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[99]~300_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[99]~300_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~304_combout\);

-- Location: LCCOMB_X25_Y10_N28
\Div0|auto_generated|divider|divider|StageOut[107]~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~238_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~238_combout\);

-- Location: LCCOMB_X26_Y10_N8
\Div0|auto_generated|divider|divider|StageOut[106]~326\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~326_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~326_combout\);

-- Location: LCCOMB_X25_Y10_N0
\Div0|auto_generated|divider|divider|StageOut[105]~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~241_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~241_combout\);

-- Location: LCCOMB_X28_Y11_N14
\Mult0|mult_core|romout[0][3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][3]~18_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a3\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a2\ & ((!\U4|ram_rtl_0|auto_generated|ram_block1a1\))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a2\ & 
-- (\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \U4|ram_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \Mult0|mult_core|romout[0][3]~18_combout\);

-- Location: LCCOMB_X21_Y11_N12
\Div0|auto_generated|divider|my_abs_num|cs2a[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ & ((\Mult0|mult_core|romout[0][3]~18_combout\))) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => \Mult0|mult_core|romout[0][3]~18_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\);

-- Location: LCCOMB_X25_Y10_N26
\Div0|auto_generated|divider|divider|StageOut[104]~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~242_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~242_combout\);

-- Location: LCCOMB_X24_Y10_N4
\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[104]~243_combout\) # (\Div0|auto_generated|divider|divider|StageOut[104]~242_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[104]~243_combout\) # (\Div0|auto_generated|divider|divider|StageOut[104]~242_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[104]~243_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[104]~242_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X24_Y10_N8
\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[106]~239_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[106]~326_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[106]~239_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[106]~326_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[106]~239_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[106]~326_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[106]~239_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[106]~326_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\);

-- Location: LCCOMB_X24_Y10_N14
\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[109]~236_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[109]~303_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[109]~236_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[109]~303_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[109]~236_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[109]~303_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[109]~236_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[109]~303_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\);

-- Location: LCCOMB_X24_Y10_N24
\Div0|auto_generated|divider|divider|StageOut[110]~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~235_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~235_combout\);

-- Location: LCCOMB_X24_Y10_N16
\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[110]~302_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[110]~235_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[110]~302_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[110]~235_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13_cout\);

-- Location: LCCOMB_X24_Y10_N18
\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\);

-- Location: LCCOMB_X23_Y10_N24
\Div0|auto_generated|divider|divider|StageOut[118]~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~244_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~244_combout\);

-- Location: LCCOMB_X24_Y10_N26
\Div0|auto_generated|divider|divider|StageOut[117]~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~245_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~245_combout\);

-- Location: LCCOMB_X26_Y10_N26
\Div0|auto_generated|divider|divider|StageOut[107]~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~305_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[98]~301_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[98]~301_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~305_combout\);

-- Location: LCCOMB_X23_Y10_N26
\Div0|auto_generated|divider|divider|StageOut[116]~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~308_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[107]~305_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[107]~305_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~308_combout\);

-- Location: LCCOMB_X24_Y10_N0
\Div0|auto_generated|divider|divider|StageOut[115]~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~247_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~247_combout\);

-- Location: LCCOMB_X24_Y10_N22
\Div0|auto_generated|divider|divider|StageOut[114]~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~248_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~248_combout\);

-- Location: LCCOMB_X23_Y9_N0
\Div0|auto_generated|divider|divider|StageOut[113]~250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~250_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~250_combout\);

-- Location: LCCOMB_X24_Y10_N28
\Div0|auto_generated|divider|divider|StageOut[112]~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~251_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & (\Mult0|mult_core|romout[0][3]~18_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][3]~18_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~251_combout\);

-- Location: LCCOMB_X23_Y10_N10
\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[116]~246_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~308_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[116]~246_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~308_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[116]~246_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[116]~246_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[116]~308_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\);

-- Location: LCCOMB_X23_Y10_N12
\Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[117]~307_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[117]~245_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[117]~307_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[117]~245_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[117]~307_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[117]~245_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[117]~307_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~245_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11\);

-- Location: LCCOMB_X23_Y10_N14
\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[118]~306_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[118]~244_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[118]~306_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[118]~244_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~13_cout\);

-- Location: LCCOMB_X23_Y10_N16
\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\);

-- Location: LCCOMB_X19_Y10_N18
\Div0|auto_generated|divider|divider|StageOut[125]~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~254_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~254_combout\);

-- Location: LCCOMB_X26_Y10_N28
\Div0|auto_generated|divider|divider|StageOut[115]~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~309_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[106]~326_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[106]~326_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~309_combout\);

-- Location: LCCOMB_X19_Y10_N28
\Div0|auto_generated|divider|divider|StageOut[124]~313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~313_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[115]~309_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[115]~309_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~313_combout\);

-- Location: LCCOMB_X23_Y10_N18
\Div0|auto_generated|divider|divider|StageOut[123]~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~256_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~256_combout\);

-- Location: LCCOMB_X18_Y10_N6
\Div0|auto_generated|divider|divider|StageOut[122]~327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~327_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~327_combout\);

-- Location: LCCOMB_X21_Y11_N30
\Div0|auto_generated|divider|divider|StageOut[121]~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~258_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & (\Mult0|mult_core|romout[0][3]~18_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][3]~18_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~258_combout\);

-- Location: LCCOMB_X19_Y10_N20
\Div0|auto_generated|divider|divider|StageOut[120]~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~261_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~261_combout\);

-- Location: LCCOMB_X19_Y10_N2
\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[120]~260_combout\) # (\Div0|auto_generated|divider|divider|StageOut[120]~261_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[120]~260_combout\) # (\Div0|auto_generated|divider|divider|StageOut[120]~261_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[120]~260_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[120]~261_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\);

-- Location: LCCOMB_X19_Y10_N6
\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[122]~257_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[122]~327_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[122]~257_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[122]~327_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[122]~257_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[122]~327_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[122]~257_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[122]~327_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\);

-- Location: LCCOMB_X19_Y10_N8
\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[123]~314_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[123]~314_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[123]~256_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[123]~256_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[123]~314_combout\ & !\Div0|auto_generated|divider|divider|StageOut[123]~256_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[123]~314_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[123]~256_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\);

-- Location: LCCOMB_X19_Y10_N12
\Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[125]~312_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[125]~254_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[125]~312_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[125]~254_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[125]~312_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[125]~254_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[125]~312_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[125]~254_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11\);

-- Location: LCCOMB_X19_Y10_N24
\Div0|auto_generated|divider|divider|StageOut[126]~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~253_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~253_combout\);

-- Location: LCCOMB_X19_Y10_N14
\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[126]~311_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[126]~253_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[126]~311_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[126]~253_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~13_cout\);

-- Location: LCCOMB_X19_Y10_N16
\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\);

-- Location: LCCOMB_X21_Y10_N28
\Div0|auto_generated|divider|divider|StageOut[134]~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[134]~262_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[134]~262_combout\);

-- Location: LCCOMB_X21_Y10_N4
\Div0|auto_generated|divider|divider|StageOut[133]~316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[133]~316_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[124]~313_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[124]~313_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[133]~316_combout\);

-- Location: LCCOMB_X21_Y10_N24
\Div0|auto_generated|divider|divider|StageOut[132]~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~264_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~264_combout\);

-- Location: LCCOMB_X21_Y10_N2
\Div0|auto_generated|divider|divider|StageOut[131]~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~265_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~265_combout\);

-- Location: LCCOMB_X21_Y11_N4
\Div0|auto_generated|divider|divider|StageOut[130]~319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~319_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[121]~258_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[121]~258_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~319_combout\);

-- Location: LCCOMB_X21_Y10_N0
\Div0|auto_generated|divider|divider|StageOut[129]~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~268_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~268_combout\);

-- Location: LCCOMB_X18_Y10_N14
\Div0|auto_generated|divider|divider|StageOut[128]~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~269_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a1\ $ 
-- (((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~269_combout\);

-- Location: LCCOMB_X21_Y10_N8
\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[128]~270_combout\) # (\Div0|auto_generated|divider|divider|StageOut[128]~269_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[128]~270_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[128]~269_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\);

-- Location: LCCOMB_X21_Y10_N10
\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[129]~267_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[129]~268_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[129]~267_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[129]~268_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3_cout\);

-- Location: LCCOMB_X21_Y10_N12
\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[130]~266_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[130]~319_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[130]~266_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[130]~319_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5_cout\);

-- Location: LCCOMB_X21_Y10_N14
\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[131]~318_combout\ & !\Div0|auto_generated|divider|divider|StageOut[131]~265_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[131]~318_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[131]~265_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y10_N16
\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[132]~317_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[132]~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[132]~317_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[132]~264_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\);

-- Location: LCCOMB_X21_Y10_N18
\Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[133]~263_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[133]~316_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[133]~263_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[133]~316_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\);

-- Location: LCCOMB_X21_Y10_N20
\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[134]~315_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[134]~262_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[134]~315_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[134]~262_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13_cout\);

-- Location: LCCOMB_X21_Y10_N22
\Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\);

-- Location: LCCOMB_X22_Y10_N4
\Div0|auto_generated|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|op_1~3\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~3\ & VCC))
-- \Div0|auto_generated|divider|op_1~5\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & !\Div0|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X21_Y11_N20
\Div0|auto_generated|divider|quotient[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[2]~8_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~4_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|op_1~4_combout\,
	combout => \Div0|auto_generated|divider|quotient[2]~8_combout\);

-- Location: LCCOMB_X21_Y14_N18
\Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\Div0|auto_generated|divider|quotient[2]~8_combout\ & ((GND) # (!\Add8~3\))) # (!\Div0|auto_generated|divider|quotient[2]~8_combout\ & (\Add8~3\ $ (GND)))
-- \Add8~5\ = CARRY((\Div0|auto_generated|divider|quotient[2]~8_combout\) # (!\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|quotient[2]~8_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X21_Y14_N20
\Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Div0|auto_generated|divider|quotient[3]~7_combout\ & (\Add8~5\ & VCC)) # (!\Div0|auto_generated|divider|quotient[3]~7_combout\ & (!\Add8~5\))
-- \Add8~7\ = CARRY((!\Div0|auto_generated|divider|quotient[3]~7_combout\ & !\Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[3]~7_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X21_Y14_N22
\Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\Div0|auto_generated|divider|quotient[4]~6_combout\ & (\Add8~7\ $ (GND))) # (!\Div0|auto_generated|divider|quotient[4]~6_combout\ & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((\Div0|auto_generated|divider|quotient[4]~6_combout\ & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[4]~6_combout\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X22_Y10_N10
\Div0|auto_generated|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & (!\Div0|auto_generated|divider|op_1~9\)) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~9\) # (GND)))
-- \Div0|auto_generated|divider|op_1~11\ = CARRY((!\Div0|auto_generated|divider|op_1~9\) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~9\,
	combout => \Div0|auto_generated|divider|op_1~10_combout\,
	cout => \Div0|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X21_Y14_N4
\Div0|auto_generated|divider|quotient[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[5]~5_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (\Div0|auto_generated|divider|op_1~10_combout\)) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|op_1~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|quotient[5]~5_combout\);

-- Location: LCCOMB_X21_Y14_N24
\Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Div0|auto_generated|divider|quotient[5]~5_combout\ & (!\Add8~9\)) # (!\Div0|auto_generated|divider|quotient[5]~5_combout\ & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!\Div0|auto_generated|divider|quotient[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|quotient[5]~5_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X19_Y14_N0
\Equal4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (\Add10~10_combout\ & (\Add8~10_combout\ & (\Add10~8_combout\ $ (!\Add8~8_combout\)))) # (!\Add10~10_combout\ & (!\Add8~10_combout\ & (\Add10~8_combout\ $ (!\Add8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~10_combout\,
	datab => \Add10~8_combout\,
	datac => \Add8~8_combout\,
	datad => \Add8~10_combout\,
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X18_Y16_N18
\Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\U1|vcs\(5) & (\Add10~9\ & VCC)) # (!\U1|vcs\(5) & (!\Add10~9\))
-- \Add10~11\ = CARRY((!\U1|vcs\(5) & !\Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(5),
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X18_Y16_N20
\Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (\U1|vcs\(6) & ((GND) # (!\Add10~11\))) # (!\U1|vcs\(6) & (\Add10~11\ $ (GND)))
-- \Add10~13\ = CARRY((\U1|vcs\(6)) # (!\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(6),
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X21_Y14_N26
\Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (\Div0|auto_generated|divider|quotient[6]~4_combout\ & (\Add8~11\ $ (GND))) # (!\Div0|auto_generated|divider|quotient[6]~4_combout\ & (!\Add8~11\ & VCC))
-- \Add8~13\ = CARRY((\Div0|auto_generated|divider|quotient[6]~4_combout\ & !\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[6]~4_combout\,
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X21_Y14_N28
\Add8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (\Div0|auto_generated|divider|quotient[7]~3_combout\ & (!\Add8~13\)) # (!\Div0|auto_generated|divider|quotient[7]~3_combout\ & ((\Add8~13\) # (GND)))
-- \Add8~15\ = CARRY((!\Add8~13\) # (!\Div0|auto_generated|divider|quotient[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[7]~3_combout\,
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X19_Y14_N22
\Equal4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (\Add10~14_combout\ & (\Add8~14_combout\ & (\Add10~12_combout\ $ (!\Add8~12_combout\)))) # (!\Add10~14_combout\ & (!\Add8~14_combout\ & (\Add10~12_combout\ $ (!\Add8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~14_combout\,
	datab => \Add10~12_combout\,
	datac => \Add8~12_combout\,
	datad => \Add8~14_combout\,
	combout => \Equal4~6_combout\);

-- Location: LCCOMB_X18_Y16_N22
\Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (\U1|vcs\(7) & (\Add10~13\ & VCC)) # (!\U1|vcs\(7) & (!\Add10~13\))
-- \Add10~15\ = CARRY((!\U1|vcs\(7) & !\Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(7),
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: LCCOMB_X18_Y16_N24
\Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = (\U1|vcs\(8) & ((GND) # (!\Add10~15\))) # (!\U1|vcs\(8) & (\Add10~15\ $ (GND)))
-- \Add10~17\ = CARRY((\U1|vcs\(8)) # (!\Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(8),
	datad => VCC,
	cin => \Add10~15\,
	combout => \Add10~16_combout\,
	cout => \Add10~17\);

-- Location: LCCOMB_X21_Y14_N30
\Add8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = (\Div0|auto_generated|divider|quotient[8]~2_combout\ & ((GND) # (!\Add8~15\))) # (!\Div0|auto_generated|divider|quotient[8]~2_combout\ & (\Add8~15\ $ (GND)))
-- \Add8~17\ = CARRY((\Div0|auto_generated|divider|quotient[8]~2_combout\) # (!\Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[8]~2_combout\,
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: LCCOMB_X21_Y13_N0
\Add8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = (\Div0|auto_generated|divider|quotient[9]~1_combout\ & (\Add8~17\ & VCC)) # (!\Div0|auto_generated|divider|quotient[9]~1_combout\ & (!\Add8~17\))
-- \Add8~19\ = CARRY((!\Div0|auto_generated|divider|quotient[9]~1_combout\ & !\Add8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[9]~1_combout\,
	datad => VCC,
	cin => \Add8~17\,
	combout => \Add8~18_combout\,
	cout => \Add8~19\);

-- Location: LCCOMB_X19_Y14_N28
\Equal4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (\Add10~18_combout\ & (\Add8~18_combout\ & (\Add10~16_combout\ $ (!\Add8~16_combout\)))) # (!\Add10~18_combout\ & (!\Add8~18_combout\ & (\Add10~16_combout\ $ (!\Add8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~18_combout\,
	datab => \Add10~16_combout\,
	datac => \Add8~18_combout\,
	datad => \Add8~16_combout\,
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X19_Y14_N14
\Equal4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (\Equal4~4_combout\ & (\Equal4~5_combout\ & (\Equal4~6_combout\ & \Equal4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~4_combout\,
	datab => \Equal4~5_combout\,
	datac => \Equal4~6_combout\,
	datad => \Equal4~7_combout\,
	combout => \Equal4~8_combout\);

-- Location: LCCOMB_X22_Y10_N20
\Div0|auto_generated|divider|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|op_1~19\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~19\ & VCC))
-- \Div0|auto_generated|divider|op_1~21\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & !\Div0|auto_generated|divider|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~19\,
	combout => \Div0|auto_generated|divider|op_1~20_combout\,
	cout => \Div0|auto_generated|divider|op_1~21\);

-- Location: LCCOMB_X22_Y10_N22
\Div0|auto_generated|divider|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~22_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (!\Div0|auto_generated|divider|op_1~21\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~21\) # (GND)))
-- \Div0|auto_generated|divider|op_1~23\ = CARRY((!\Div0|auto_generated|divider|op_1~21\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~21\,
	combout => \Div0|auto_generated|divider|op_1~22_combout\,
	cout => \Div0|auto_generated|divider|op_1~23\);

-- Location: LCCOMB_X22_Y10_N28
\Div0|auto_generated|divider|op_1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~28_combout\ = \Div0|auto_generated|divider|op_1~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|op_1~27\,
	combout => \Div0|auto_generated|divider|op_1~28_combout\);

-- Location: LCCOMB_X21_Y13_N30
\Div0|auto_generated|divider|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|_~1_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & \Div0|auto_generated|divider|op_1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|op_1~28_combout\,
	combout => \Div0|auto_generated|divider|_~1_combout\);

-- Location: LCCOMB_X21_Y13_N24
\Div0|auto_generated|divider|quotient[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[11]~11_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~22_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|op_1~22_combout\,
	combout => \Div0|auto_generated|divider|quotient[11]~11_combout\);

-- Location: LCCOMB_X22_Y12_N0
\Div0|auto_generated|divider|quotient[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[10]~0_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~20_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|op_1~20_combout\,
	combout => \Div0|auto_generated|divider|quotient[10]~0_combout\);

-- Location: LCCOMB_X21_Y13_N2
\Add8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = (\Div0|auto_generated|divider|quotient[10]~0_combout\ & (\Add8~19\ $ (GND))) # (!\Div0|auto_generated|divider|quotient[10]~0_combout\ & (!\Add8~19\ & VCC))
-- \Add8~21\ = CARRY((\Div0|auto_generated|divider|quotient[10]~0_combout\ & !\Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|quotient[10]~0_combout\,
	datad => VCC,
	cin => \Add8~19\,
	combout => \Add8~20_combout\,
	cout => \Add8~21\);

-- Location: LCCOMB_X21_Y13_N4
\Add8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~22_combout\ = (\Div0|auto_generated|divider|quotient[11]~11_combout\ & (!\Add8~21\)) # (!\Div0|auto_generated|divider|quotient[11]~11_combout\ & ((\Add8~21\) # (GND)))
-- \Add8~23\ = CARRY((!\Add8~21\) # (!\Div0|auto_generated|divider|quotient[11]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|quotient[11]~11_combout\,
	datad => VCC,
	cin => \Add8~21\,
	combout => \Add8~22_combout\,
	cout => \Add8~23\);

-- Location: LCCOMB_X21_Y13_N6
\Add8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~24_combout\ = (\Div0|auto_generated|divider|quotient[12]~12_combout\ & (\Add8~23\ $ (GND))) # (!\Div0|auto_generated|divider|quotient[12]~12_combout\ & (!\Add8~23\ & VCC))
-- \Add8~25\ = CARRY((\Div0|auto_generated|divider|quotient[12]~12_combout\ & !\Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[12]~12_combout\,
	datad => VCC,
	cin => \Add8~23\,
	combout => \Add8~24_combout\,
	cout => \Add8~25\);

-- Location: LCCOMB_X21_Y13_N8
\Add8~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~26_combout\ = (\Div0|auto_generated|divider|_~0_combout\ & (!\Add8~25\)) # (!\Div0|auto_generated|divider|_~0_combout\ & ((\Add8~25\) # (GND)))
-- \Add8~27\ = CARRY((!\Add8~25\) # (!\Div0|auto_generated|divider|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add8~25\,
	combout => \Add8~26_combout\,
	cout => \Add8~27\);

-- Location: LCCOMB_X21_Y13_N10
\Add8~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~28_combout\ = (\Div0|auto_generated|divider|_~1_combout\ & (\Add8~27\ $ (GND))) # (!\Div0|auto_generated|divider|_~1_combout\ & (!\Add8~27\ & VCC))
-- \Add8~29\ = CARRY((\Div0|auto_generated|divider|_~1_combout\ & !\Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|_~1_combout\,
	datad => VCC,
	cin => \Add8~27\,
	combout => \Add8~28_combout\,
	cout => \Add8~29\);

-- Location: LCCOMB_X21_Y13_N12
\Add8~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~30_combout\ = (\Div0|auto_generated|divider|_~1_combout\ & (!\Add8~29\)) # (!\Div0|auto_generated|divider|_~1_combout\ & ((\Add8~29\) # (GND)))
-- \Add8~31\ = CARRY((!\Add8~29\) # (!\Div0|auto_generated|divider|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|_~1_combout\,
	datad => VCC,
	cin => \Add8~29\,
	combout => \Add8~30_combout\,
	cout => \Add8~31\);

-- Location: LCCOMB_X21_Y13_N14
\Add8~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~32_combout\ = (\Div0|auto_generated|divider|_~1_combout\ & (\Add8~31\ $ (GND))) # (!\Div0|auto_generated|divider|_~1_combout\ & (!\Add8~31\ & VCC))
-- \Add8~33\ = CARRY((\Div0|auto_generated|divider|_~1_combout\ & !\Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|_~1_combout\,
	datad => VCC,
	cin => \Add8~31\,
	combout => \Add8~32_combout\,
	cout => \Add8~33\);

-- Location: LCCOMB_X21_Y13_N16
\Add8~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~34_combout\ = (\Div0|auto_generated|divider|_~1_combout\ & (!\Add8~33\)) # (!\Div0|auto_generated|divider|_~1_combout\ & ((\Add8~33\) # (GND)))
-- \Add8~35\ = CARRY((!\Add8~33\) # (!\Div0|auto_generated|divider|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|_~1_combout\,
	datad => VCC,
	cin => \Add8~33\,
	combout => \Add8~34_combout\,
	cout => \Add8~35\);

-- Location: LCCOMB_X21_Y13_N18
\Add8~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~36_combout\ = \Add8~35\ $ (!\Div0|auto_generated|divider|_~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|_~1_combout\,
	cin => \Add8~35\,
	combout => \Add8~36_combout\);

-- Location: LCCOMB_X21_Y13_N28
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\Add8~24_combout\ & (!\Add8~26_combout\ & (!\Add8~22_combout\ & !\Add8~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~24_combout\,
	datab => \Add8~26_combout\,
	datac => \Add8~22_combout\,
	datad => \Add8~20_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X21_Y13_N20
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!\Add8~30_combout\ & (!\Add8~32_combout\ & (!\Add8~28_combout\ & !\Add8~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~30_combout\,
	datab => \Add8~32_combout\,
	datac => \Add8~28_combout\,
	datad => \Add8~34_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X21_Y13_N26
\Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!\Add8~36_combout\ & (\Equal4~0_combout\ & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~36_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal4~1_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X19_Y14_N12
\blue~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blue~0_combout\ = (\U1|visible_img~1_combout\ & (((!\Equal4~2_combout\) # (!\Equal4~8_combout\)) # (!\Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|visible_img~1_combout\,
	datab => \Equal4~3_combout\,
	datac => \Equal4~8_combout\,
	datad => \Equal4~2_combout\,
	combout => \blue~0_combout\);

-- Location: LCCOMB_X18_Y12_N12
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\U1|vcs\(7) & (\Add5~9\ & VCC)) # (!\U1|vcs\(7) & (!\Add5~9\))
-- \Add5~11\ = CARRY((!\U1|vcs\(7) & !\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(7),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X18_Y14_N16
\ramreader~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~15_combout\ = (\ramreader~14_combout\ & (\Add8~14_combout\ $ (!\Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ramreader~14_combout\,
	datac => \Add8~14_combout\,
	datad => \Add5~10_combout\,
	combout => \ramreader~15_combout\);

-- Location: LCCOMB_X18_Y12_N16
\Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = \Add5~13\ $ (!\U1|vcs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|vcs\(9),
	cin => \Add5~13\,
	combout => \Add5~14_combout\);

-- Location: LCCOMB_X19_Y13_N0
\ramreader~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~25_combout\ = \Add5~14_combout\ $ (!\Add8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~14_combout\,
	datad => \Add8~18_combout\,
	combout => \ramreader~25_combout\);

-- Location: LCCOMB_X18_Y15_N12
\Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~1_cout\ = CARRY(\U1|vcs\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(5),
	datad => VCC,
	cout => \Add6~1_cout\);

-- Location: LCCOMB_X23_Y14_N12
\ramreader~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~19_combout\ = (\Add6~4_combout\ & (\Add8~14_combout\ & (\Add6~6_combout\ $ (!\Add8~16_combout\)))) # (!\Add6~4_combout\ & (!\Add8~14_combout\ & (\Add6~6_combout\ $ (!\Add8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \Add6~6_combout\,
	datac => \Add8~14_combout\,
	datad => \Add8~16_combout\,
	combout => \ramreader~19_combout\);

-- Location: LCCOMB_X18_Y14_N8
\ramreader~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~20_combout\ = (\U1|vcs\(2) & (\Add8~4_combout\ & (\U1|vcs\(1) $ (!\Add8~2_combout\)))) # (!\U1|vcs\(2) & (!\Add8~4_combout\ & (\U1|vcs\(1) $ (!\Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(2),
	datab => \U1|vcs\(1),
	datac => \Add8~2_combout\,
	datad => \Add8~4_combout\,
	combout => \ramreader~20_combout\);

-- Location: LCCOMB_X18_Y14_N22
\ramreader~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~22_combout\ = (\Add6~2_combout\ & (\Add8~12_combout\ & (\U1|vcs\(5) $ (\Add8~10_combout\)))) # (!\Add6~2_combout\ & (!\Add8~12_combout\ & (\U1|vcs\(5) $ (\Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => \U1|vcs\(5),
	datac => \Add8~12_combout\,
	datad => \Add8~10_combout\,
	combout => \ramreader~22_combout\);

-- Location: LCCOMB_X19_Y15_N0
\ramreader~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~21_combout\ = (\U1|vcs\(4) & (\Add8~8_combout\ & (\U1|vcs\(3) $ (!\Add8~6_combout\)))) # (!\U1|vcs\(4) & (!\Add8~8_combout\ & (\U1|vcs\(3) $ (!\Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(4),
	datab => \U1|vcs\(3),
	datac => \Add8~8_combout\,
	datad => \Add8~6_combout\,
	combout => \ramreader~21_combout\);

-- Location: LCCOMB_X18_Y14_N24
\ramreader~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~23_combout\ = (\ramreader~20_combout\ & (\ramreader~22_combout\ & \ramreader~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ramreader~20_combout\,
	datac => \ramreader~22_combout\,
	datad => \ramreader~21_combout\,
	combout => \ramreader~23_combout\);

-- Location: LCCOMB_X18_Y14_N2
\ramreader~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~24_combout\ = (\ramreader~19_combout\ & (\ramreader~23_combout\ & (\Add6~8_combout\ $ (!\Add8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \Add8~18_combout\,
	datac => \ramreader~19_combout\,
	datad => \ramreader~23_combout\,
	combout => \ramreader~24_combout\);

-- Location: LCCOMB_X18_Y14_N12
\ramreader~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~26_combout\ = (\ramreader~24_combout\) # ((\ramreader~18_combout\ & (\ramreader~15_combout\ & \ramreader~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ramreader~18_combout\,
	datab => \ramreader~15_combout\,
	datac => \ramreader~25_combout\,
	datad => \ramreader~24_combout\,
	combout => \ramreader~26_combout\);

-- Location: LCCOMB_X18_Y14_N10
\ramreader~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~27_combout\ = (\Equal4~2_combout\ & (\ramreader~26_combout\ & (\Add8~0_combout\ $ (!\U1|vcs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => \U1|vcs\(0),
	datac => \Equal4~2_combout\,
	datad => \ramreader~26_combout\,
	combout => \ramreader~27_combout\);

-- Location: LCCOMB_X17_Y14_N8
\ramreader~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~28_combout\ = (\glow~q\ & \ramreader~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \glow~q\,
	datac => \ramreader~27_combout\,
	combout => \ramreader~28_combout\);

-- Location: LCCOMB_X17_Y11_N8
\Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\U1|vcs\(1) & (\Add9~1\ & VCC)) # (!\U1|vcs\(1) & (!\Add9~1\))
-- \Add9~3\ = CARRY((!\U1|vcs\(1) & !\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X17_Y11_N16
\Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\U1|vcs\(5) & (!\Add9~9\)) # (!\U1|vcs\(5) & ((\Add9~9\) # (GND)))
-- \Add9~11\ = CARRY((!\Add9~9\) # (!\U1|vcs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(5),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X17_Y11_N18
\Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (\U1|vcs\(6) & ((GND) # (!\Add9~11\))) # (!\U1|vcs\(6) & (\Add9~11\ $ (GND)))
-- \Add9~13\ = CARRY((\U1|vcs\(6)) # (!\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(6),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X17_Y11_N24
\Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = \Add9~17\ $ (!\U1|vcs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|vcs\(9),
	cin => \Add9~17\,
	combout => \Add9~18_combout\);

-- Location: LCCOMB_X22_Y14_N22
\ramreader~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~0_combout\ = (\Add9~14_combout\ & (\Add8~14_combout\ & (\Add9~12_combout\ $ (!\Add8~12_combout\)))) # (!\Add9~14_combout\ & (!\Add8~14_combout\ & (\Add9~12_combout\ $ (!\Add8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~14_combout\,
	datab => \Add9~12_combout\,
	datac => \Add8~12_combout\,
	datad => \Add8~14_combout\,
	combout => \ramreader~0_combout\);

-- Location: LCCOMB_X21_Y14_N6
\ramreader~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~1_combout\ = (\Add9~0_combout\ & (\Add8~0_combout\ & (\Add9~2_combout\ $ (!\Add8~2_combout\)))) # (!\Add9~0_combout\ & (!\Add8~0_combout\ & (\Add9~2_combout\ $ (!\Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \Add9~2_combout\,
	datac => \Add8~0_combout\,
	datad => \Add8~2_combout\,
	combout => \ramreader~1_combout\);

-- Location: LCCOMB_X22_Y14_N4
\Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = \Add9~4_combout\ $ (\Add8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~4_combout\,
	datad => \Add8~4_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X22_Y14_N26
\ramreader~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~2_combout\ = (\ramreader~1_combout\ & (!\Equal8~0_combout\ & (\Add9~6_combout\ $ (!\Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datab => \ramreader~1_combout\,
	datac => \Equal8~0_combout\,
	datad => \Add8~6_combout\,
	combout => \ramreader~2_combout\);

-- Location: LCCOMB_X22_Y14_N24
\ramreader~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~3_combout\ = (\Add9~8_combout\ & (\Add8~8_combout\ & (\Add9~10_combout\ $ (!\Add8~10_combout\)))) # (!\Add9~8_combout\ & (!\Add8~8_combout\ & (\Add9~10_combout\ $ (!\Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~8_combout\,
	datab => \Add8~8_combout\,
	datac => \Add9~10_combout\,
	datad => \Add8~10_combout\,
	combout => \ramreader~3_combout\);

-- Location: LCCOMB_X22_Y14_N18
\ramreader~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~4_combout\ = (\ramreader~2_combout\ & (\ramreader~3_combout\ & (\Add9~16_combout\ $ (!\Add8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~16_combout\,
	datab => \Add8~16_combout\,
	datac => \ramreader~2_combout\,
	datad => \ramreader~3_combout\,
	combout => \ramreader~4_combout\);

-- Location: LCCOMB_X22_Y14_N0
\ramreader~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~5_combout\ = (\ramreader~0_combout\ & (\ramreader~4_combout\ & (\Add8~18_combout\ $ (!\Add9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~18_combout\,
	datab => \Add9~18_combout\,
	datac => \ramreader~0_combout\,
	datad => \ramreader~4_combout\,
	combout => \ramreader~5_combout\);

-- Location: LCCOMB_X18_Y13_N8
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\U1|vcs\(2) & (\Add7~3\ $ (GND))) # (!\U1|vcs\(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((\U1|vcs\(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X18_Y13_N12
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\U1|vcs\(4) & (\Add7~7\ $ (GND))) # (!\U1|vcs\(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((\U1|vcs\(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X18_Y13_N16
\Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (\U1|vcs\(6) & ((GND) # (!\Add7~11\))) # (!\U1|vcs\(6) & (\Add7~11\ $ (GND)))
-- \Add7~13\ = CARRY((\U1|vcs\(6)) # (!\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X22_Y14_N14
\ramreader~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~6_combout\ = (\Add7~18_combout\ & (\Add8~18_combout\ & (\Add7~16_combout\ $ (!\Add8~16_combout\)))) # (!\Add7~18_combout\ & (!\Add8~18_combout\ & (\Add7~16_combout\ $ (!\Add8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~18_combout\,
	datab => \Add7~16_combout\,
	datac => \Add8~18_combout\,
	datad => \Add8~16_combout\,
	combout => \ramreader~6_combout\);

-- Location: LCCOMB_X22_Y14_N20
\ramreader~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~8_combout\ = (\Add7~6_combout\ & (\Add8~6_combout\ & (\Add8~4_combout\ $ (!\Add7~4_combout\)))) # (!\Add7~6_combout\ & (!\Add8~6_combout\ & (\Add8~4_combout\ $ (!\Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add8~4_combout\,
	datac => \Add7~4_combout\,
	datad => \Add8~6_combout\,
	combout => \ramreader~8_combout\);

-- Location: LCCOMB_X22_Y14_N30
\ramreader~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~9_combout\ = (\Add7~10_combout\ & (\Add8~10_combout\ & (\Add8~8_combout\ $ (!\Add7~8_combout\)))) # (!\Add7~10_combout\ & (!\Add8~10_combout\ & (\Add8~8_combout\ $ (!\Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datab => \Add8~8_combout\,
	datac => \Add7~8_combout\,
	datad => \Add8~10_combout\,
	combout => \ramreader~9_combout\);

-- Location: LCCOMB_X22_Y14_N12
\ramreader~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~10_combout\ = (\Add7~14_combout\ & (\Add8~14_combout\ & (\Add7~12_combout\ $ (!\Add8~12_combout\)))) # (!\Add7~14_combout\ & (!\Add8~14_combout\ & (\Add7~12_combout\ $ (!\Add8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datab => \Add7~12_combout\,
	datac => \Add8~12_combout\,
	datad => \Add8~14_combout\,
	combout => \ramreader~10_combout\);

-- Location: LCCOMB_X22_Y14_N6
\ramreader~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~11_combout\ = (\ramreader~7_combout\ & (\ramreader~8_combout\ & (\ramreader~9_combout\ & \ramreader~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ramreader~7_combout\,
	datab => \ramreader~8_combout\,
	datac => \ramreader~9_combout\,
	datad => \ramreader~10_combout\,
	combout => \ramreader~11_combout\);

-- Location: LCCOMB_X22_Y14_N16
\ramreader~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~12_combout\ = (!\ramreader~11_combout\) # (!\ramreader~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ramreader~6_combout\,
	datad => \ramreader~11_combout\,
	combout => \ramreader~12_combout\);

-- Location: LCCOMB_X22_Y14_N2
\ramreader~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~13_combout\ = (((!\ramreader~5_combout\ & \ramreader~12_combout\)) # (!\Equal4~2_combout\)) # (!\glow~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \glow~q\,
	datab => \ramreader~5_combout\,
	datac => \Equal4~2_combout\,
	datad => \ramreader~12_combout\,
	combout => \ramreader~13_combout\);

-- Location: LCCOMB_X17_Y14_N16
\blue~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blue~1_combout\ = (\U6|red\(1) & (\blue~0_combout\ & (!\ramreader~28_combout\ & \ramreader~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|red\(1),
	datab => \blue~0_combout\,
	datac => \ramreader~28_combout\,
	datad => \ramreader~13_combout\,
	combout => \blue~1_combout\);

-- Location: FF_X17_Y14_N17
\blue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \blue~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(1));

-- Location: LCCOMB_X16_Y14_N24
\U6|colorgen~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|colorgen~3_combout\ = (\U1|hcs\(1)) # (((\U1|hcs\(2)) # (!\U1|vcs\(0))) # (!\U1|vcs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(1),
	datab => \U1|vcs\(1),
	datac => \U1|vcs\(0),
	datad => \U1|hcs\(2),
	combout => \U6|colorgen~3_combout\);

-- Location: LCCOMB_X16_Y14_N16
\U6|red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|red~2_combout\ = (!\U6|colorgen~4_combout\ & (\U1|hcs\(0) & (\U1|visible_img~1_combout\ & !\U6|colorgen~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|colorgen~4_combout\,
	datab => \U1|hcs\(0),
	datac => \U1|visible_img~1_combout\,
	datad => \U6|colorgen~3_combout\,
	combout => \U6|red~2_combout\);

-- Location: FF_X16_Y14_N17
\U6|red[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U6|red~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|red\(6));

-- Location: LCCOMB_X22_Y14_N8
\ramreader~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~29_combout\ = (\Equal4~2_combout\ & ((\ramreader~5_combout\) # ((\ramreader~11_combout\ & \ramreader~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ramreader~11_combout\,
	datab => \ramreader~6_combout\,
	datac => \Equal4~2_combout\,
	datad => \ramreader~5_combout\,
	combout => \ramreader~29_combout\);

-- Location: LCCOMB_X18_Y14_N28
\blue~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blue~2_combout\ = (\blue~0_combout\ & (((!\ramreader~29_combout\ & !\ramreader~27_combout\)) # (!\glow~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \glow~q\,
	datab => \ramreader~29_combout\,
	datac => \blue~0_combout\,
	datad => \ramreader~27_combout\,
	combout => \blue~2_combout\);

-- Location: LCCOMB_X16_Y14_N12
\blue~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blue~3_combout\ = (\U6|red\(6) & \blue~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|red\(6),
	datad => \blue~2_combout\,
	combout => \blue~3_combout\);

-- Location: LCCOMB_X16_Y14_N20
\blue[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blue[2]~feeder_combout\ = \blue~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \blue~3_combout\,
	combout => \blue[2]~feeder_combout\);

-- Location: FF_X16_Y14_N21
\blue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \blue[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(2));

-- Location: LCCOMB_X16_Y14_N30
\blue[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blue[3]~feeder_combout\ = \blue~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \blue~3_combout\,
	combout => \blue[3]~feeder_combout\);

-- Location: FF_X16_Y14_N31
\blue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \blue[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(3));

-- Location: LCCOMB_X16_Y14_N22
\U6|red[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|red[1]~0_combout\ = (\U1|visible_img~1_combout\ & ((\U6|colorgen~4_combout\) # ((\U6|colorgen~3_combout\) # (!\U1|hcs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|colorgen~4_combout\,
	datab => \U1|hcs\(0),
	datac => \U1|visible_img~1_combout\,
	datad => \U6|colorgen~3_combout\,
	combout => \U6|red[1]~0_combout\);

-- Location: FF_X16_Y14_N23
\U6|red[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U6|red[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|red\(5));

-- Location: LCCOMB_X17_Y14_N22
\green~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~0_combout\ = (\U6|red\(5) & \blue~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|red\(5),
	datad => \blue~2_combout\,
	combout => \green~0_combout\);

-- Location: FF_X17_Y14_N23
\blue[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(5));

-- Location: FF_X16_Y14_N13
\blue[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \blue~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(6));

-- Location: LCCOMB_X18_Y12_N24
\U6|colorgen~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|colorgen~2_combout\ = (\U6|colorgen~0_combout\ & (\U1|vcs\(0) & (\U1|vcs\(4) & \U6|colorgen~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|colorgen~0_combout\,
	datab => \U1|vcs\(0),
	datac => \U1|vcs\(4),
	datad => \U6|colorgen~1_combout\,
	combout => \U6|colorgen~2_combout\);

-- Location: LCCOMB_X16_Y14_N28
\U6|red~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|red~3_combout\ = (\U6|red[1]~0_combout\ & ((\U6|colorgen~2_combout\))) # (!\U6|red[1]~0_combout\ & (\U1|visible_img~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|red[1]~0_combout\,
	datac => \U1|visible_img~1_combout\,
	datad => \U6|colorgen~2_combout\,
	combout => \U6|red~3_combout\);

-- Location: FF_X16_Y14_N29
\U6|red[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U6|red~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|red\(7));

-- Location: LCCOMB_X19_Y14_N4
\green~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~1_combout\ = (\U6|red\(7) & \blue~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|red\(7),
	datad => \blue~2_combout\,
	combout => \green~1_combout\);

-- Location: FF_X19_Y14_N5
\blue[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(7));

-- Location: LCCOMB_X17_Y14_N4
\green~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~2_combout\ = (\blue~0_combout\ & (!\ramreader~28_combout\ & ((\U6|green\(4)) # (!\ramreader~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|green\(4),
	datab => \blue~0_combout\,
	datac => \ramreader~28_combout\,
	datad => \ramreader~13_combout\,
	combout => \green~2_combout\);

-- Location: FF_X17_Y14_N5
\green[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(0));

-- Location: LCCOMB_X19_Y14_N30
\green~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~3_combout\ = (\blue~0_combout\ & (((\U6|red\(5) & \blue~2_combout\)))) # (!\blue~0_combout\ & ((\U1|visible_img~1_combout\) # ((\U6|red\(5) & \blue~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blue~0_combout\,
	datab => \U1|visible_img~1_combout\,
	datac => \U6|red\(5),
	datad => \blue~2_combout\,
	combout => \green~3_combout\);

-- Location: FF_X19_Y14_N31
\green[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(1));

-- Location: LCCOMB_X19_Y14_N26
\Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (\Add10~6_combout\ & (\Add8~6_combout\ & (\Add10~4_combout\ $ (!\Add8~4_combout\)))) # (!\Add10~6_combout\ & (!\Add8~6_combout\ & (\Add10~4_combout\ $ (!\Add8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~6_combout\,
	datab => \Add10~4_combout\,
	datac => \Add8~6_combout\,
	datad => \Add8~4_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X19_Y14_N16
\Equal4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~9_combout\ = (\Equal4~3_combout\ & (\Equal4~4_combout\ & \Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~3_combout\,
	datac => \Equal4~4_combout\,
	datad => \Equal4~2_combout\,
	combout => \Equal4~9_combout\);

-- Location: LCCOMB_X19_Y14_N18
\Equal4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~10_combout\ = (\Equal4~6_combout\ & (\Equal4~7_combout\ & (\Equal4~5_combout\ & \Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~6_combout\,
	datab => \Equal4~7_combout\,
	datac => \Equal4~5_combout\,
	datad => \Equal4~9_combout\,
	combout => \Equal4~10_combout\);

-- Location: LCCOMB_X17_Y14_N2
\green~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~4_combout\ = (\U1|visible_img~1_combout\ & (!\Equal4~10_combout\ & ((!\ramreader~27_combout\) # (!\glow~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \glow~q\,
	datab => \U1|visible_img~1_combout\,
	datac => \ramreader~27_combout\,
	datad => \Equal4~10_combout\,
	combout => \green~4_combout\);

-- Location: LCCOMB_X17_Y14_N18
\green~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~5_combout\ = (\green~4_combout\ & ((\U6|red\(7)) # (!\ramreader~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ramreader~13_combout\,
	datac => \U6|red\(7),
	datad => \green~4_combout\,
	combout => \green~5_combout\);

-- Location: FF_X17_Y14_N19
\green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(2));

-- Location: LCCOMB_X17_Y14_N28
\green~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~6_combout\ = (\green~5_combout\) # ((\U1|visible_img~1_combout\ & !\blue~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|visible_img~1_combout\,
	datac => \blue~0_combout\,
	datad => \green~5_combout\,
	combout => \green~6_combout\);

-- Location: FF_X17_Y14_N29
\green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(3));

-- Location: LCCOMB_X17_Y14_N10
\green~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~7_combout\ = (\blue~0_combout\ & ((\ramreader~28_combout\) # ((\U6|green\(4) & \ramreader~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|green\(4),
	datab => \blue~0_combout\,
	datac => \ramreader~28_combout\,
	datad => \ramreader~13_combout\,
	combout => \green~7_combout\);

-- Location: FF_X17_Y14_N11
\green[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(4));

-- Location: LCCOMB_X17_Y14_N20
\green~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~8_combout\ = (\green~4_combout\ & (\ramreader~13_combout\ & ((\U6|red\(5))))) # (!\green~4_combout\ & (((\U1|visible_img~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ramreader~13_combout\,
	datab => \U1|visible_img~1_combout\,
	datac => \U6|red\(5),
	datad => \green~4_combout\,
	combout => \green~8_combout\);

-- Location: FF_X17_Y14_N21
\green[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(5));

-- Location: LCCOMB_X17_Y14_N6
\green~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~9_combout\ = (\green~4_combout\ & (((\U6|red\(7))) # (!\ramreader~13_combout\))) # (!\green~4_combout\ & (((\U1|visible_img~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ramreader~13_combout\,
	datab => \U1|visible_img~1_combout\,
	datac => \U6|red\(7),
	datad => \green~4_combout\,
	combout => \green~9_combout\);

-- Location: FF_X17_Y14_N7
\green[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(6));

-- Location: LCCOMB_X19_Y14_N24
\green~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~10_combout\ = (\blue~0_combout\ & (((\U6|red\(7) & \blue~2_combout\)))) # (!\blue~0_combout\ & ((\U1|visible_img~1_combout\) # ((\U6|red\(7) & \blue~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blue~0_combout\,
	datab => \U1|visible_img~1_combout\,
	datac => \U6|red\(7),
	datad => \blue~2_combout\,
	combout => \green~10_combout\);

-- Location: FF_X19_Y14_N25
\green[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(7));

-- Location: LCCOMB_X22_Y14_N28
\red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~0_combout\ = (\glow~q\ & (\ramreader~29_combout\ & (\blue~0_combout\ & !\ramreader~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \glow~q\,
	datab => \ramreader~29_combout\,
	datac => \blue~0_combout\,
	datad => \ramreader~27_combout\,
	combout => \red~0_combout\);

-- Location: FF_X22_Y14_N29
\red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(0));

-- Location: LCCOMB_X16_Y14_N26
\U6|red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|red~1_combout\ = (\U6|red[1]~0_combout\ & !\U6|colorgen~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|red[1]~0_combout\,
	datad => \U6|colorgen~2_combout\,
	combout => \U6|red~1_combout\);

-- Location: FF_X16_Y14_N27
\U6|red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U6|red~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|red\(1));

-- Location: LCCOMB_X19_Y14_N8
\red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~1_combout\ = (\ramreader~30_combout\ & (\U1|visible_img~1_combout\)) # (!\ramreader~30_combout\ & (((\U6|red\(1) & \blue~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ramreader~30_combout\,
	datab => \U1|visible_img~1_combout\,
	datac => \U6|red\(1),
	datad => \blue~0_combout\,
	combout => \red~1_combout\);

-- Location: LCCOMB_X17_Y16_N8
\Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~1_cout\ = CARRY((\U1|hcs\(0) & \U1|hcs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(0),
	datab => \U1|hcs\(1),
	datad => VCC,
	cout => \Add4~1_cout\);

-- Location: LCCOMB_X17_Y16_N10
\Add4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~3_cout\ = CARRY((!\Add4~1_cout\) # (!\U1|hcs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(2),
	datad => VCC,
	cin => \Add4~1_cout\,
	cout => \Add4~3_cout\);

-- Location: LCCOMB_X17_Y16_N12
\Add4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~5_cout\ = CARRY((\U1|hcs\(3) & !\Add4~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(3),
	datad => VCC,
	cin => \Add4~3_cout\,
	cout => \Add4~5_cout\);

-- Location: LCCOMB_X17_Y16_N14
\Add4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~7_cout\ = CARRY((!\Add4~5_cout\) # (!\U1|hcs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(4),
	datad => VCC,
	cin => \Add4~5_cout\,
	cout => \Add4~7_cout\);

-- Location: LCCOMB_X17_Y16_N16
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\counter25:prescaler[5]~q\ & (\Add4~7_cout\ $ (GND))) # (!\counter25:prescaler[5]~q\ & (!\Add4~7_cout\ & VCC))
-- \Add4~9\ = CARRY((\counter25:prescaler[5]~q\ & !\Add4~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[5]~q\,
	datad => VCC,
	cin => \Add4~7_cout\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: FF_X17_Y16_N17
\counter25:prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \Add4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[5]~q\);

-- Location: LCCOMB_X17_Y16_N18
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\counter25:prescaler[6]~q\ & (!\Add4~9\)) # (!\counter25:prescaler[6]~q\ & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!\counter25:prescaler[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[6]~q\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X17_Y16_N4
\prescaler~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~8_combout\ = (\Add4~10_combout\ & !\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~10_combout\,
	datad => \Equal2~6_combout\,
	combout => \prescaler~8_combout\);

-- Location: FF_X17_Y16_N5
\counter25:prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \prescaler~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[6]~q\);

-- Location: LCCOMB_X17_Y16_N20
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\counter25:prescaler[7]~q\ & (\Add4~11\ $ (GND))) # (!\counter25:prescaler[7]~q\ & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((\counter25:prescaler[7]~q\ & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[7]~q\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: FF_X17_Y16_N21
\counter25:prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \Add4~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[7]~q\);

-- Location: LCCOMB_X17_Y16_N22
\Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\counter25:prescaler[8]~q\ & (!\Add4~13\)) # (!\counter25:prescaler[8]~q\ & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!\counter25:prescaler[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter25:prescaler[8]~q\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X17_Y16_N24
\Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (\counter25:prescaler[9]~q\ & (\Add4~15\ $ (GND))) # (!\counter25:prescaler[9]~q\ & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((\counter25:prescaler[9]~q\ & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[9]~q\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: FF_X17_Y16_N25
\counter25:prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \Add4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[9]~q\);

-- Location: LCCOMB_X17_Y16_N26
\Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (\counter25:prescaler[10]~q\ & (!\Add4~17\)) # (!\counter25:prescaler[10]~q\ & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!\counter25:prescaler[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter25:prescaler[10]~q\,
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X17_Y16_N28
\Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (\counter25:prescaler[11]~q\ & (\Add4~19\ $ (GND))) # (!\counter25:prescaler[11]~q\ & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((\counter25:prescaler[11]~q\ & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[11]~q\,
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X17_Y16_N2
\prescaler~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~9_combout\ = (\Add4~20_combout\ & !\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~20_combout\,
	datad => \Equal2~6_combout\,
	combout => \prescaler~9_combout\);

-- Location: FF_X17_Y16_N3
\counter25:prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \prescaler~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[11]~q\);

-- Location: LCCOMB_X17_Y16_N30
\Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\counter25:prescaler[12]~q\ & (!\Add4~21\)) # (!\counter25:prescaler[12]~q\ & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!\counter25:prescaler[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[12]~q\,
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X17_Y16_N0
\prescaler~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~10_combout\ = (\Add4~22_combout\ & !\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~22_combout\,
	datad => \Equal2~6_combout\,
	combout => \prescaler~10_combout\);

-- Location: FF_X17_Y16_N1
\counter25:prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \prescaler~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[12]~q\);

-- Location: LCCOMB_X17_Y15_N0
\Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (\counter25:prescaler[13]~q\ & (\Add4~23\ $ (GND))) # (!\counter25:prescaler[13]~q\ & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((\counter25:prescaler[13]~q\ & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[13]~q\,
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X17_Y15_N24
\prescaler~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~11_combout\ = (\Add4~24_combout\ & !\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~24_combout\,
	datad => \Equal2~6_combout\,
	combout => \prescaler~11_combout\);

-- Location: FF_X17_Y15_N25
\counter25:prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \prescaler~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[13]~q\);

-- Location: LCCOMB_X17_Y15_N2
\Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\counter25:prescaler[14]~q\ & (!\Add4~25\)) # (!\counter25:prescaler[14]~q\ & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!\counter25:prescaler[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter25:prescaler[14]~q\,
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X17_Y15_N4
\Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (\counter25:prescaler[15]~q\ & (\Add4~27\ $ (GND))) # (!\counter25:prescaler[15]~q\ & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((\counter25:prescaler[15]~q\ & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[15]~q\,
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: FF_X17_Y15_N5
\counter25:prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \Add4~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[15]~q\);

-- Location: LCCOMB_X17_Y15_N30
\prescaler~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~12_combout\ = (\Add4~26_combout\ & !\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~26_combout\,
	datad => \Equal2~6_combout\,
	combout => \prescaler~12_combout\);

-- Location: FF_X17_Y15_N31
\counter25:prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \prescaler~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[14]~q\);

-- Location: LCCOMB_X18_Y15_N0
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\counter25:prescaler[16]~q\ & (\counter25:prescaler[13]~q\ & (!\counter25:prescaler[15]~q\ & \counter25:prescaler[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter25:prescaler[16]~q\,
	datab => \counter25:prescaler[13]~q\,
	datac => \counter25:prescaler[15]~q\,
	datad => \counter25:prescaler[14]~q\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X18_Y13_N0
\prescaler~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~15_combout\ = (\Add4~36_combout\ & !\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~36_combout\,
	datac => \Equal2~6_combout\,
	combout => \prescaler~15_combout\);

-- Location: FF_X18_Y13_N1
\counter25:prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \prescaler~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[19]~q\);

-- Location: LCCOMB_X17_Y15_N28
\prescaler~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~13_combout\ = (\Add4~30_combout\ & !\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~30_combout\,
	datad => \Equal2~6_combout\,
	combout => \prescaler~13_combout\);

-- Location: FF_X17_Y15_N29
\counter25:prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \prescaler~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[16]~q\);

-- Location: LCCOMB_X17_Y15_N8
\Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (\counter25:prescaler[17]~q\ & (\Add4~31\ $ (GND))) # (!\counter25:prescaler[17]~q\ & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((\counter25:prescaler[17]~q\ & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[17]~q\,
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: FF_X17_Y15_N9
\counter25:prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \Add4~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[17]~q\);

-- Location: LCCOMB_X17_Y15_N16
\Add4~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (\counter25:prescaler[21]~q\ & (\Add4~39\ $ (GND))) # (!\counter25:prescaler[21]~q\ & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((\counter25:prescaler[21]~q\ & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[21]~q\,
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X18_Y15_N28
\prescaler~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~17_combout\ = (\Add4~40_combout\ & !\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~40_combout\,
	datad => \Equal2~6_combout\,
	combout => \prescaler~17_combout\);

-- Location: FF_X18_Y15_N29
\counter25:prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \prescaler~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[21]~q\);

-- Location: LCCOMB_X17_Y15_N20
\Add4~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (\counter25:prescaler[23]~q\ & (\Add4~43\ $ (GND))) # (!\counter25:prescaler[23]~q\ & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((\counter25:prescaler[23]~q\ & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter25:prescaler[23]~q\,
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: FF_X17_Y15_N21
\counter25:prescaler[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \Add4~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[23]~q\);

-- Location: LCCOMB_X17_Y15_N22
\Add4~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = \Add4~45\ $ (\counter25:prescaler[24]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \counter25:prescaler[24]~q\,
	cin => \Add4~45\,
	combout => \Add4~46_combout\);

-- Location: LCCOMB_X18_Y15_N24
\prescaler~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~19_combout\ = (\Add4~46_combout\ & !\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~46_combout\,
	datad => \Equal2~6_combout\,
	combout => \prescaler~19_combout\);

-- Location: FF_X18_Y15_N25
\counter25:prescaler[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \prescaler~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[24]~q\);

-- Location: LCCOMB_X18_Y15_N26
\Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (\counter25:prescaler[22]~q\ & (\counter25:prescaler[21]~q\ & (!\counter25:prescaler[23]~q\ & \counter25:prescaler[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter25:prescaler[22]~q\,
	datab => \counter25:prescaler[21]~q\,
	datac => \counter25:prescaler[23]~q\,
	datad => \counter25:prescaler[24]~q\,
	combout => \Equal2~5_combout\);

-- Location: FF_X17_Y16_N23
\counter25:prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[8]~q\);

-- Location: LCCOMB_X16_Y16_N2
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\counter25:prescaler[6]~q\ & (!\counter25:prescaler[8]~q\ & (!\counter25:prescaler[7]~q\ & \counter25:prescaler[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter25:prescaler[6]~q\,
	datab => \counter25:prescaler[8]~q\,
	datac => \counter25:prescaler[7]~q\,
	datad => \counter25:prescaler[5]~q\,
	combout => \Equal2~0_combout\);

-- Location: FF_X17_Y16_N27
\counter25:prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \Add4~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter25:prescaler[10]~q\);

-- Location: LCCOMB_X17_Y16_N6
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\counter25:prescaler[12]~q\ & (!\counter25:prescaler[9]~q\ & (!\counter25:prescaler[10]~q\ & \counter25:prescaler[11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter25:prescaler[12]~q\,
	datab => \counter25:prescaler[9]~q\,
	datac => \counter25:prescaler[10]~q\,
	datad => \counter25:prescaler[11]~q\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X16_Y16_N28
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal2~0_combout\ & (\U1|Equal0~0_combout\ & \Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \U1|Equal0~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X18_Y15_N10
\Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (\Equal2~4_combout\ & (\Equal2~3_combout\ & (\Equal2~5_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal2~5_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X13_Y16_N20
\glow~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \glow~0_combout\ = \glow~q\ $ (\Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \glow~q\,
	datad => \Equal2~6_combout\,
	combout => \glow~0_combout\);

-- Location: FF_X13_Y16_N21
glow : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \glow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \glow~q\);

-- Location: LCCOMB_X18_Y14_N14
\blue~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blue~4_combout\ = (\glow~q\ & ((\ramreader~29_combout\) # (\ramreader~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \glow~q\,
	datac => \ramreader~29_combout\,
	datad => \ramreader~27_combout\,
	combout => \blue~4_combout\);

-- Location: LCCOMB_X19_Y14_N2
\red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~2_combout\ = (\U1|visible_img~1_combout\ & ((\Equal4~10_combout\) # ((\red~1_combout\ & !\blue~4_combout\)))) # (!\U1|visible_img~1_combout\ & (((\red~1_combout\ & !\blue~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|visible_img~1_combout\,
	datab => \Equal4~10_combout\,
	datac => \red~1_combout\,
	datad => \blue~4_combout\,
	combout => \red~2_combout\);

-- Location: FF_X19_Y14_N3
\red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(1));

-- Location: LCCOMB_X18_Y14_N4
\red~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~3_combout\ = (!\ramreader~27_combout\ & (\glow~q\ & (\ramreader~29_combout\ & !\Equal4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ramreader~27_combout\,
	datab => \glow~q\,
	datac => \ramreader~29_combout\,
	datad => \Equal4~10_combout\,
	combout => \red~3_combout\);

-- Location: LCCOMB_X22_Y13_N8
\sample_MIN~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~9_combout\ = (!\U1|Equal1~2_combout\ & \Add8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datac => \Add8~18_combout\,
	combout => \sample_MIN~9_combout\);

-- Location: LCCOMB_X22_Y15_N24
\sample_MIN~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~11_combout\ = (!\U1|Equal1~2_combout\ & \Add8~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datad => \Add8~34_combout\,
	combout => \sample_MIN~11_combout\);

-- Location: FF_X22_Y15_N25
\sample_MIN[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~11_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(17));

-- Location: LCCOMB_X22_Y15_N28
\sample_MIN~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~13_combout\ = (!\U1|Equal1~2_combout\ & \Add8~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datad => \Add8~30_combout\,
	combout => \sample_MIN~13_combout\);

-- Location: FF_X22_Y15_N29
\sample_MIN[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~13_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(15));

-- Location: LCCOMB_X21_Y15_N24
\sample_MIN~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~14_combout\ = (!\U1|Equal1~2_combout\ & \Add8~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datac => \Add8~28_combout\,
	combout => \sample_MIN~14_combout\);

-- Location: FF_X22_Y15_N31
\sample_MIN[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	asdata => \sample_MIN~14_combout\,
	sload => VCC,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(14));

-- Location: LCCOMB_X23_Y15_N6
\sample_MIN~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~15_combout\ = (!\U1|Equal1~2_combout\ & \Add8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datad => \Add8~26_combout\,
	combout => \sample_MIN~15_combout\);

-- Location: LCCOMB_X23_Y15_N30
\sample_MIN[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN[13]~feeder_combout\ = \sample_MIN~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_MIN~15_combout\,
	combout => \sample_MIN[13]~feeder_combout\);

-- Location: FF_X23_Y15_N31
\sample_MIN[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN[13]~feeder_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(13));

-- Location: LCCOMB_X23_Y15_N22
\sample_MIN~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~18_combout\ = (!\U1|Equal1~2_combout\ & \Add8~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datad => \Add8~22_combout\,
	combout => \sample_MIN~18_combout\);

-- Location: FF_X23_Y15_N23
\sample_MIN[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~18_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(11));

-- Location: LCCOMB_X22_Y16_N2
\sample_MIN~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~10_combout\ = (!\U1|Equal1~2_combout\ & \Add8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datad => \Add8~16_combout\,
	combout => \sample_MIN~10_combout\);

-- Location: LCCOMB_X22_Y16_N12
\sample_MIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN[8]~feeder_combout\ = \sample_MIN~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_MIN~10_combout\,
	combout => \sample_MIN[8]~feeder_combout\);

-- Location: FF_X22_Y16_N13
\sample_MIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN[8]~feeder_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(8));

-- Location: LCCOMB_X22_Y14_N10
\sample_MIN~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~6_combout\ = (!\U1|Equal1~2_combout\ & \Add8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datad => \Add8~8_combout\,
	combout => \sample_MIN~6_combout\);

-- Location: FF_X22_Y14_N11
\sample_MIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~6_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(4));

-- Location: LCCOMB_X23_Y14_N18
\sample_MIN~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~4_combout\ = (!\U1|Equal1~2_combout\ & \Add8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal1~2_combout\,
	datad => \Add8~4_combout\,
	combout => \sample_MIN~4_combout\);

-- Location: FF_X23_Y14_N19
\sample_MIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~4_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(2));

-- Location: LCCOMB_X23_Y14_N22
\sample_MIN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~0_combout\ = (!\U1|Equal1~2_combout\ & \Add8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal1~2_combout\,
	datad => \Add8~2_combout\,
	combout => \sample_MIN~0_combout\);

-- Location: FF_X23_Y14_N23
\sample_MIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~0_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(1));

-- Location: LCCOMB_X23_Y15_N0
\sample_MIN~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~2_combout\ = (!\U1|Equal1~2_combout\ & \Add8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datad => \Add8~0_combout\,
	combout => \sample_MIN~2_combout\);

-- Location: FF_X23_Y15_N1
\sample_MIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~2_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(0));

-- Location: LCCOMB_X22_Y16_N14
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\Add8~0_combout\ & !sample_MIN(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => sample_MIN(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X22_Y16_N16
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\Add8~2_combout\ & (sample_MIN(1) & !\LessThan0~1_cout\)) # (!\Add8~2_combout\ & ((sample_MIN(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => sample_MIN(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X22_Y16_N18
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\Add8~4_combout\ & ((!\LessThan0~3_cout\) # (!sample_MIN(2)))) # (!\Add8~4_combout\ & (!sample_MIN(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => sample_MIN(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X22_Y16_N20
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((sample_MIN(3) & ((!\LessThan0~5_cout\) # (!\Add8~6_combout\))) # (!sample_MIN(3) & (!\Add8~6_combout\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MIN(3),
	datab => \Add8~6_combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X22_Y16_N22
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\Add8~8_combout\ & ((!\LessThan0~7_cout\) # (!sample_MIN(4)))) # (!\Add8~8_combout\ & (!sample_MIN(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datab => sample_MIN(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X22_Y16_N24
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((sample_MIN(5) & ((!\LessThan0~9_cout\) # (!\Add8~10_combout\))) # (!sample_MIN(5) & (!\Add8~10_combout\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MIN(5),
	datab => \Add8~10_combout\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X22_Y16_N26
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((sample_MIN(6) & (\Add8~12_combout\ & !\LessThan0~11_cout\)) # (!sample_MIN(6) & ((\Add8~12_combout\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MIN(6),
	datab => \Add8~12_combout\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X22_Y16_N28
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((sample_MIN(7) & ((!\LessThan0~13_cout\) # (!\Add8~14_combout\))) # (!sample_MIN(7) & (!\Add8~14_combout\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MIN(7),
	datab => \Add8~14_combout\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X22_Y16_N30
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\Add8~16_combout\ & ((!\LessThan0~15_cout\) # (!sample_MIN(8)))) # (!\Add8~16_combout\ & (!sample_MIN(8) & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~16_combout\,
	datab => sample_MIN(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X22_Y15_N0
\LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((sample_MIN(9) & ((!\LessThan0~17_cout\) # (!\Add8~18_combout\))) # (!sample_MIN(9) & (!\Add8~18_combout\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MIN(9),
	datab => \Add8~18_combout\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X22_Y15_N2
\LessThan0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((sample_MIN(10) & (\Add8~20_combout\ & !\LessThan0~19_cout\)) # (!sample_MIN(10) & ((\Add8~20_combout\) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MIN(10),
	datab => \Add8~20_combout\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X22_Y15_N4
\LessThan0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\Add8~22_combout\ & (sample_MIN(11) & !\LessThan0~21_cout\)) # (!\Add8~22_combout\ & ((sample_MIN(11)) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~22_combout\,
	datab => sample_MIN(11),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X22_Y15_N6
\LessThan0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((sample_MIN(12) & (\Add8~24_combout\ & !\LessThan0~23_cout\)) # (!sample_MIN(12) & ((\Add8~24_combout\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MIN(12),
	datab => \Add8~24_combout\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X22_Y15_N8
\LessThan0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\Add8~26_combout\ & (sample_MIN(13) & !\LessThan0~25_cout\)) # (!\Add8~26_combout\ & ((sample_MIN(13)) # (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~26_combout\,
	datab => sample_MIN(13),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X22_Y15_N10
\LessThan0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\Add8~28_combout\ & ((!\LessThan0~27_cout\) # (!sample_MIN(14)))) # (!\Add8~28_combout\ & (!sample_MIN(14) & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~28_combout\,
	datab => sample_MIN(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X22_Y15_N12
\LessThan0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\Add8~30_combout\ & (sample_MIN(15) & !\LessThan0~29_cout\)) # (!\Add8~30_combout\ & ((sample_MIN(15)) # (!\LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~30_combout\,
	datab => sample_MIN(15),
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X22_Y15_N14
\LessThan0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((sample_MIN(16) & (\Add8~32_combout\ & !\LessThan0~31_cout\)) # (!sample_MIN(16) & ((\Add8~32_combout\) # (!\LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MIN(16),
	datab => \Add8~32_combout\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X22_Y15_N16
\LessThan0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\Add8~34_combout\ & (sample_MIN(17) & !\LessThan0~33_cout\)) # (!\Add8~34_combout\ & ((sample_MIN(17)) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~34_combout\,
	datab => sample_MIN(17),
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X22_Y15_N18
\LessThan0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~36_combout\ = (sample_MIN(18) & (\Add8~36_combout\ & !\LessThan0~35_cout\)) # (!sample_MIN(18) & ((\Add8~36_combout\) # (!\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MIN(18),
	datab => \Add8~36_combout\,
	cin => \LessThan0~35_cout\,
	combout => \LessThan0~36_combout\);

-- Location: LCCOMB_X22_Y15_N30
\sample_MIN[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN[15]~1_combout\ = (\U1|Equal1~2_combout\) # ((!\Add8~36_combout\ & \LessThan0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~2_combout\,
	datab => \Add8~36_combout\,
	datad => \LessThan0~36_combout\,
	combout => \sample_MIN[15]~1_combout\);

-- Location: FF_X22_Y13_N9
\sample_MIN[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~9_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(9));

-- Location: LCCOMB_X21_Y16_N12
\Equal9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~5_combout\ = (\Add10~18_combout\ & (sample_MIN(9) & (sample_MIN(8) $ (!\Add10~16_combout\)))) # (!\Add10~18_combout\ & (!sample_MIN(9) & (sample_MIN(8) $ (!\Add10~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~18_combout\,
	datab => sample_MIN(9),
	datac => sample_MIN(8),
	datad => \Add10~16_combout\,
	combout => \Equal9~5_combout\);

-- Location: LCCOMB_X23_Y15_N24
\sample_MIN~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~16_combout\ = (!\U1|Equal1~2_combout\ & \Add8~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datad => \Add8~24_combout\,
	combout => \sample_MIN~16_combout\);

-- Location: FF_X23_Y15_N25
\sample_MIN[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~16_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(12));

-- Location: LCCOMB_X23_Y14_N26
\Equal9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~6_combout\ = (!sample_MIN(10) & (!sample_MIN(11) & (!sample_MIN(13) & !sample_MIN(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sample_MIN(10),
	datab => sample_MIN(11),
	datac => sample_MIN(13),
	datad => sample_MIN(12),
	combout => \Equal9~6_combout\);

-- Location: LCCOMB_X22_Y15_N22
\sample_MIN~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~19_combout\ = (\Add8~36_combout\ & !\U1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~36_combout\,
	datad => \U1|Equal1~2_combout\,
	combout => \sample_MIN~19_combout\);

-- Location: FF_X22_Y15_N23
\sample_MIN[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~19_combout\,
	ena => \sample_MIN[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MIN(18));

-- Location: LCCOMB_X23_Y15_N28
\Equal9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~8_combout\ = (\Equal9~7_combout\ & (\Equal9~5_combout\ & (\Equal9~6_combout\ & !sample_MIN(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~7_combout\,
	datab => \Equal9~5_combout\,
	datac => \Equal9~6_combout\,
	datad => sample_MIN(18),
	combout => \Equal9~8_combout\);

-- Location: LCCOMB_X21_Y15_N20
\sample_MAX~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MAX~3_combout\ = (\U1|Equal1~2_combout\) # (\Add8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datac => \Add8~0_combout\,
	combout => \sample_MAX~3_combout\);

-- Location: FF_X21_Y15_N29
\sample_MAX[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	asdata => \sample_MIN~13_combout\,
	sload => VCC,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(15));

-- Location: FF_X23_Y15_N7
\sample_MAX[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~15_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(13));

-- Location: LCCOMB_X21_Y15_N22
\sample_MAX~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MAX~7_combout\ = (\U1|Equal1~2_combout\) # (\Add8~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datad => \Add8~22_combout\,
	combout => \sample_MAX~7_combout\);

-- Location: FF_X21_Y15_N23
\sample_MAX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MAX~7_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(11));

-- Location: LCCOMB_X22_Y15_N20
\sample_MIN~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~17_combout\ = (!\U1|Equal1~2_combout\ & \Add8~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datad => \Add8~20_combout\,
	combout => \sample_MIN~17_combout\);

-- Location: FF_X21_Y15_N3
\sample_MAX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	asdata => \sample_MIN~17_combout\,
	sload => VCC,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(10));

-- Location: LCCOMB_X22_Y16_N10
\sample_MIN~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~7_combout\ = (\Add8~14_combout\ & !\U1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~14_combout\,
	datad => \U1|Equal1~2_combout\,
	combout => \sample_MIN~7_combout\);

-- Location: LCCOMB_X22_Y16_N6
\sample_MAX[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MAX[7]~feeder_combout\ = \sample_MIN~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_MIN~7_combout\,
	combout => \sample_MAX[7]~feeder_combout\);

-- Location: FF_X22_Y16_N7
\sample_MAX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MAX[7]~feeder_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(7));

-- Location: LCCOMB_X21_Y14_N0
\sample_MAX~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MAX~5_combout\ = (\U1|Equal1~2_combout\) # (\Add8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal1~2_combout\,
	datad => \Add8~4_combout\,
	combout => \sample_MAX~5_combout\);

-- Location: FF_X21_Y14_N1
\sample_MAX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MAX~5_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(2));

-- Location: LCCOMB_X21_Y16_N14
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\Add8~0_combout\ & sample_MAX(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => sample_MAX(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X21_Y16_N16
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((sample_MAX(1) & (\Add8~2_combout\ & !\LessThan1~1_cout\)) # (!sample_MAX(1) & ((\Add8~2_combout\) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(1),
	datab => \Add8~2_combout\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X21_Y16_N18
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\Add8~4_combout\ & (sample_MAX(2) & !\LessThan1~3_cout\)) # (!\Add8~4_combout\ & ((sample_MAX(2)) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => sample_MAX(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X21_Y16_N20
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((sample_MAX(3) & (\Add8~6_combout\ & !\LessThan1~5_cout\)) # (!sample_MAX(3) & ((\Add8~6_combout\) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(3),
	datab => \Add8~6_combout\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X21_Y16_N22
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((sample_MAX(4) & ((!\LessThan1~7_cout\) # (!\Add8~8_combout\))) # (!sample_MAX(4) & (!\Add8~8_combout\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(4),
	datab => \Add8~8_combout\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X21_Y16_N24
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((sample_MAX(5) & (\Add8~10_combout\ & !\LessThan1~9_cout\)) # (!sample_MAX(5) & ((\Add8~10_combout\) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(5),
	datab => \Add8~10_combout\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X21_Y16_N26
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((sample_MAX(6) & ((!\LessThan1~11_cout\) # (!\Add8~12_combout\))) # (!sample_MAX(6) & (!\Add8~12_combout\ & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(6),
	datab => \Add8~12_combout\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X21_Y16_N28
\LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\Add8~14_combout\ & ((!\LessThan1~13_cout\) # (!sample_MAX(7)))) # (!\Add8~14_combout\ & (!sample_MAX(7) & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~14_combout\,
	datab => sample_MAX(7),
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X21_Y16_N30
\LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((sample_MAX(8) & ((!\LessThan1~15_cout\) # (!\Add8~16_combout\))) # (!sample_MAX(8) & (!\Add8~16_combout\ & !\LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(8),
	datab => \Add8~16_combout\,
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X21_Y15_N0
\LessThan1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~19_cout\ = CARRY((sample_MAX(9) & (\Add8~18_combout\ & !\LessThan1~17_cout\)) # (!sample_MAX(9) & ((\Add8~18_combout\) # (!\LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(9),
	datab => \Add8~18_combout\,
	datad => VCC,
	cin => \LessThan1~17_cout\,
	cout => \LessThan1~19_cout\);

-- Location: LCCOMB_X21_Y15_N2
\LessThan1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~21_cout\ = CARRY((\Add8~20_combout\ & (sample_MAX(10) & !\LessThan1~19_cout\)) # (!\Add8~20_combout\ & ((sample_MAX(10)) # (!\LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~20_combout\,
	datab => sample_MAX(10),
	datad => VCC,
	cin => \LessThan1~19_cout\,
	cout => \LessThan1~21_cout\);

-- Location: LCCOMB_X21_Y15_N4
\LessThan1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~23_cout\ = CARRY((\Add8~22_combout\ & ((!\LessThan1~21_cout\) # (!sample_MAX(11)))) # (!\Add8~22_combout\ & (!sample_MAX(11) & !\LessThan1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~22_combout\,
	datab => sample_MAX(11),
	datad => VCC,
	cin => \LessThan1~21_cout\,
	cout => \LessThan1~23_cout\);

-- Location: LCCOMB_X21_Y15_N6
\LessThan1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~25_cout\ = CARRY((sample_MAX(12) & ((!\LessThan1~23_cout\) # (!\Add8~24_combout\))) # (!sample_MAX(12) & (!\Add8~24_combout\ & !\LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(12),
	datab => \Add8~24_combout\,
	datad => VCC,
	cin => \LessThan1~23_cout\,
	cout => \LessThan1~25_cout\);

-- Location: LCCOMB_X21_Y15_N8
\LessThan1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~27_cout\ = CARRY((\Add8~26_combout\ & ((!\LessThan1~25_cout\) # (!sample_MAX(13)))) # (!\Add8~26_combout\ & (!sample_MAX(13) & !\LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~26_combout\,
	datab => sample_MAX(13),
	datad => VCC,
	cin => \LessThan1~25_cout\,
	cout => \LessThan1~27_cout\);

-- Location: LCCOMB_X21_Y15_N10
\LessThan1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~29_cout\ = CARRY((sample_MAX(14) & ((!\LessThan1~27_cout\) # (!\Add8~28_combout\))) # (!sample_MAX(14) & (!\Add8~28_combout\ & !\LessThan1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(14),
	datab => \Add8~28_combout\,
	datad => VCC,
	cin => \LessThan1~27_cout\,
	cout => \LessThan1~29_cout\);

-- Location: LCCOMB_X21_Y15_N12
\LessThan1~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~31_cout\ = CARRY((\Add8~30_combout\ & ((!\LessThan1~29_cout\) # (!sample_MAX(15)))) # (!\Add8~30_combout\ & (!sample_MAX(15) & !\LessThan1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~30_combout\,
	datab => sample_MAX(15),
	datad => VCC,
	cin => \LessThan1~29_cout\,
	cout => \LessThan1~31_cout\);

-- Location: LCCOMB_X21_Y15_N14
\LessThan1~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~33_cout\ = CARRY((sample_MAX(16) & ((!\LessThan1~31_cout\) # (!\Add8~32_combout\))) # (!sample_MAX(16) & (!\Add8~32_combout\ & !\LessThan1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(16),
	datab => \Add8~32_combout\,
	datad => VCC,
	cin => \LessThan1~31_cout\,
	cout => \LessThan1~33_cout\);

-- Location: LCCOMB_X21_Y15_N16
\LessThan1~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~35_cout\ = CARRY((sample_MAX(17) & (\Add8~34_combout\ & !\LessThan1~33_cout\)) # (!sample_MAX(17) & ((\Add8~34_combout\) # (!\LessThan1~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(17),
	datab => \Add8~34_combout\,
	datad => VCC,
	cin => \LessThan1~33_cout\,
	cout => \LessThan1~35_cout\);

-- Location: LCCOMB_X21_Y15_N18
\LessThan1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~36_combout\ = (sample_MAX(18) & ((!\Add8~36_combout\) # (!\LessThan1~35_cout\))) # (!sample_MAX(18) & (!\LessThan1~35_cout\ & !\Add8~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(18),
	datad => \Add8~36_combout\,
	cin => \LessThan1~35_cout\,
	combout => \LessThan1~36_combout\);

-- Location: LCCOMB_X21_Y15_N28
\sample_MAX[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MAX[15]~0_combout\ = (\U1|Equal1~2_combout\) # ((\Add8~36_combout\) # (\LessThan1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~2_combout\,
	datab => \Add8~36_combout\,
	datad => \LessThan1~36_combout\,
	combout => \sample_MAX[15]~0_combout\);

-- Location: FF_X21_Y15_N21
\sample_MAX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MAX~3_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(0));

-- Location: LCCOMB_X23_Y14_N16
\sample_MAX~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MAX~2_combout\ = (\U1|Equal1~2_combout\) # (\Add8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal1~2_combout\,
	datad => \Add8~2_combout\,
	combout => \sample_MAX~2_combout\);

-- Location: FF_X23_Y14_N17
\sample_MAX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MAX~2_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(1));

-- Location: LCCOMB_X23_Y15_N8
\Equal10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (\Add10~0_combout\ & (sample_MAX(0) & (sample_MAX(1) $ (!\Add10~2_combout\)))) # (!\Add10~0_combout\ & (!sample_MAX(0) & (sample_MAX(1) $ (!\Add10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => sample_MAX(0),
	datac => sample_MAX(1),
	datad => \Add10~2_combout\,
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X19_Y15_N10
\sample_MIN~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~8_combout\ = (!\U1|Equal1~2_combout\ & \Add8~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal1~2_combout\,
	datad => \Add8~12_combout\,
	combout => \sample_MIN~8_combout\);

-- Location: LCCOMB_X19_Y15_N20
\sample_MAX[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MAX[6]~feeder_combout\ = \sample_MIN~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_MIN~8_combout\,
	combout => \sample_MAX[6]~feeder_combout\);

-- Location: FF_X19_Y15_N21
\sample_MAX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MAX[6]~feeder_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(6));

-- Location: LCCOMB_X19_Y15_N8
\Equal10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = (\Equal10~2_combout\ & (\Equal10~1_combout\ & (\Add10~12_combout\ $ (!sample_MAX(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~2_combout\,
	datab => \Equal10~1_combout\,
	datac => \Add10~12_combout\,
	datad => sample_MAX(6),
	combout => \Equal10~3_combout\);

-- Location: LCCOMB_X22_Y16_N0
\sample_MAX~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MAX~1_combout\ = (\Add8~8_combout\) # (\U1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~8_combout\,
	datad => \U1|Equal1~2_combout\,
	combout => \sample_MAX~1_combout\);

-- Location: FF_X22_Y16_N1
\sample_MAX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MAX~1_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(4));

-- Location: LCCOMB_X21_Y16_N2
\Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (sample_MAX(5) & (\Add10~10_combout\ & (sample_MAX(4) $ (!\Add10~8_combout\)))) # (!sample_MAX(5) & (!\Add10~10_combout\ & (sample_MAX(4) $ (!\Add10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(5),
	datab => \Add10~10_combout\,
	datac => sample_MAX(4),
	datad => \Add10~8_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X21_Y16_N8
\Equal10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~4_combout\ = (\Equal10~3_combout\ & (\Equal10~0_combout\ & (sample_MAX(7) $ (!\Add10~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(7),
	datab => \Add10~14_combout\,
	datac => \Equal10~3_combout\,
	datad => \Equal10~0_combout\,
	combout => \Equal10~4_combout\);

-- Location: LCCOMB_X18_Y16_N26
\Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add10~18_combout\ = \Add10~17\ $ (!\U1|vcs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|vcs\(9),
	cin => \Add10~17\,
	combout => \Add10~18_combout\);

-- Location: FF_X22_Y16_N3
\sample_MAX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \sample_MIN~10_combout\,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(8));

-- Location: LCCOMB_X21_Y16_N10
\Equal10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~5_combout\ = (sample_MAX(9) & (\Add10~18_combout\ & (\Add10~16_combout\ $ (!sample_MAX(8))))) # (!sample_MAX(9) & (!\Add10~18_combout\ & (\Add10~16_combout\ $ (!sample_MAX(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(9),
	datab => \Add10~16_combout\,
	datac => \Add10~18_combout\,
	datad => sample_MAX(8),
	combout => \Equal10~5_combout\);

-- Location: FF_X21_Y15_N17
\sample_MAX[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	asdata => \sample_MIN~11_combout\,
	sload => VCC,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(17));

-- Location: LCCOMB_X22_Y15_N26
\sample_MIN~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sample_MIN~12_combout\ = (\Add8~32_combout\ & !\U1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~32_combout\,
	datad => \U1|Equal1~2_combout\,
	combout => \sample_MIN~12_combout\);

-- Location: FF_X21_Y15_N15
\sample_MAX[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	asdata => \sample_MIN~12_combout\,
	sload => VCC,
	ena => \sample_MAX[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_MAX(16));

-- Location: LCCOMB_X21_Y15_N30
\Equal10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~6_combout\ = (!sample_MAX(18) & (!sample_MAX(17) & (!sample_MAX(16) & !sample_MAX(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sample_MAX(18),
	datab => sample_MAX(17),
	datac => sample_MAX(16),
	datad => sample_MAX(15),
	combout => \Equal10~6_combout\);

-- Location: LCCOMB_X23_Y15_N12
\Equal10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~8_combout\ = (\Equal10~7_combout\ & (!sample_MAX(10) & (\Equal10~5_combout\ & \Equal10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~7_combout\,
	datab => sample_MAX(10),
	datac => \Equal10~5_combout\,
	datad => \Equal10~6_combout\,
	combout => \Equal10~8_combout\);

-- Location: LCCOMB_X23_Y15_N18
\ramreader~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ramreader~30_combout\ = (\Equal9~4_combout\ & ((\Equal9~8_combout\) # ((\Equal10~4_combout\ & \Equal10~8_combout\)))) # (!\Equal9~4_combout\ & (((\Equal10~4_combout\ & \Equal10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~4_combout\,
	datab => \Equal9~8_combout\,
	datac => \Equal10~4_combout\,
	datad => \Equal10~8_combout\,
	combout => \ramreader~30_combout\);

-- Location: LCCOMB_X18_Y14_N18
\red~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~4_combout\ = (\blue~0_combout\ & (!\blue~4_combout\ & !\ramreader~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blue~0_combout\,
	datac => \blue~4_combout\,
	datad => \ramreader~30_combout\,
	combout => \red~4_combout\);

-- Location: LCCOMB_X18_Y14_N20
\red~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~5_combout\ = (\red~4_combout\ & (\U6|red\(6))) # (!\red~4_combout\ & (((\U1|visible_img~1_combout\ & \red~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|red\(6),
	datab => \U1|visible_img~1_combout\,
	datac => \red~3_combout\,
	datad => \red~4_combout\,
	combout => \red~5_combout\);

-- Location: FF_X18_Y14_N21
\red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(2));

-- Location: LCCOMB_X17_Y14_N0
\red~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~6_combout\ = (\green~4_combout\ & (((\ramreader~30_combout\) # (\U6|red\(6))) # (!\ramreader~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ramreader~13_combout\,
	datab => \ramreader~30_combout\,
	datac => \U6|red\(6),
	datad => \green~4_combout\,
	combout => \red~6_combout\);

-- Location: LCCOMB_X17_Y14_N24
\red~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~7_combout\ = (\red~6_combout\) # ((\U1|visible_img~1_combout\ & \Equal4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|visible_img~1_combout\,
	datac => \Equal4~10_combout\,
	datad => \red~6_combout\,
	combout => \red~7_combout\);

-- Location: FF_X17_Y14_N25
\red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(3));

-- Location: LCCOMB_X17_Y14_N26
\red~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~8_combout\ = (\glow~q\ & (\blue~0_combout\ & \ramreader~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \glow~q\,
	datab => \blue~0_combout\,
	datac => \ramreader~27_combout\,
	combout => \red~8_combout\);

-- Location: FF_X17_Y14_N27
\red[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(4));

-- Location: LCCOMB_X18_Y14_N6
\red~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~9_combout\ = (\red~4_combout\ & (((\U6|red\(5))))) # (!\red~4_combout\ & (\U1|visible_img~1_combout\ & ((!\red~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|visible_img~1_combout\,
	datab => \U6|red\(5),
	datac => \red~3_combout\,
	datad => \red~4_combout\,
	combout => \red~9_combout\);

-- Location: FF_X18_Y14_N7
\red[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(5));

-- Location: LCCOMB_X17_Y14_N12
\red~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~10_combout\ = (\red~6_combout\) # ((\U1|visible_img~1_combout\ & !\green~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|visible_img~1_combout\,
	datac => \green~4_combout\,
	datad => \red~6_combout\,
	combout => \red~10_combout\);

-- Location: FF_X17_Y14_N13
\red[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(6));

-- Location: LCCOMB_X19_Y14_N10
\red~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~11_combout\ = (\ramreader~30_combout\ & (((\U1|visible_img~1_combout\)))) # (!\ramreader~30_combout\ & (\U6|red\(7) & ((\blue~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ramreader~30_combout\,
	datab => \U6|red\(7),
	datac => \U1|visible_img~1_combout\,
	datad => \blue~0_combout\,
	combout => \red~11_combout\);

-- Location: LCCOMB_X18_Y14_N0
\red~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~12_combout\ = (\U1|visible_img~1_combout\ & ((\Equal4~10_combout\) # ((!\blue~4_combout\ & \red~11_combout\)))) # (!\U1|visible_img~1_combout\ & (!\blue~4_combout\ & (\red~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|visible_img~1_combout\,
	datab => \blue~4_combout\,
	datac => \red~11_combout\,
	datad => \Equal4~10_combout\,
	combout => \red~12_combout\);

-- Location: FF_X18_Y14_N1
\red[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(7));

-- Location: LCCOMB_X14_Y12_N12
\U1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~0_combout\ = (!\U1|hcs\(9) & (!\U1|hcs\(8) & ((!\U1|hcs\(5)) # (!\U1|hcs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(9),
	datab => \U1|hcs\(8),
	datac => \U1|hcs\(6),
	datad => \U1|hcs\(5),
	combout => \U1|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y12_N26
\U1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~1_combout\ = (\U1|LessThan0~0_combout\ & !\U1|hcs\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan0~0_combout\,
	datac => \U1|hcs\(7),
	combout => \U1|LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y12_N22
\U6|colorgen~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U6|colorgen~0_combout\ = (!\U1|vcs\(3) & (!\U1|vcs\(1) & !\U1|vcs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(3),
	datac => \U1|vcs\(1),
	datad => \U1|vcs\(2),
	combout => \U6|colorgen~0_combout\);

-- Location: LCCOMB_X18_Y12_N28
\U1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan1~0_combout\ = ((\U1|vcs\(9)) # ((\U1|vcs\(4)) # (!\U1|Equal1~0_combout\))) # (!\U6|colorgen~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|colorgen~0_combout\,
	datab => \U1|vcs\(9),
	datac => \U1|vcs\(4),
	datad => \U1|Equal1~0_combout\,
	combout => \U1|LessThan1~0_combout\);

-- Location: LCCOMB_X17_Y13_N8
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \counter32:prescaler[0]~q\ $ (VCC)
-- \Add2~1\ = CARRY(\counter32:prescaler[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter32:prescaler[0]~q\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: FF_X17_Y13_N9
\counter32:prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[0]~q\);

-- Location: LCCOMB_X17_Y13_N10
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\counter32:prescaler[1]~q\ & (!\Add2~1\)) # (!\counter32:prescaler[1]~q\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\counter32:prescaler[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[1]~q\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X17_Y13_N14
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\counter32:prescaler[3]~q\ & (!\Add2~5\)) # (!\counter32:prescaler[3]~q\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\counter32:prescaler[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter32:prescaler[3]~q\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X17_Y13_N15
\counter32:prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[3]~q\);

-- Location: LCCOMB_X17_Y13_N16
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\counter32:prescaler[4]~q\ & (\Add2~7\ $ (GND))) # (!\counter32:prescaler[4]~q\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\counter32:prescaler[4]~q\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter32:prescaler[4]~q\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X17_Y13_N17
\counter32:prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[4]~q\);

-- Location: LCCOMB_X17_Y13_N18
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\counter32:prescaler[5]~q\ & (!\Add2~9\)) # (!\counter32:prescaler[5]~q\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\counter32:prescaler[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter32:prescaler[5]~q\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X17_Y13_N19
\counter32:prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[5]~q\);

-- Location: LCCOMB_X17_Y13_N20
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\counter32:prescaler[6]~q\ & (\Add2~11\ $ (GND))) # (!\counter32:prescaler[6]~q\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\counter32:prescaler[6]~q\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter32:prescaler[6]~q\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X17_Y13_N21
\counter32:prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[6]~q\);

-- Location: LCCOMB_X17_Y13_N22
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\counter32:prescaler[7]~q\ & (!\Add2~13\)) # (!\counter32:prescaler[7]~q\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\counter32:prescaler[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[7]~q\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X17_Y13_N24
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\counter32:prescaler[8]~q\ & (\Add2~15\ $ (GND))) # (!\counter32:prescaler[8]~q\ & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((\counter32:prescaler[8]~q\ & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter32:prescaler[8]~q\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X17_Y13_N25
\counter32:prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[8]~q\);

-- Location: LCCOMB_X17_Y13_N26
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\counter32:prescaler[9]~q\ & (!\Add2~17\)) # (!\counter32:prescaler[9]~q\ & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!\counter32:prescaler[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[9]~q\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X17_Y13_N28
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\counter32:prescaler[10]~q\ & (\Add2~19\ $ (GND))) # (!\counter32:prescaler[10]~q\ & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((\counter32:prescaler[10]~q\ & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[10]~q\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X17_Y12_N0
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\counter32:prescaler[12]~q\ & (\Add2~23\ $ (GND))) # (!\counter32:prescaler[12]~q\ & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((\counter32:prescaler[12]~q\ & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter32:prescaler[12]~q\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X17_Y12_N1
\counter32:prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[12]~q\);

-- Location: LCCOMB_X17_Y12_N4
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\counter32:prescaler[14]~q\ & (\Add2~27\ $ (GND))) # (!\counter32:prescaler[14]~q\ & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((\counter32:prescaler[14]~q\ & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter32:prescaler[14]~q\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X17_Y12_N5
\counter32:prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[14]~q\);

-- Location: LCCOMB_X17_Y12_N8
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\counter32:prescaler[16]~q\ & (\Add2~31\ $ (GND))) # (!\counter32:prescaler[16]~q\ & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((\counter32:prescaler[16]~q\ & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter32:prescaler[16]~q\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: FF_X17_Y12_N9
\counter32:prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[16]~q\);

-- Location: LCCOMB_X17_Y12_N10
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\counter32:prescaler[17]~q\ & (!\Add2~33\)) # (!\counter32:prescaler[17]~q\ & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!\counter32:prescaler[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[17]~q\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X17_Y12_N12
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (\counter32:prescaler[18]~q\ & (\Add2~35\ $ (GND))) # (!\counter32:prescaler[18]~q\ & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((\counter32:prescaler[18]~q\ & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter32:prescaler[18]~q\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X17_Y13_N27
\counter32:prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[9]~q\);

-- Location: LCCOMB_X17_Y12_N28
\prescaler~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~20_combout\ = (\Add2~20_combout\ & (((!\Equal1~4_combout\) # (!\Equal1~6_combout\)) # (!\Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal1~6_combout\,
	datac => \Equal1~4_combout\,
	datad => \Add2~20_combout\,
	combout => \prescaler~20_combout\);

-- Location: FF_X17_Y12_N29
\counter32:prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \prescaler~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[10]~q\);

-- Location: LCCOMB_X17_Y13_N0
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\counter32:prescaler[11]~q\ & (\counter32:prescaler[8]~q\ & (\counter32:prescaler[9]~q\ & !\counter32:prescaler[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[11]~q\,
	datab => \counter32:prescaler[8]~q\,
	datac => \counter32:prescaler[9]~q\,
	datad => \counter32:prescaler[10]~q\,
	combout => \Equal1~2_combout\);

-- Location: FF_X17_Y13_N11
\counter32:prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[1]~q\);

-- Location: LCCOMB_X17_Y13_N4
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\counter32:prescaler[2]~q\ & (\counter32:prescaler[3]~q\ & (\counter32:prescaler[0]~q\ & \counter32:prescaler[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[2]~q\,
	datab => \counter32:prescaler[3]~q\,
	datac => \counter32:prescaler[0]~q\,
	datad => \counter32:prescaler[1]~q\,
	combout => \Equal1~0_combout\);

-- Location: FF_X17_Y13_N23
\counter32:prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[7]~q\);

-- Location: LCCOMB_X17_Y13_N2
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\counter32:prescaler[4]~q\ & (\counter32:prescaler[5]~q\ & (\counter32:prescaler[7]~q\ & \counter32:prescaler[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[4]~q\,
	datab => \counter32:prescaler[5]~q\,
	datac => \counter32:prescaler[7]~q\,
	datad => \counter32:prescaler[6]~q\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X17_Y13_N6
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~2_combout\ & (\Equal1~0_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X16_Y12_N6
\prescaler~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~22_combout\ = (\Add2~36_combout\ & (((!\Equal1~6_combout\) # (!\Equal1~4_combout\)) # (!\Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Add2~36_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~6_combout\,
	combout => \prescaler~22_combout\);

-- Location: FF_X16_Y12_N7
\counter32:prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \prescaler~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[18]~q\);

-- Location: LCCOMB_X17_Y12_N14
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\counter32:prescaler[19]~q\ & (!\Add2~37\)) # (!\counter32:prescaler[19]~q\ & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!\counter32:prescaler[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter32:prescaler[19]~q\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: FF_X17_Y12_N15
\counter32:prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[19]~q\);

-- Location: LCCOMB_X17_Y12_N16
\Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (\counter32:prescaler[20]~q\ & (\Add2~39\ $ (GND))) # (!\counter32:prescaler[20]~q\ & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((\counter32:prescaler[20]~q\ & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[20]~q\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X17_Y12_N18
\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\counter32:prescaler[21]~q\ & (!\Add2~41\)) # (!\counter32:prescaler[21]~q\ & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!\counter32:prescaler[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter32:prescaler[21]~q\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: FF_X17_Y12_N11
\counter32:prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[17]~q\);

-- Location: LCCOMB_X17_Y12_N30
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\counter32:prescaler[16]~q\ & (!\counter32:prescaler[19]~q\ & (\counter32:prescaler[18]~q\ & !\counter32:prescaler[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[16]~q\,
	datab => \counter32:prescaler[19]~q\,
	datac => \counter32:prescaler[18]~q\,
	datad => \counter32:prescaler[17]~q\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X16_Y12_N22
\prescaler~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~24_combout\ = (\Add2~42_combout\ & (((!\Equal1~6_combout\) # (!\Equal1~5_combout\)) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Add2~42_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~6_combout\,
	combout => \prescaler~24_combout\);

-- Location: FF_X16_Y12_N23
\counter32:prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \prescaler~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[21]~q\);

-- Location: LCCOMB_X17_Y12_N20
\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (\counter32:prescaler[22]~q\ & (\Add2~43\ $ (GND))) # (!\counter32:prescaler[22]~q\ & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((\counter32:prescaler[22]~q\ & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[22]~q\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X17_Y12_N22
\Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = \Add2~45\ $ (\counter32:prescaler[23]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \counter32:prescaler[23]~q\,
	cin => \Add2~45\,
	combout => \Add2~46_combout\);

-- Location: LCCOMB_X16_Y12_N2
\prescaler~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~26_combout\ = (\Add2~46_combout\ & (((!\Equal1~6_combout\) # (!\Equal1~5_combout\)) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Add2~46_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~6_combout\,
	combout => \prescaler~26_combout\);

-- Location: FF_X16_Y12_N3
\counter32:prescaler[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \prescaler~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[23]~q\);

-- Location: LCCOMB_X16_Y12_N8
\prescaler~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~25_combout\ = (\Add2~44_combout\ & (((!\Equal1~4_combout\) # (!\Equal1~6_combout\)) # (!\Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal1~6_combout\,
	datac => \Equal1~4_combout\,
	datad => \Add2~44_combout\,
	combout => \prescaler~25_combout\);

-- Location: FF_X16_Y12_N9
\counter32:prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \prescaler~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[22]~q\);

-- Location: LCCOMB_X16_Y12_N16
\prescaler~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prescaler~23_combout\ = (\Add2~40_combout\ & (((!\Equal1~6_combout\) # (!\Equal1~5_combout\)) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Add2~40_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~6_combout\,
	combout => \prescaler~23_combout\);

-- Location: FF_X16_Y12_N17
\counter32:prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \prescaler~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter32:prescaler[20]~q\);

-- Location: LCCOMB_X16_Y12_N24
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\counter32:prescaler[21]~q\ & (\counter32:prescaler[23]~q\ & (\counter32:prescaler[22]~q\ & \counter32:prescaler[20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter32:prescaler[21]~q\,
	datab => \counter32:prescaler[23]~q\,
	datac => \counter32:prescaler[22]~q\,
	datad => \counter32:prescaler[20]~q\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X16_Y11_N2
\Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (\Equal1~5_combout\ & (\Equal1~6_combout\ & \Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datac => \Equal1~6_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X16_Y12_N28
\count32[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count32[0]~4_combout\ = count32(0) $ (((\Equal1~4_combout\ & (\Equal1~6_combout\ & \Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~6_combout\,
	datac => count32(0),
	datad => \Equal1~5_combout\,
	combout => \count32[0]~4_combout\);

-- Location: FF_X16_Y12_N29
\count32[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \count32[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count32(0));

-- Location: LCCOMB_X16_Y12_N12
\count32[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count32[2]~2_combout\ = count32(2) $ (((count32(1) & (\Equal1~7_combout\ & count32(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count32(1),
	datab => \Equal1~7_combout\,
	datac => count32(2),
	datad => count32(0),
	combout => \count32[2]~2_combout\);

-- Location: FF_X16_Y12_N13
\count32[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \count32[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count32(2));

-- Location: LCCOMB_X16_Y12_N14
\count32[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count32[1]~3_combout\ = count32(1) $ (((\Equal1~7_combout\ & count32(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~7_combout\,
	datac => count32(1),
	datad => count32(0),
	combout => \count32[1]~3_combout\);

-- Location: FF_X16_Y12_N15
\count32[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \count32[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count32(1));

-- Location: LCCOMB_X16_Y11_N20
\count32[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count32[3]~0_combout\ = (\Equal1~7_combout\ & (count32(2) & (count32(0) & count32(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datab => count32(2),
	datac => count32(0),
	datad => count32(1),
	combout => \count32[3]~0_combout\);

-- Location: LCCOMB_X16_Y11_N10
\count32[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count32[3]~1_combout\ = count32(3) $ (\count32[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count32(3),
	datad => \count32[3]~0_combout\,
	combout => \count32[3]~1_combout\);

-- Location: FF_X16_Y11_N11
\count32[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \count32[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count32(3));

-- Location: LCCOMB_X16_Y11_N18
\count25[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count25[1]~3_combout\ = count25(1) $ (((\glow~q\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \glow~q\,
	datac => count25(1),
	datad => \Equal2~6_combout\,
	combout => \count25[1]~3_combout\);

-- Location: FF_X16_Y11_N19
\count25[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \count25[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count25(1));

-- Location: LCCOMB_X16_Y11_N22
\count25[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count25[2]~2_combout\ = count25(2) $ (((\Equal2~6_combout\ & (count25(1) & \glow~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~6_combout\,
	datab => count25(1),
	datac => count25(2),
	datad => \glow~q\,
	combout => \count25[2]~2_combout\);

-- Location: FF_X16_Y11_N23
\count25[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \count25[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count25(2));

-- Location: LCCOMB_X16_Y11_N28
\count25[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count25[3]~0_combout\ = (\Equal2~6_combout\ & (count25(1) & (count25(2) & \glow~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~6_combout\,
	datab => count25(1),
	datac => count25(2),
	datad => \glow~q\,
	combout => \count25[3]~0_combout\);

-- Location: LCCOMB_X16_Y11_N0
\count25[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count25[3]~1_combout\ = count25(3) $ (\count25[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count25(3),
	datad => \count25[3]~0_combout\,
	combout => \count25[3]~1_combout\);

-- Location: FF_X16_Y11_N1
\count25[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \count25[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count25(3));

-- Location: LCCOMB_X16_Y11_N4
\LED~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~0_combout\ = (\SW~input_o\ & ((count25(3)))) # (!\SW~input_o\ & (count32(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count32(3),
	datac => \SW~input_o\,
	datad => count25(3),
	combout => \LED~0_combout\);

-- Location: LCCOMB_X16_Y11_N12
\LED~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~1_combout\ = (\SW~input_o\ & (count25(2))) # (!\SW~input_o\ & ((count32(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count25(2),
	datac => \SW~input_o\,
	datad => count32(2),
	combout => \LED~1_combout\);

-- Location: LCCOMB_X16_Y11_N24
\LED~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~2_combout\ = (\SW~input_o\ & (count25(1))) # (!\SW~input_o\ & ((count32(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count25(1),
	datac => \SW~input_o\,
	datad => count32(1),
	combout => \LED~2_combout\);

-- Location: LCCOMB_X16_Y11_N26
\LED~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~3_combout\ = (\SW~input_o\ & ((\glow~q\))) # (!\SW~input_o\ & (count32(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count32(0),
	datac => \SW~input_o\,
	datad => \glow~q\,
	combout => \LED~3_combout\);

-- Location: IOIBUF_X23_Y24_N1
\KEY[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\RAM_DQ[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => RAM_DQ(0),
	o => \RAM_DQ[0]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\RAM_DQ[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => RAM_DQ(1),
	o => \RAM_DQ[1]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\RAM_DQ[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => RAM_DQ(2),
	o => \RAM_DQ[2]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\RAM_DQ[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => RAM_DQ(3),
	o => \RAM_DQ[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\RAM_DQ[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => RAM_DQ(4),
	o => \RAM_DQ[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\RAM_DQ[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => RAM_DQ(5),
	o => \RAM_DQ[5]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\RAM_DQ[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => RAM_DQ(6),
	o => \RAM_DQ[6]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\RAM_DQ[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => RAM_DQ(7),
	o => \RAM_DQ[7]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\SDA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDA,
	o => \SDA~input_o\);

ww_RAM_nWE <= \RAM_nWE~output_o\;

ww_RAM_nCAS <= \RAM_nCAS~output_o\;

ww_RAM_nRAS <= \RAM_nRAS~output_o\;

ww_RAM_nCS <= \RAM_nCS~output_o\;

ww_RAM_BA0 <= \RAM_BA0~output_o\;

ww_RAM_BA1 <= \RAM_BA1~output_o\;

ww_RAM_DQM <= \RAM_DQM~output_o\;

ww_RAM_CKE <= \RAM_CKE~output_o\;

ww_RAM_CLK <= \RAM_CLK~output_o\;

ww_RAM_A(0) <= \RAM_A[0]~output_o\;

ww_RAM_A(1) <= \RAM_A[1]~output_o\;

ww_RAM_A(2) <= \RAM_A[2]~output_o\;

ww_RAM_A(3) <= \RAM_A[3]~output_o\;

ww_RAM_A(4) <= \RAM_A[4]~output_o\;

ww_RAM_A(5) <= \RAM_A[5]~output_o\;

ww_RAM_A(6) <= \RAM_A[6]~output_o\;

ww_RAM_A(7) <= \RAM_A[7]~output_o\;

ww_RAM_A(8) <= \RAM_A[8]~output_o\;

ww_RAM_A(9) <= \RAM_A[9]~output_o\;

ww_RAM_A(10) <= \RAM_A[10]~output_o\;

ww_RAM_A(11) <= \RAM_A[11]~output_o\;

ww_RAM_A(12) <= \RAM_A[12]~output_o\;

ww_AD_CLK <= \AD_CLK~output_o\;

ww_ADV_D(0) <= \ADV_D[0]~output_o\;

ww_ADV_D(1) <= \ADV_D[1]~output_o\;

ww_ADV_D(2) <= \ADV_D[2]~output_o\;

ww_ADV_D(3) <= \ADV_D[3]~output_o\;

ww_ADV_D(4) <= \ADV_D[4]~output_o\;

ww_ADV_D(5) <= \ADV_D[5]~output_o\;

ww_ADV_D(6) <= \ADV_D[6]~output_o\;

ww_ADV_D(7) <= \ADV_D[7]~output_o\;

ww_ADV_D(8) <= \ADV_D[8]~output_o\;

ww_ADV_D(9) <= \ADV_D[9]~output_o\;

ww_ADV_D(10) <= \ADV_D[10]~output_o\;

ww_ADV_D(11) <= \ADV_D[11]~output_o\;

ww_ADV_D(12) <= \ADV_D[12]~output_o\;

ww_ADV_D(13) <= \ADV_D[13]~output_o\;

ww_ADV_D(14) <= \ADV_D[14]~output_o\;

ww_ADV_D(15) <= \ADV_D[15]~output_o\;

ww_ADV_D(16) <= \ADV_D[16]~output_o\;

ww_ADV_D(17) <= \ADV_D[17]~output_o\;

ww_ADV_D(18) <= \ADV_D[18]~output_o\;

ww_ADV_D(19) <= \ADV_D[19]~output_o\;

ww_ADV_D(20) <= \ADV_D[20]~output_o\;

ww_ADV_D(21) <= \ADV_D[21]~output_o\;

ww_ADV_D(22) <= \ADV_D[22]~output_o\;

ww_ADV_D(23) <= \ADV_D[23]~output_o\;

ww_ADV_HSYNC <= \ADV_HSYNC~output_o\;

ww_ADV_CLK <= \ADV_CLK~output_o\;

ww_ADV_VSYNC <= \ADV_VSYNC~output_o\;

ww_ADV_I2SD <= \ADV_I2SD~output_o\;

ww_ADV_SCLK <= \ADV_SCLK~output_o\;

ww_ADV_LRCLK <= \ADV_LRCLK~output_o\;

ww_ADV_DE <= \ADV_DE~output_o\;

ww_SCL <= \SCL~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

RAM_DQ(0) <= \RAM_DQ[0]~output_o\;

RAM_DQ(1) <= \RAM_DQ[1]~output_o\;

RAM_DQ(2) <= \RAM_DQ[2]~output_o\;

RAM_DQ(3) <= \RAM_DQ[3]~output_o\;

RAM_DQ(4) <= \RAM_DQ[4]~output_o\;

RAM_DQ(5) <= \RAM_DQ[5]~output_o\;

RAM_DQ(6) <= \RAM_DQ[6]~output_o\;

RAM_DQ(7) <= \RAM_DQ[7]~output_o\;

SDA <= \SDA~output_o\;
END structure;


