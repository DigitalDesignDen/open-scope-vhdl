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

-- DATE "11/02/2024 00:57:19"

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
-- AD_data[8]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[9]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[10]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[11]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[6]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[7]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[4]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[5]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[0]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[2]	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[3]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_data[1]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~14_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~26_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add3~9_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \U2|count[1]~10_combout\ : std_logic;
SIGNAL \U2|count[2]~12_combout\ : std_logic;
SIGNAL \U2|count[6]~22\ : std_logic;
SIGNAL \U2|count[7]~23_combout\ : std_logic;
SIGNAL \U2|FSM:bit_count[2]~q\ : std_logic;
SIGNAL \U2|FSM:bit_count[2]~0_combout\ : std_logic;
SIGNAL \U1|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|visible_img~0_combout\ : std_logic;
SIGNAL \U1|visible_img~1_combout\ : std_logic;
SIGNAL \U1|visible_img~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][8]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][7]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][6]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][4]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][3]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][2]~7_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][1]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][4]~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][7]~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][6]~13_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][4]~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][2]~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][1]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[15]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[13]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~162_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~164_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~166_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~168_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~169_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~170_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~172_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~174_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~177_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~179_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[62]~181_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~184_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~187_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~188_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~195_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~197_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~200_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[76]~201_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~202_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~205_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~207_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~208_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~210_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[83]~211_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~213_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~215_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[94]~217_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[90]~221_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~224_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~226_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~227_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~228_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[99]~229_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[98]~230_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[97]~232_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~234_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~235_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~237_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~238_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~239_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~241_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~242_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~245_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~246_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~247_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~248_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~250_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~252_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~253_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~254_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~257_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~258_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~260_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[134]~262_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~268_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~270_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[4]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[3]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[1]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[6]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[7]~7_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|_~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[12]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[11]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[9]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[8]~12_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Equal1~11_combout\ : std_logic;
SIGNAL \Equal1~12_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Equal1~1_combout\ : std_logic;
SIGNAL \U2|Selector25~0_combout\ : std_logic;
SIGNAL \s_mainFSM_state.readSamples~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \s_ram_write_en~0_combout\ : std_logic;
SIGNAL \U2|Selector12~0_combout\ : std_logic;
SIGNAL \U2|Selector14~0_combout\ : std_logic;
SIGNAL \U2|Selector13~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \s_mainFSM_state.start~q\ : std_logic;
SIGNAL \U2|WideOr0~0_combout\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U2|Add0~2_combout\ : std_logic;
SIGNAL \U2|Selector19~0_combout\ : std_logic;
SIGNAL \U2|r_byte_to_send[5]~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \U5|s_state.belowLevel~q\ : std_logic;
SIGNAL \U5|LessThan0~2_combout\ : std_logic;
SIGNAL \U5|LessThan0~3_combout\ : std_logic;
SIGNAL \U5|s_state.ready~q\ : std_logic;
SIGNAL \U5|Selector2~0_combout\ : std_logic;
SIGNAL \U5|s_state.start~q\ : std_logic;
SIGNAL \U5|Selector3~1_combout\ : std_logic;
SIGNAL \U5|Selector2~1_combout\ : std_logic;
SIGNAL \U5|Selector2~2_combout\ : std_logic;
SIGNAL \U5|Selector1~0_combout\ : std_logic;
SIGNAL \U5|Selector1~1_combout\ : std_logic;
SIGNAL \U5|s_state.start~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~276_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~277_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~279_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[69]~280_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~283_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~284_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[93]~294_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[109]~303_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~306_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~313_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~314_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[133]~316_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~317_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~318_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~319_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~321_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~322_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~323_combout\ : std_logic;
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
SIGNAL \U2|Equal2~0_combout\ : std_logic;
SIGNAL \U2|Equal6~0_combout\ : std_logic;
SIGNAL \U2|count[5]~20\ : std_logic;
SIGNAL \U2|count[6]~21_combout\ : std_logic;
SIGNAL \U2|Equal2~1_combout\ : std_logic;
SIGNAL \SW~input_o\ : std_logic;
SIGNAL \U3|reg0~q\ : std_logic;
SIGNAL \U3|OUTPUT_PULSE~0_combout\ : std_logic;
SIGNAL \U2|Selector9~0_combout\ : std_logic;
SIGNAL \U2|Selector9~1_combout\ : std_logic;
SIGNAL \U2|Selector8~2_combout\ : std_logic;
SIGNAL \U2|Selector8~3_combout\ : std_logic;
SIGNAL \U2|Equal4~0_combout\ : std_logic;
SIGNAL \U2|Selector16~0_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.stop~q\ : std_logic;
SIGNAL \U2|Selector10~0_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.idle~q\ : std_logic;
SIGNAL \U2|Equal0~1_combout\ : std_logic;
SIGNAL \U2|Equal0~2_combout\ : std_logic;
SIGNAL \U2|Selector17~0_combout\ : std_logic;
SIGNAL \U2|run_timer~q\ : std_logic;
SIGNAL \U2|count[1]~14_combout\ : std_logic;
SIGNAL \U2|count[0]~9\ : std_logic;
SIGNAL \U2|count[1]~11\ : std_logic;
SIGNAL \U2|count[2]~13\ : std_logic;
SIGNAL \U2|count[3]~15_combout\ : std_logic;
SIGNAL \U2|count[3]~16\ : std_logic;
SIGNAL \U2|count[4]~17_combout\ : std_logic;
SIGNAL \U2|count[4]~18\ : std_logic;
SIGNAL \U2|count[5]~19_combout\ : std_logic;
SIGNAL \U2|Equal0~0_combout\ : std_logic;
SIGNAL \U2|Equal6~1_combout\ : std_logic;
SIGNAL \U2|Selector15~3_combout\ : std_logic;
SIGNAL \U2|Equal1~0_combout\ : std_logic;
SIGNAL \U2|Selector15~4_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.sclhi2~q\ : std_logic;
SIGNAL \U2|Selector14~1_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.scllo2~q\ : std_logic;
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
SIGNAL \U2|Selector11~0_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.start~q\ : std_logic;
SIGNAL \U2|Selector15~2_combout\ : std_logic;
SIGNAL \U2|Selector12~1_combout\ : std_logic;
SIGNAL \U2|Selector12~2_combout\ : std_logic;
SIGNAL \U2|s_FSM_state.sclhi~q\ : std_logic;
SIGNAL \U2|scl~4_combout\ : std_logic;
SIGNAL \U2|Selector25~1_combout\ : std_logic;
SIGNAL \U2|Selector25~2_combout\ : std_logic;
SIGNAL \U2|scl~3_combout\ : std_logic;
SIGNAL \U2|scl~en_q\ : std_logic;
SIGNAL \U2|Selector7~0_combout\ : std_logic;
SIGNAL \U2|r_byte_to_send[5]~1_combout\ : std_logic;
SIGNAL \U2|Selector7~1_combout\ : std_logic;
SIGNAL \U2|Selector6~0_combout\ : std_logic;
SIGNAL \U2|r_byte_to_send[5]~2_combout\ : std_logic;
SIGNAL \U2|Selector5~0_combout\ : std_logic;
SIGNAL \U2|Selector4~0_combout\ : std_logic;
SIGNAL \U2|Selector3~0_combout\ : std_logic;
SIGNAL \U2|Selector3~1_combout\ : std_logic;
SIGNAL \U2|Selector2~0_combout\ : std_logic;
SIGNAL \U2|Selector1~0_combout\ : std_logic;
SIGNAL \U2|Selector0~0_combout\ : std_logic;
SIGNAL \U2|sda~1_combout\ : std_logic;
SIGNAL \U2|sda~2_combout\ : std_logic;
SIGNAL \U2|Selector22~0_combout\ : std_logic;
SIGNAL \U2|Selector22~1_combout\ : std_logic;
SIGNAL \U2|Selector22~2_combout\ : std_logic;
SIGNAL \U2|sda~3_combout\ : std_logic;
SIGNAL \U2|sda~en_q\ : std_logic;
SIGNAL \CLK_32~input_o\ : std_logic;
SIGNAL \U1|Add1~1\ : std_logic;
SIGNAL \U1|Add1~3\ : std_logic;
SIGNAL \U1|Add1~5\ : std_logic;
SIGNAL \U1|Add1~6_combout\ : std_logic;
SIGNAL \U1|Add1~2_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
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
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|vsenable~q\ : std_logic;
SIGNAL \U1|Add1~15\ : std_logic;
SIGNAL \U1|Add1~16_combout\ : std_logic;
SIGNAL \U1|Add1~17\ : std_logic;
SIGNAL \U1|Add1~18_combout\ : std_logic;
SIGNAL \U1|vcs~0_combout\ : std_logic;
SIGNAL \U1|Equal1~2_combout\ : std_logic;
SIGNAL \U1|vcs~2_combout\ : std_logic;
SIGNAL \U1|Add1~7\ : std_logic;
SIGNAL \U1|Add1~8_combout\ : std_logic;
SIGNAL \U1|Add1~9\ : std_logic;
SIGNAL \U1|Add1~10_combout\ : std_logic;
SIGNAL \U1|Add1~11\ : std_logic;
SIGNAL \U1|Add1~12_combout\ : std_logic;
SIGNAL \U1|Add1~13\ : std_logic;
SIGNAL \U1|Add1~14_combout\ : std_logic;
SIGNAL \U1|Equal1~0_combout\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|vcs~3_combout\ : std_logic;
SIGNAL \U1|LessThan4~1_combout\ : std_logic;
SIGNAL \U1|visible_img~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \CLK_32~inputclkctrl_outclk\ : std_logic;
SIGNAL \AD_data[11]~input_o\ : std_logic;
SIGNAL \AD_data[10]~input_o\ : std_logic;
SIGNAL \AD_data[9]~input_o\ : std_logic;
SIGNAL \AD_data[5]~input_o\ : std_logic;
SIGNAL \AD_data[8]~input_o\ : std_logic;
SIGNAL \AD_data[7]~input_o\ : std_logic;
SIGNAL \U5|LessThan0~0_combout\ : std_logic;
SIGNAL \U5|LessThan0~1_combout\ : std_logic;
SIGNAL \U5|Selector3~0_combout\ : std_logic;
SIGNAL \U5|s_state.triggered~q\ : std_logic;
SIGNAL \U5|o_triggered~feeder_combout\ : std_logic;
SIGNAL \U5|o_triggered~q\ : std_logic;
SIGNAL \s_ram_write_en~1_combout\ : std_logic;
SIGNAL \U3|reg1~q\ : std_logic;
SIGNAL \s_ram_write_en~2_combout\ : std_logic;
SIGNAL \s_ram_write_en~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \s_mainFSM_state.writeSamples~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \addr_write[0]~_wirecell_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \addr_read[0]~0_combout\ : std_logic;
SIGNAL \addr_read[1]~1_combout\ : std_logic;
SIGNAL \addr_read[2]~2_combout\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \addr_read[3]~3_combout\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3_combout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add3~4\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~11_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \Add3~17_combout\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \AD_data[0]~input_o\ : std_logic;
SIGNAL \AD_data[1]~input_o\ : std_logic;
SIGNAL \AD_data[2]~input_o\ : std_logic;
SIGNAL \AD_data[3]~input_o\ : std_logic;
SIGNAL \AD_data[4]~input_o\ : std_logic;
SIGNAL \AD_data[6]~input_o\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][8]~11_combout\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~6_combout\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~combout\ : std_logic;
SIGNAL \U4|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][3]~15_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][3]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~163_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~165_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~271_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~167_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~272_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~171_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~273_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~175_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~176_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~178_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~180_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~320_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~173_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[61]~182_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~183_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~274_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~278_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~185_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~186_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~189_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[62]~275_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~190_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[69]~191_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~192_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~193_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~194_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~196_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~198_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~199_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~281_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~285_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~282_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[76]~286_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~287_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~203_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~204_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~206_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~290_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~324_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[83]~291_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~212_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~214_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~216_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~288_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~209_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~289_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[94]~293_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[93]~218_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~219_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[91]~220_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[90]~325_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[89]~223_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
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
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~297_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~295_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~298_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~292_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[91]~296_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~299_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[99]~300_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[89]~222_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[98]~301_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[97]~231_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~233_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[109]~236_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~304_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~305_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~326_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~240_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~243_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~302_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~244_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~307_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~308_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~309_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~310_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~249_combout\ : std_logic;
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
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~311_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~312_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~255_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~256_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~327_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~259_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~261_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[134]~315_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[133]~263_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~264_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~265_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~266_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~267_combout\ : std_logic;
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
SIGNAL \Div0|auto_generated|divider|quotient[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[0]~4_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[5]~5_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
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
SIGNAL \Div0|auto_generated|divider|_~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[10]~10_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \red~0_combout\ : std_logic;
SIGNAL \blue[4]~feeder_combout\ : std_logic;
SIGNAL \green[1]~feeder_combout\ : std_logic;
SIGNAL \green[2]~feeder_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Equal1~13_combout\ : std_logic;
SIGNAL \Equal1~14_combout\ : std_logic;
SIGNAL \red~1_combout\ : std_logic;
SIGNAL \red~2_combout\ : std_logic;
SIGNAL \red~3_combout\ : std_logic;
SIGNAL \green[6]~feeder_combout\ : std_logic;
SIGNAL \green[7]~feeder_combout\ : std_logic;
SIGNAL \red[1]~feeder_combout\ : std_logic;
SIGNAL \red[2]~feeder_combout\ : std_logic;
SIGNAL \red[3]~feeder_combout\ : std_logic;
SIGNAL \red[5]~feeder_combout\ : std_logic;
SIGNAL \red[6]~feeder_combout\ : std_logic;
SIGNAL \red[7]~feeder_combout\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|hcs~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|Add1~4_combout\ : std_logic;
SIGNAL \U1|vcs~1_combout\ : std_logic;
SIGNAL \U1|LessThan4~0_combout\ : std_logic;
SIGNAL \U1|LessThan1~0_combout\ : std_logic;
SIGNAL red : std_logic_vector(7 DOWNTO 0);
SIGNAL green : std_logic_vector(7 DOWNTO 0);
SIGNAL blue : std_logic_vector(7 DOWNTO 0);
SIGNAL addr_write : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|hcs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U2|r_byte_to_send\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|vcs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U2|r_no_of_bytes_to_send\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U2|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|ALT_INV_sda~en_q\ : std_logic;
SIGNAL \U2|ALT_INV_s_FSM_state.scllo~q\ : std_logic;
SIGNAL \U2|ALT_INV_scl~en_q\ : std_logic;
SIGNAL \U1|ALT_INV_LessThan0~1_combout\ : std_logic;

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

\U4|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Add3~17_combout\ & \Add3~14_combout\ & \Add3~11_combout\ & \Add3~8_combout\ & \Add3~5_combout\ & \Add3~2_combout\ & \addr_read[3]~3_combout\ & \addr_read[2]~2_combout\ & 
\addr_read[1]~1_combout\ & \addr_read[0]~0_combout\);

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

\U4|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\Add3~17_combout\ & \Add3~14_combout\ & \Add3~11_combout\ & \Add3~8_combout\ & \Add3~5_combout\ & \Add3~2_combout\ & \addr_read[3]~3_combout\ & \addr_read[2]~2_combout\ & 
\addr_read[1]~1_combout\ & \addr_read[0]~0_combout\);

\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);
\U4|ram_rtl_0|auto_generated|ram_block1a9\ <= \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(1);
\U4|ram_rtl_0|auto_generated|ram_block1a11\ <= \U4|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(2);

\CLK_32~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_32~input_o\);

\CLK_25~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_25~input_o\);
\U2|ALT_INV_sda~en_q\ <= NOT \U2|sda~en_q\;
\U2|ALT_INV_s_FSM_state.scllo~q\ <= NOT \U2|s_FSM_state.scllo~q\;
\U2|ALT_INV_scl~en_q\ <= NOT \U2|scl~en_q\;
\U1|ALT_INV_LessThan0~1_combout\ <= NOT \U1|LessThan0~1_combout\;

-- Location: M9K_X15_Y19_N0
\U4|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F078",
	mem_init1 => X"3C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F07",
	mem_init0 => X"83C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/open-scope.ram0_sample_RAM_212a43dc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sample_RAM:U4|altsyncram:ram_rtl_0|altsyncram_s9i1:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_depth => 640,
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
	port_b_logical_ram_depth => 640,
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

-- Location: LCCOMB_X16_Y19_N8
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

-- Location: LCCOMB_X16_Y19_N14
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

-- Location: M9K_X15_Y16_N0
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
	init_file => "db/open-scope.ram0_sample_RAM_212a43dc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sample_RAM:U4|altsyncram:ram_rtl_0|altsyncram_s9i1:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_depth => 640,
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
	port_b_logical_ram_depth => 640,
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

-- Location: LCCOMB_X17_Y16_N2
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

-- Location: LCCOMB_X18_Y16_N6
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

-- Location: LCCOMB_X18_Y16_N10
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

-- Location: LCCOMB_X18_Y17_N0
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

-- Location: LCCOMB_X18_Y17_N10
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

-- Location: LCCOMB_X16_Y17_N4
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

-- Location: LCCOMB_X16_Y17_N6
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

-- Location: LCCOMB_X17_Y20_N18
\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[75]~202_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[75]~202_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[75]~287_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[75]~287_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[75]~202_combout\ & !\Div0|auto_generated|divider|divider|StageOut[75]~287_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[75]~202_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[75]~287_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X17_Y20_N22
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

-- Location: LCCOMB_X18_Y20_N12
\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[83]~211_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[83]~211_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[83]~291_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[83]~291_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[83]~211_combout\ & !\Div0|auto_generated|divider|divider|StageOut[83]~291_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[83]~211_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[83]~291_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X18_Y20_N16
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

-- Location: LCCOMB_X13_Y20_N16
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

-- Location: LCCOMB_X13_Y20_N18
\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[91]~296_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[91]~296_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[91]~220_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[91]~220_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[91]~296_combout\ & !\Div0|auto_generated|divider|divider|StageOut[91]~220_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[91]~296_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[91]~220_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\);

-- Location: LCCOMB_X13_Y20_N22
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

-- Location: LCCOMB_X12_Y20_N8
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

-- Location: LCCOMB_X12_Y20_N16
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

-- Location: LCCOMB_X12_Y20_N18
\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[101]~227_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[101]~298_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[101]~227_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[101]~298_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[101]~227_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[101]~298_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[101]~227_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[101]~298_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\);

-- Location: LCCOMB_X12_Y18_N6
\Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[105]~241_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[105]~240_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[105]~241_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[105]~240_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[105]~241_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[105]~240_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[105]~241_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[105]~240_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X12_Y18_N8
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

-- Location: LCCOMB_X13_Y18_N4
\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[113]~250_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[113]~249_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[113]~250_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[113]~249_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[113]~250_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[113]~249_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[113]~250_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[113]~249_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\);

-- Location: LCCOMB_X13_Y18_N12
\Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[117]~245_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[117]~307_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[117]~245_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[117]~307_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[117]~245_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[117]~307_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[117]~245_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~307_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~11\);

-- Location: LCCOMB_X16_Y18_N2
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

-- Location: LCCOMB_X16_Y18_N12
\Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[125]~254_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[125]~312_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[125]~254_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[125]~312_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[125]~254_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[125]~312_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[125]~254_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[125]~312_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11\);

-- Location: LCCOMB_X18_Y18_N2
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

-- Location: LCCOMB_X18_Y18_N6
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

-- Location: LCCOMB_X18_Y18_N8
\Div0|auto_generated|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|op_1~7\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~7\ & VCC))
-- \Div0|auto_generated|divider|op_1~9\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & !\Div0|auto_generated|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~7\,
	combout => \Div0|auto_generated|divider|op_1~8_combout\,
	cout => \Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X21_Y18_N14
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \Div0|auto_generated|divider|quotient[0]~4_combout\ $ (VCC)
-- \Add2~1\ = CARRY(\Div0|auto_generated|divider|quotient[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|quotient[0]~4_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X21_Y18_N16
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Div0|auto_generated|divider|quotient[1]~3_combout\ & (!\Add2~1\)) # (!\Div0|auto_generated|divider|quotient[1]~3_combout\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\Div0|auto_generated|divider|quotient[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[1]~3_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X22_Y17_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\U1|vcs\(0) & (\U1|vcs\(1) $ (VCC))) # (!\U1|vcs\(0) & (\U1|vcs\(1) & VCC))
-- \Add1~1\ = CARRY((\U1|vcs\(0) & \U1|vcs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(0),
	datab => \U1|vcs\(1),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X22_Y17_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\U1|vcs\(2) & (!\Add1~1\)) # (!\U1|vcs\(2) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\U1|vcs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X22_Y17_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\U1|vcs\(5) & ((GND) # (!\Add1~7\))) # (!\U1|vcs\(5) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((\U1|vcs\(5)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(5),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X18_Y18_N12
\Div0|auto_generated|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~12_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|op_1~11\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~11\ & VCC))
-- \Div0|auto_generated|divider|op_1~13\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & !\Div0|auto_generated|divider|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~11\,
	combout => \Div0|auto_generated|divider|op_1~12_combout\,
	cout => \Div0|auto_generated|divider|op_1~13\);

-- Location: LCCOMB_X21_Y18_N26
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Div0|auto_generated|divider|quotient[6]~6_combout\ & (\Add2~11\ $ (GND))) # (!\Div0|auto_generated|divider|quotient[6]~6_combout\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\Div0|auto_generated|divider|quotient[6]~6_combout\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[6]~6_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X18_Y18_N14
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

-- Location: LCCOMB_X21_Y18_N28
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Div0|auto_generated|divider|quotient[7]~7_combout\ & (!\Add2~13\)) # (!\Div0|auto_generated|divider|quotient[7]~7_combout\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\Div0|auto_generated|divider|quotient[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[7]~7_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X22_Y17_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\U1|vcs\(6) & (\Add1~9\ & VCC)) # (!\U1|vcs\(6) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!\U1|vcs\(6) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X22_Y17_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\U1|vcs\(7) & ((GND) # (!\Add1~11\))) # (!\U1|vcs\(7) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((\U1|vcs\(7)) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(7),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X18_Y18_N16
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

-- Location: LCCOMB_X18_Y18_N18
\Div0|auto_generated|divider|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~18_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & (!\Div0|auto_generated|divider|op_1~17\)) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~17\) # (GND)))
-- \Div0|auto_generated|divider|op_1~19\ = CARRY((!\Div0|auto_generated|divider|op_1~17\) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~17\,
	combout => \Div0|auto_generated|divider|op_1~18_combout\,
	cout => \Div0|auto_generated|divider|op_1~19\);

-- Location: LCCOMB_X18_Y18_N22
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

-- Location: LCCOMB_X18_Y18_N24
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

-- Location: LCCOMB_X18_Y18_N26
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

-- Location: LCCOMB_X21_Y17_N12
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Div0|auto_generated|divider|_~0_combout\ & (!\Add2~29\)) # (!\Div0|auto_generated|divider|_~0_combout\ & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!\Div0|auto_generated|divider|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X19_Y19_N10
\Add3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~9_combout\ = (\U1|hcs\(7) & (!\Add3~7\)) # (!\U1|hcs\(7) & ((\Add3~7\) # (GND)))
-- \Add3~10\ = CARRY((!\Add3~7\) # (!\U1|hcs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(7),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~9_combout\,
	cout => \Add3~10\);

-- Location: LCCOMB_X19_Y19_N12
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\U1|hcs\(8) & ((GND) # (!\Add3~10\))) # (!\U1|hcs\(8) & (\Add3~10\ $ (GND)))
-- \Add3~13\ = CARRY((\U1|hcs\(8)) # (!\Add3~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(8),
	datad => VCC,
	cin => \Add3~10\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: FF_X22_Y20_N13
\U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[2]~12_combout\,
	sclr => \U2|count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(2));

-- Location: FF_X22_Y20_N23
\U2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[7]~23_combout\,
	sclr => \U2|count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(7));

-- Location: FF_X22_Y20_N11
\U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[1]~10_combout\,
	sclr => \U2|count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(1));

-- Location: LCCOMB_X22_Y20_N10
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

-- Location: LCCOMB_X22_Y20_N12
\U2|count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[2]~12_combout\ = (\U2|count\(2) & (\U2|count[1]~11\ $ (GND))) # (!\U2|count\(2) & (!\U2|count[1]~11\ & VCC))
-- \U2|count[2]~13\ = CARRY((\U2|count\(2) & !\U2|count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(2),
	datad => VCC,
	cin => \U2|count[1]~11\,
	combout => \U2|count[2]~12_combout\,
	cout => \U2|count[2]~13\);

-- Location: LCCOMB_X22_Y20_N20
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

-- Location: LCCOMB_X22_Y20_N22
\U2|count[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[7]~23_combout\ = \U2|count\(7) $ (\U2|count[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(7),
	cin => \U2|count[6]~22\,
	combout => \U2|count[7]~23_combout\);

-- Location: FF_X19_Y22_N7
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

-- Location: LCCOMB_X19_Y22_N6
\U2|FSM:bit_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|FSM:bit_count[2]~0_combout\ = (\U2|Equal1~0_combout\ & ((\U2|Add0~2_combout\))) # (!\U2|Equal1~0_combout\ & (\U2|FSM:bit_count[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Equal1~0_combout\,
	datac => \U2|FSM:bit_count[2]~q\,
	datad => \U2|Add0~2_combout\,
	combout => \U2|FSM:bit_count[2]~0_combout\);

-- Location: LCCOMB_X22_Y17_N28
\U1|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan5~0_combout\ = (!\U1|vcs\(9) & (!\U1|vcs\(8) & (!\U1|vcs\(6) & !\U1|vcs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(9),
	datab => \U1|vcs\(8),
	datac => \U1|vcs\(6),
	datad => \U1|vcs\(7),
	combout => \U1|LessThan5~0_combout\);

-- Location: LCCOMB_X19_Y19_N28
\U1|visible_img~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|visible_img~0_combout\ = (\U1|hcs\(5)) # ((\U1|hcs\(4)) # (\U1|hcs\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(5),
	datac => \U1|hcs\(4),
	datad => \U1|hcs\(6),
	combout => \U1|visible_img~0_combout\);

-- Location: LCCOMB_X19_Y19_N26
\U1|visible_img~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|visible_img~1_combout\ = (\U1|hcs\(9) & (((!\U1|hcs\(7) & !\U1|visible_img~0_combout\)) # (!\U1|hcs\(8)))) # (!\U1|hcs\(9) & ((\U1|hcs\(8)) # ((\U1|hcs\(7) & \U1|visible_img~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(9),
	datab => \U1|hcs\(7),
	datac => \U1|hcs\(8),
	datad => \U1|visible_img~0_combout\,
	combout => \U1|visible_img~1_combout\);

-- Location: LCCOMB_X22_Y17_N22
\U1|visible_img~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|visible_img~2_combout\ = (\U1|visible_img~1_combout\ & (((!\U1|LessThan4~1_combout\ & \U1|vcs\(5))) # (!\U1|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan4~1_combout\,
	datab => \U1|LessThan5~0_combout\,
	datac => \U1|visible_img~1_combout\,
	datad => \U1|vcs\(5),
	combout => \U1|visible_img~2_combout\);

-- Location: LCCOMB_X16_Y19_N22
\Mult0|mult_core|romout[1][8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][8]~0_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a5\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a6\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a4\) # (\U4|ram_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \Mult0|mult_core|romout[1][8]~0_combout\);

-- Location: LCCOMB_X16_Y19_N30
\Mult0|mult_core|romout[1][7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][7]~2_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a5\ & (((!\U4|ram_rtl_0|auto_generated|ram_block1a7\)))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a5\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a6\ & 
-- ((!\U4|ram_rtl_0|auto_generated|ram_block1a7\))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a6\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a4\) # (\U4|ram_rtl_0|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \Mult0|mult_core|romout[1][7]~2_combout\);

-- Location: LCCOMB_X14_Y19_N12
\Mult0|mult_core|romout[1][6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][6]~3_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a5\ & (((\U4|ram_rtl_0|auto_generated|ram_block1a7\ & !\U4|ram_rtl_0|auto_generated|ram_block1a4\)) # (!\U4|ram_rtl_0|auto_generated|ram_block1a6\))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a5\ & (\U4|ram_rtl_0|auto_generated|ram_block1a6\ $ (((!\U4|ram_rtl_0|auto_generated|ram_block1a7\ & \U4|ram_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mult0|mult_core|romout[1][6]~3_combout\);

-- Location: LCCOMB_X14_Y19_N26
\Mult0|mult_core|romout[1][5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][5]~combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a7\ & (\U4|ram_rtl_0|auto_generated|ram_block1a5\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a6\ & !\U4|ram_rtl_0|auto_generated|ram_block1a4\))))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a7\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a5\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a6\) # (!\U4|ram_rtl_0|auto_generated|ram_block1a4\))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a5\ & 
-- ((\U4|ram_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mult0|mult_core|romout[1][5]~combout\);

-- Location: LCCOMB_X14_Y19_N20
\Mult0|mult_core|romout[1][4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][4]~4_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a6\ & (\U4|ram_rtl_0|auto_generated|ram_block1a4\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a5\ & !\U4|ram_rtl_0|auto_generated|ram_block1a7\))))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a6\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a7\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a5\) # (!\U4|ram_rtl_0|auto_generated|ram_block1a4\))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a7\ & 
-- ((\U4|ram_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mult0|mult_core|romout[1][4]~4_combout\);

-- Location: LCCOMB_X14_Y19_N2
\Mult0|mult_core|romout[1][3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][3]~5_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a7\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a6\ & (!\U4|ram_rtl_0|auto_generated|ram_block1a5\)) # (!\U4|ram_rtl_0|auto_generated|ram_block1a6\ & 
-- (\U4|ram_rtl_0|auto_generated|ram_block1a5\ & \U4|ram_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mult0|mult_core|romout[1][3]~5_combout\);

-- Location: LCCOMB_X14_Y19_N28
\Mult0|mult_core|romout[1][2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][2]~7_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a6\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a5\ & !\U4|ram_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a6\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mult0|mult_core|romout[1][2]~7_combout\);

-- Location: LCCOMB_X14_Y19_N14
\Mult0|mult_core|romout[1][1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][1]~9_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a5\ $ (\U4|ram_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mult0|mult_core|romout[1][1]~9_combout\);

-- Location: LCCOMB_X16_Y19_N26
\Mult0|mult_core|romout[0][4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][4]~10_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a2\ & (\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a1\ & !\U4|ram_rtl_0|auto_generated|ram_block1a3\))))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a2\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a1\) # (!\U4|ram_rtl_0|auto_generated|ram_block1a3\))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \Mult0|mult_core|romout[0][4]~10_combout\);

-- Location: LCCOMB_X16_Y16_N30
\Mult0|mult_core|romout[2][7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][7]~12_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a11\ & (((!\U4|ram_rtl_0|auto_generated|ram_block1a9\ & !\U4|ram_rtl_0|auto_generated|ram_block1a10\)))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a11\ & 
-- ((\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a9\) # (\U4|ram_rtl_0|auto_generated|ram_block1a10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a11\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mult0|mult_core|romout[2][7]~12_combout\);

-- Location: LCCOMB_X16_Y16_N4
\Mult0|mult_core|romout[2][6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][6]~13_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a9\ & (((\U4|ram_rtl_0|auto_generated|ram_block1a11\ & !\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\)) # (!\U4|ram_rtl_0|auto_generated|ram_block1a10\))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a9\ & (\U4|ram_rtl_0|auto_generated|ram_block1a10\ $ (((!\U4|ram_rtl_0|auto_generated|ram_block1a11\ & \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a11\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mult0|mult_core|romout[2][6]~13_combout\);

-- Location: LCCOMB_X16_Y16_N6
\Mult0|mult_core|romout[2][5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][5]~combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a11\ & (\U4|ram_rtl_0|auto_generated|ram_block1a9\ $ (((!\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & \U4|ram_rtl_0|auto_generated|ram_block1a10\))))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a11\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a10\) # (!\U4|ram_rtl_0|auto_generated|ram_block1a9\))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a11\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mult0|mult_core|romout[2][5]~combout\);

-- Location: LCCOMB_X16_Y16_N0
\Mult0|mult_core|romout[2][4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][4]~14_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a11\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a9\) # (\U4|ram_rtl_0|auto_generated|ram_block1a10\))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & ((!\U4|ram_rtl_0|auto_generated|ram_block1a10\))))) # (!\U4|ram_rtl_0|auto_generated|ram_block1a11\ & (\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ $ 
-- (((\U4|ram_rtl_0|auto_generated|ram_block1a9\ & \U4|ram_rtl_0|auto_generated|ram_block1a10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a11\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mult0|mult_core|romout[2][4]~14_combout\);

-- Location: LCCOMB_X14_Y16_N10
\Mult0|mult_core|romout[2][2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][2]~16_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a10\ $ (((!\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & \U4|ram_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mult0|mult_core|romout[2][2]~16_combout\);

-- Location: LCCOMB_X14_Y16_N12
\Mult0|mult_core|romout[2][1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][1]~17_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a9\ $ (\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	combout => \Mult0|mult_core|romout[2][1]~17_combout\);

-- Location: LCCOMB_X17_Y16_N30
\Div0|auto_generated|divider|my_abs_num|cs2a[15]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[15]~12_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[15]~12_combout\);

-- Location: LCCOMB_X17_Y16_N12
\Div0|auto_generated|divider|my_abs_num|cs2a[13]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[13]~14_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[13]~14_combout\);

-- Location: LCCOMB_X18_Y16_N30
\Div0|auto_generated|divider|divider|StageOut[45]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~162_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~162_combout\);

-- Location: LCCOMB_X18_Y16_N22
\Div0|auto_generated|divider|divider|StageOut[44]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~164_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~164_combout\);

-- Location: LCCOMB_X17_Y16_N16
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

-- Location: LCCOMB_X17_Y16_N14
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

-- Location: LCCOMB_X19_Y16_N4
\Div0|auto_generated|divider|divider|StageOut[41]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~169_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~169_combout\);

-- Location: LCCOMB_X18_Y19_N6
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

-- Location: LCCOMB_X18_Y16_N24
\Div0|auto_generated|divider|divider|StageOut[54]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~172_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~172_combout\);

-- Location: LCCOMB_X18_Y16_N26
\Div0|auto_generated|divider|divider|StageOut[52]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~174_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~174_combout\);

-- Location: LCCOMB_X18_Y19_N14
\Div0|auto_generated|divider|divider|StageOut[49]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~177_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~177_combout\);

-- Location: LCCOMB_X18_Y17_N22
\Div0|auto_generated|divider|divider|StageOut[48]~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~179_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~179_combout\);

-- Location: LCCOMB_X17_Y17_N0
\Div0|auto_generated|divider|divider|StageOut[62]~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[62]~181_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[62]~181_combout\);

-- Location: LCCOMB_X17_Y17_N6
\Div0|auto_generated|divider|divider|StageOut[59]~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~184_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~184_combout\);

-- Location: LCCOMB_X17_Y17_N12
\Div0|auto_generated|divider|divider|StageOut[57]~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~187_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~187_combout\);

-- Location: LCCOMB_X16_Y20_N12
\Div0|auto_generated|divider|my_abs_num|cs2a[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\);

-- Location: LCCOMB_X16_Y20_N10
\Div0|auto_generated|divider|divider|StageOut[56]~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~188_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~188_combout\);

-- Location: LCCOMB_X16_Y20_N22
\Div0|auto_generated|divider|divider|StageOut[65]~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~195_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~195_combout\);

-- Location: LCCOMB_X17_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[64]~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~197_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~197_combout\);

-- Location: LCCOMB_X16_Y17_N26
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

-- Location: LCCOMB_X16_Y17_N16
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

-- Location: LCCOMB_X16_Y17_N22
\Div0|auto_generated|divider|divider|StageOut[75]~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~202_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~202_combout\);

-- Location: LCCOMB_X16_Y20_N14
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

-- Location: LCCOMB_X17_Y19_N2
\Div0|auto_generated|divider|divider|StageOut[72]~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~207_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~207_combout\);

-- Location: LCCOMB_X18_Y20_N28
\Div0|auto_generated|divider|divider|StageOut[86]~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~208_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~208_combout\);

-- Location: LCCOMB_X17_Y20_N2
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

-- Location: LCCOMB_X17_Y20_N8
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

-- Location: LCCOMB_X19_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[81]~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~213_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~213_combout\);

-- Location: LCCOMB_X19_Y20_N6
\Div0|auto_generated|divider|divider|StageOut[80]~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[80]~215_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[80]~215_combout\);

-- Location: LCCOMB_X18_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[94]~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[94]~217_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[94]~217_combout\);

-- Location: LCCOMB_X14_Y18_N28
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

-- Location: LCCOMB_X14_Y20_N6
\Div0|auto_generated|divider|divider|StageOut[88]~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~224_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~224_combout\);

-- Location: LCCOMB_X12_Y20_N28
\Div0|auto_generated|divider|divider|StageOut[102]~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~226_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~226_combout\);

-- Location: LCCOMB_X13_Y20_N6
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

-- Location: LCCOMB_X13_Y20_N0
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

-- Location: LCCOMB_X13_Y20_N30
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

-- Location: LCCOMB_X12_Y20_N6
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

-- Location: LCCOMB_X11_Y20_N16
\Div0|auto_generated|divider|divider|StageOut[97]~232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[97]~232_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[97]~232_combout\);

-- Location: LCCOMB_X13_Y20_N4
\Div0|auto_generated|divider|divider|StageOut[96]~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~234_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~234_combout\);

-- Location: LCCOMB_X12_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[110]~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~235_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~235_combout\);

-- Location: LCCOMB_X12_Y20_N0
\Div0|auto_generated|divider|divider|StageOut[108]~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~237_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~237_combout\);

-- Location: LCCOMB_X12_Y18_N30
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

-- Location: LCCOMB_X12_Y18_N28
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

-- Location: LCCOMB_X12_Y18_N22
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

-- Location: LCCOMB_X11_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[104]~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~242_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~242_combout\);

-- Location: LCCOMB_X12_Y18_N2
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

-- Location: LCCOMB_X12_Y18_N0
\Div0|auto_generated|divider|divider|StageOut[116]~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~246_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~246_combout\);

-- Location: LCCOMB_X13_Y18_N28
\Div0|auto_generated|divider|divider|StageOut[115]~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~247_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~247_combout\);

-- Location: LCCOMB_X12_Y18_N26
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

-- Location: LCCOMB_X13_Y18_N22
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

-- Location: LCCOMB_X14_Y18_N30
\Div0|auto_generated|divider|divider|StageOut[112]~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~252_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Mult0|mult_core|romout[0][3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Mult0|mult_core|romout[0][3]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~252_combout\);

-- Location: LCCOMB_X13_Y18_N24
\Div0|auto_generated|divider|divider|StageOut[126]~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~253_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~253_combout\);

-- Location: LCCOMB_X13_Y18_N18
\Div0|auto_generated|divider|divider|StageOut[125]~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~254_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~254_combout\);

-- Location: LCCOMB_X14_Y18_N12
\Div0|auto_generated|divider|divider|StageOut[122]~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~257_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~257_combout\);

-- Location: LCCOMB_X14_Y18_N18
\Div0|auto_generated|divider|divider|StageOut[121]~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~258_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & (\Mult0|mult_core|romout[0][3]~18_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][3]~18_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~258_combout\);

-- Location: LCCOMB_X16_Y18_N22
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

-- Location: LCCOMB_X16_Y18_N26
\Div0|auto_generated|divider|divider|StageOut[134]~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[134]~262_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[134]~262_combout\);

-- Location: LCCOMB_X16_Y18_N0
\Div0|auto_generated|divider|divider|StageOut[129]~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~268_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~268_combout\);

-- Location: LCCOMB_X16_Y21_N20
\Div0|auto_generated|divider|divider|StageOut[128]~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~270_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a1\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~270_combout\);

-- Location: LCCOMB_X19_Y18_N4
\Div0|auto_generated|divider|quotient[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[4]~0_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~8_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|op_1~8_combout\,
	combout => \Div0|auto_generated|divider|quotient[4]~0_combout\);

-- Location: LCCOMB_X19_Y18_N10
\Div0|auto_generated|divider|quotient[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[3]~1_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (\Div0|auto_generated|divider|op_1~6_combout\)) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|op_1~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|quotient[3]~1_combout\);

-- Location: LCCOMB_X18_Y18_N30
\Div0|auto_generated|divider|quotient[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[1]~3_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~2_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|op_1~2_combout\,
	combout => \Div0|auto_generated|divider|quotient[1]~3_combout\);

-- Location: LCCOMB_X19_Y18_N24
\Div0|auto_generated|divider|quotient[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[6]~6_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~12_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|op_1~12_combout\,
	combout => \Div0|auto_generated|divider|quotient[6]~6_combout\);

-- Location: LCCOMB_X19_Y18_N6
\Div0|auto_generated|divider|quotient[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[7]~7_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~14_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|op_1~14_combout\,
	combout => \Div0|auto_generated|divider|quotient[7]~7_combout\);

-- Location: LCCOMB_X21_Y18_N10
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Add1~12_combout\ & (\Add2~14_combout\ & (\Add1~10_combout\ $ (!\Add2~12_combout\)))) # (!\Add1~12_combout\ & (!\Add2~14_combout\ & (\Add1~10_combout\ $ (!\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add1~10_combout\,
	datac => \Add2~12_combout\,
	datad => \Add2~14_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X21_Y17_N22
\Div0|auto_generated|divider|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|_~1_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & \Div0|auto_generated|divider|op_1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|op_1~26_combout\,
	combout => \Div0|auto_generated|divider|_~1_combout\);

-- Location: LCCOMB_X19_Y17_N20
\Div0|auto_generated|divider|quotient[12]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[12]~8_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~24_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Div0|auto_generated|divider|op_1~24_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|quotient[12]~8_combout\);

-- Location: LCCOMB_X19_Y17_N26
\Div0|auto_generated|divider|quotient[11]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[11]~9_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (\Div0|auto_generated|divider|op_1~22_combout\)) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|op_1~22_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|quotient[11]~9_combout\);

-- Location: LCCOMB_X19_Y17_N14
\Div0|auto_generated|divider|quotient[9]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[9]~11_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~18_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|quotient[9]~11_combout\);

-- Location: LCCOMB_X19_Y18_N12
\Div0|auto_generated|divider|quotient[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[8]~12_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (\Div0|auto_generated|divider|op_1~16_combout\)) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|op_1~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|quotient[8]~12_combout\);

-- Location: LCCOMB_X21_Y18_N2
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\U1|vcs\(0) & (!\Add2~0_combout\ & (\Add1~0_combout\ $ (!\Add2~2_combout\)))) # (!\U1|vcs\(0) & (\Add2~0_combout\ & (\Add1~0_combout\ $ (!\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(0),
	datab => \Add1~0_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X21_Y18_N4
\Equal1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Add1~8_combout\ & (\Add2~10_combout\ & (\Add1~10_combout\ $ (!\Add2~12_combout\)))) # (!\Add1~8_combout\ & (!\Add2~10_combout\ & (\Add1~10_combout\ $ (!\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~10_combout\,
	datac => \Add2~12_combout\,
	datad => \Add2~10_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X21_Y18_N6
\Equal1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~11_combout\ = (\Equal1~4_combout\ & (\Equal1~6_combout\ & (\Add2~8_combout\ $ (!\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add1~6_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~6_combout\,
	combout => \Equal1~11_combout\);

-- Location: LCCOMB_X21_Y18_N0
\Equal1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~12_combout\ = (\Equal1~10_combout\ & (\Equal1~11_combout\ & (\Add1~12_combout\ $ (!\Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add2~14_combout\,
	datac => \Equal1~10_combout\,
	datad => \Equal1~11_combout\,
	combout => \Equal1~12_combout\);

-- Location: LCCOMB_X16_Y14_N26
\U1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\U1|hcs\(4) & (!\U1|hcs\(6) & (!\U1|hcs\(5) & !\U1|hcs\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(4),
	datab => \U1|hcs\(6),
	datac => \U1|hcs\(5),
	datad => \U1|hcs\(7),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y16_N22
\U1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal1~1_combout\ = (!\U1|vcs\(4) & (\U1|vcs\(2) & (!\U1|vcs\(0) & \U1|vcs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(4),
	datab => \U1|vcs\(2),
	datac => \U1|vcs\(0),
	datad => \U1|vcs\(3),
	combout => \U1|Equal1~1_combout\);

-- Location: LCCOMB_X18_Y21_N12
\U2|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector25~0_combout\ = ((!\U2|Equal0~2_combout\ & ((\U2|Equal1~0_combout\) # (\U2|Equal2~1_combout\)))) # (!\U2|s_FSM_state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|s_FSM_state.stop~q\,
	datac => \U2|Equal2~1_combout\,
	datad => \U2|Equal0~2_combout\,
	combout => \U2|Selector25~0_combout\);

-- Location: FF_X13_Y16_N29
\s_mainFSM_state.readSamples\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	asdata => \Selector12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_mainFSM_state.readSamples~q\);

-- Location: LCCOMB_X13_Y16_N10
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (addr_write(5) & (addr_write(4) & (addr_write(2) & addr_write(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(5),
	datab => addr_write(4),
	datac => addr_write(2),
	datad => addr_write(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X13_Y16_N30
\s_ram_write_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_ram_write_en~0_combout\ = (\s_mainFSM_state.readSamples~q\ & (((\s_ram_write_en~q\)))) # (!\s_mainFSM_state.readSamples~q\ & (((\s_ram_write_en~q\ & !\Equal0~2_combout\)) # (!\s_mainFSM_state.writeSamples~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \s_mainFSM_state.writeSamples~q\,
	datac => \s_ram_write_en~q\,
	datad => \Equal0~2_combout\,
	combout => \s_ram_write_en~0_combout\);

-- Location: LCCOMB_X19_Y21_N26
\U2|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector12~0_combout\ = (\U2|s_FSM_state.sclhi~q\ & \U2|s_FSM_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.sclhi~q\,
	datac => \U2|s_FSM_state.idle~q\,
	combout => \U2|Selector12~0_combout\);

-- Location: LCCOMB_X19_Y22_N12
\U2|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector14~0_combout\ = (\U2|Equal3~0_combout\ & \U2|s_FSM_state.sclhi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal3~0_combout\,
	datac => \U2|s_FSM_state.sclhi~q\,
	combout => \U2|Selector14~0_combout\);

-- Location: LCCOMB_X18_Y21_N10
\U2|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector13~0_combout\ = (\U2|Equal1~0_combout\ & (((\U2|s_FSM_state.start~q\ & \U2|Equal0~2_combout\)))) # (!\U2|Equal1~0_combout\ & ((\U2|s_FSM_state.scllo~q\) # ((\U2|s_FSM_state.start~q\ & \U2|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|s_FSM_state.scllo~q\,
	datac => \U2|s_FSM_state.start~q\,
	datad => \U2|Equal0~2_combout\,
	combout => \U2|Selector13~0_combout\);

-- Location: LCCOMB_X13_Y16_N22
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\s_mainFSM_state.writeSamples~q\ & \Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_mainFSM_state.writeSamples~q\,
	datad => \Equal0~2_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X13_Y16_N19
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

-- Location: LCCOMB_X19_Y21_N12
\U2|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|WideOr0~0_combout\ = (\U2|s_FSM_state.idle~q\ & !\U2|s_FSM_state.sclhi2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|s_FSM_state.idle~q\,
	datad => \U2|s_FSM_state.sclhi2~q\,
	combout => \U2|WideOr0~0_combout\);

-- Location: LCCOMB_X19_Y22_N10
\U2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = \U2|FSM:bit_count[3]~q\ $ (((\U2|FSM:bit_count[2]~q\ & (\U2|FSM:bit_count[0]~q\ & \U2|FSM:bit_count[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|FSM:bit_count[2]~q\,
	datab => \U2|FSM:bit_count[0]~q\,
	datac => \U2|FSM:bit_count[1]~q\,
	datad => \U2|FSM:bit_count[3]~q\,
	combout => \U2|Add0~0_combout\);

-- Location: LCCOMB_X19_Y22_N16
\U2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~2_combout\ = \U2|FSM:bit_count[2]~q\ $ (((\U2|FSM:bit_count[0]~q\ & \U2|FSM:bit_count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|FSM:bit_count[0]~q\,
	datac => \U2|FSM:bit_count[1]~q\,
	datad => \U2|FSM:bit_count[2]~q\,
	combout => \U2|Add0~2_combout\);

-- Location: LCCOMB_X19_Y22_N22
\U2|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector19~0_combout\ = (\U2|FSM:bit_count[2]~q\ & !\U2|s_FSM_state.scllo2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|FSM:bit_count[2]~q\,
	datad => \U2|s_FSM_state.scllo2~q\,
	combout => \U2|Selector19~0_combout\);

-- Location: LCCOMB_X21_Y21_N22
\U2|r_byte_to_send[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|r_byte_to_send[5]~0_combout\ = (\U2|count\(2)) # (((!\U2|r_no_of_bytes_to_send\(0) & !\U2|r_no_of_bytes_to_send\(1))) # (!\U2|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(2),
	datab => \U2|r_no_of_bytes_to_send\(0),
	datac => \U2|count\(6),
	datad => \U2|r_no_of_bytes_to_send\(1),
	combout => \U2|r_byte_to_send[5]~0_combout\);

-- Location: LCCOMB_X13_Y16_N18
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\s_mainFSM_state.readSamples~q\ & ((\U5|o_triggered~q\) # ((\s_mainFSM_state.start~q\) # (\U3|OUTPUT_PULSE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \U5|o_triggered~q\,
	datac => \s_mainFSM_state.start~q\,
	datad => \U3|OUTPUT_PULSE~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X14_Y15_N11
\U5|s_state.belowLevel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \U5|Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|s_state.belowLevel~q\);

-- Location: LCCOMB_X13_Y22_N20
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

-- Location: LCCOMB_X14_Y15_N16
\U5|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|LessThan0~3_combout\ = ((\U5|LessThan0~1_combout\ & ((\U5|LessThan0~2_combout\) # (!\AD_data[4]~input_o\)))) # (!\AD_data[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD_data[4]~input_o\,
	datab => \U5|LessThan0~2_combout\,
	datac => \AD_data[11]~input_o\,
	datad => \U5|LessThan0~1_combout\,
	combout => \U5|LessThan0~3_combout\);

-- Location: FF_X14_Y15_N23
\U5|s_state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \U5|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|s_state.ready~q\);

-- Location: LCCOMB_X14_Y15_N28
\U5|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Selector2~0_combout\ = (\U5|s_state.ready~q\ & \U5|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|s_state.ready~q\,
	datad => \U5|LessThan0~3_combout\,
	combout => \U5|Selector2~0_combout\);

-- Location: FF_X14_Y15_N27
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

-- Location: LCCOMB_X14_Y15_N20
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

-- Location: LCCOMB_X14_Y15_N6
\U5|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Selector2~1_combout\ = (!\U5|Selector3~1_combout\ & (((\U5|s_state.start~q\ & !\U5|s_state.ready~q\)) # (!\U5|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|s_state.start~q\,
	datab => \U5|Selector3~1_combout\,
	datac => \U5|s_state.ready~q\,
	datad => \U5|LessThan0~3_combout\,
	combout => \U5|Selector2~1_combout\);

-- Location: LCCOMB_X14_Y15_N10
\U5|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Selector2~2_combout\ = (!\U5|s_state.triggered~q\ & ((\U5|Selector2~0_combout\) # ((\U5|Selector2~1_combout\ & \U5|s_state.belowLevel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Selector2~1_combout\,
	datab => \U5|s_state.triggered~q\,
	datac => \U5|s_state.belowLevel~q\,
	datad => \U5|Selector2~0_combout\,
	combout => \U5|Selector2~2_combout\);

-- Location: LCCOMB_X14_Y15_N0
\U5|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Selector1~0_combout\ = (\U5|s_state.triggered~q\) # ((!\U5|Selector3~1_combout\ & ((!\U5|LessThan0~3_combout\) # (!\U5|s_state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|s_state.ready~q\,
	datab => \U5|Selector3~1_combout\,
	datac => \U5|s_state.triggered~q\,
	datad => \U5|LessThan0~3_combout\,
	combout => \U5|Selector1~0_combout\);

-- Location: LCCOMB_X14_Y15_N22
\U5|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Selector1~1_combout\ = (\U5|Selector2~1_combout\ & ((\U5|s_state.triggered~q\) # ((\U5|s_state.ready~q\)))) # (!\U5|Selector2~1_combout\ & (((\U5|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|Selector2~1_combout\,
	datab => \U5|s_state.triggered~q\,
	datac => \U5|s_state.ready~q\,
	datad => \U5|Selector1~0_combout\,
	combout => \U5|Selector1~1_combout\);

-- Location: LCCOMB_X14_Y15_N26
\U5|s_state.start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|s_state.start~0_combout\ = (\U5|Selector3~1_combout\) # ((\U5|s_state.start~q\) # (\U5|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|Selector3~1_combout\,
	datac => \U5|s_state.start~q\,
	datad => \U5|LessThan0~3_combout\,
	combout => \U5|s_state.start~0_combout\);

-- Location: LCCOMB_X17_Y17_N30
\Div0|auto_generated|divider|divider|StageOut[61]~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~276_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[52]~273_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[52]~273_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~276_combout\);

-- Location: LCCOMB_X18_Y19_N26
\Div0|auto_generated|divider|divider|StageOut[60]~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~277_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[51]~322_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[51]~322_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~277_combout\);

-- Location: LCCOMB_X16_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[70]~279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~279_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[61]~276_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[61]~276_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~279_combout\);

-- Location: LCCOMB_X16_Y17_N30
\Div0|auto_generated|divider|divider|StageOut[69]~280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[69]~280_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[60]~277_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[60]~277_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[69]~280_combout\);

-- Location: LCCOMB_X19_Y17_N10
\Div0|auto_generated|divider|divider|StageOut[66]~283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~283_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[57]~186_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[57]~186_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~283_combout\);

-- Location: LCCOMB_X17_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[78]~284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[78]~284_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[69]~280_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[69]~280_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[78]~284_combout\);

-- Location: LCCOMB_X18_Y20_N2
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

-- Location: LCCOMB_X16_Y20_N0
\Div0|auto_generated|divider|divider|StageOut[109]~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[109]~303_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[100]~299_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[100]~299_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[109]~303_combout\);

-- Location: LCCOMB_X13_Y18_N26
\Div0|auto_generated|divider|divider|StageOut[118]~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~306_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[109]~303_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[109]~303_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~306_combout\);

-- Location: LCCOMB_X13_Y18_N30
\Div0|auto_generated|divider|divider|StageOut[124]~313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~313_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[115]~309_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[115]~309_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~313_combout\);

-- Location: LCCOMB_X16_Y20_N26
\Div0|auto_generated|divider|divider|StageOut[123]~314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~314_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~310_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[114]~310_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~314_combout\);

-- Location: LCCOMB_X17_Y18_N30
\Div0|auto_generated|divider|divider|StageOut[133]~316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[133]~316_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[124]~313_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[124]~313_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[133]~316_combout\);

-- Location: LCCOMB_X17_Y18_N24
\Div0|auto_generated|divider|divider|StageOut[132]~317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~317_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[123]~314_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[123]~314_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~317_combout\);

-- Location: LCCOMB_X14_Y18_N20
\Div0|auto_generated|divider|divider|StageOut[131]~318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~318_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[122]~327_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[122]~327_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~318_combout\);

-- Location: LCCOMB_X17_Y18_N6
\Div0|auto_generated|divider|divider|StageOut[130]~319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~319_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[121]~258_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[121]~258_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~319_combout\);

-- Location: LCCOMB_X18_Y17_N30
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

-- Location: LCCOMB_X18_Y19_N24
\Div0|auto_generated|divider|divider|StageOut[51]~322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~322_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~322_combout\);

-- Location: LCCOMB_X18_Y19_N30
\Div0|auto_generated|divider|divider|StageOut[58]~323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~323_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~323_combout\);

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
	i => GND,
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
	i => GND,
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
	i => blue(4),
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \U1|visible_img~3_combout\,
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
	i => \AD_data[8]~input_o\,
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
	i => \AD_data[9]~input_o\,
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
	i => \AD_data[10]~input_o\,
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
	i => \AD_data[11]~input_o\,
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

-- Location: LCCOMB_X22_Y20_N8
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

-- Location: LCCOMB_X22_Y20_N0
\U2|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal2~0_combout\ = (\U2|count\(1) & (\U2|count\(5) & (\U2|count\(3) & \U2|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(1),
	datab => \U2|count\(5),
	datac => \U2|count\(3),
	datad => \U2|count\(4),
	combout => \U2|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\U2|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal6~0_combout\ = (\U2|count\(7) & !\U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(7),
	datac => \U2|count\(0),
	combout => \U2|Equal6~0_combout\);

-- Location: LCCOMB_X22_Y20_N18
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

-- Location: FF_X22_Y20_N21
\U2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[6]~21_combout\,
	sclr => \U2|count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(6));

-- Location: LCCOMB_X22_Y20_N28
\U2|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal2~1_combout\ = (!\U2|count\(2) & (\U2|Equal2~0_combout\ & (\U2|Equal6~0_combout\ & \U2|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(2),
	datab => \U2|Equal2~0_combout\,
	datac => \U2|Equal6~0_combout\,
	datad => \U2|count\(6),
	combout => \U2|Equal2~1_combout\);

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

-- Location: FF_X13_Y16_N17
\U3|reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	asdata => \SW~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg0~q\);

-- Location: LCCOMB_X13_Y16_N28
\U3|OUTPUT_PULSE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|OUTPUT_PULSE~0_combout\ = (!\U3|reg1~q\ & \U3|reg0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg1~q\,
	datad => \U3|reg0~q\,
	combout => \U3|OUTPUT_PULSE~0_combout\);

-- Location: LCCOMB_X21_Y21_N6
\U2|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector9~0_combout\ = (\U2|s_FSM_state.sclhi2~q\ & ((\U2|r_no_of_bytes_to_send\(1)))) # (!\U2|s_FSM_state.sclhi2~q\ & (\U2|s_FSM_state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.sclhi2~q\,
	datac => \U2|s_FSM_state.idle~q\,
	datad => \U2|r_no_of_bytes_to_send\(1),
	combout => \U2|Selector9~0_combout\);

-- Location: LCCOMB_X21_Y21_N0
\U2|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector9~1_combout\ = (\U2|s_FSM_state.sclhi2~q\ & ((\U2|Equal2~1_combout\ & (!\U2|r_no_of_bytes_to_send\(0) & \U2|Selector9~0_combout\)) # (!\U2|Equal2~1_combout\ & (\U2|r_no_of_bytes_to_send\(0))))) # (!\U2|s_FSM_state.sclhi2~q\ & 
-- (((\U2|r_no_of_bytes_to_send\(0) & \U2|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.sclhi2~q\,
	datab => \U2|Equal2~1_combout\,
	datac => \U2|r_no_of_bytes_to_send\(0),
	datad => \U2|Selector9~0_combout\,
	combout => \U2|Selector9~1_combout\);

-- Location: FF_X21_Y21_N1
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

-- Location: LCCOMB_X21_Y21_N12
\U2|Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector8~2_combout\ = (\U2|r_no_of_bytes_to_send\(1) $ (((\U2|Equal2~1_combout\ & \U2|r_no_of_bytes_to_send\(0))))) # (!\U2|s_FSM_state.sclhi2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.sclhi2~q\,
	datab => \U2|r_no_of_bytes_to_send\(1),
	datac => \U2|Equal2~1_combout\,
	datad => \U2|r_no_of_bytes_to_send\(0),
	combout => \U2|Selector8~2_combout\);

-- Location: LCCOMB_X21_Y21_N2
\U2|Selector8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector8~3_combout\ = (\U2|Selector8~2_combout\ & ((\U2|s_FSM_state.sclhi2~q\) # ((\U2|r_no_of_bytes_to_send\(1)) # (!\U2|s_FSM_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.sclhi2~q\,
	datab => \U2|s_FSM_state.idle~q\,
	datac => \U2|r_no_of_bytes_to_send\(1),
	datad => \U2|Selector8~2_combout\,
	combout => \U2|Selector8~3_combout\);

-- Location: FF_X21_Y21_N3
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

-- Location: LCCOMB_X21_Y21_N4
\U2|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal4~0_combout\ = (!\U2|r_no_of_bytes_to_send\(1) & !\U2|r_no_of_bytes_to_send\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|r_no_of_bytes_to_send\(1),
	datad => \U2|r_no_of_bytes_to_send\(0),
	combout => \U2|Equal4~0_combout\);

-- Location: LCCOMB_X18_Y21_N6
\U2|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector16~0_combout\ = (\U2|Equal2~1_combout\ & (\U2|s_FSM_state.sclhi2~q\ & (\U2|Equal4~0_combout\))) # (!\U2|Equal2~1_combout\ & (((\U2|s_FSM_state.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.sclhi2~q\,
	datab => \U2|Equal4~0_combout\,
	datac => \U2|s_FSM_state.stop~q\,
	datad => \U2|Equal2~1_combout\,
	combout => \U2|Selector16~0_combout\);

-- Location: FF_X18_Y21_N7
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

-- Location: LCCOMB_X18_Y21_N4
\U2|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector10~0_combout\ = (\U2|Equal2~1_combout\ & (!\U2|s_FSM_state.stop~q\ & ((\U3|OUTPUT_PULSE~0_combout\) # (\U2|s_FSM_state.idle~q\)))) # (!\U2|Equal2~1_combout\ & ((\U3|OUTPUT_PULSE~0_combout\) # ((\U2|s_FSM_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U3|OUTPUT_PULSE~0_combout\,
	datac => \U2|s_FSM_state.idle~q\,
	datad => \U2|s_FSM_state.stop~q\,
	combout => \U2|Selector10~0_combout\);

-- Location: FF_X18_Y21_N5
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

-- Location: LCCOMB_X22_Y20_N30
\U2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal0~1_combout\ = (!\U2|count\(7) & (\U2|count\(0) & \U2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(7),
	datac => \U2|count\(0),
	datad => \U2|Equal0~0_combout\,
	combout => \U2|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y20_N4
\U2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal0~2_combout\ = (\U2|count\(1) & (\U2|Equal0~1_combout\ & !\U2|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(1),
	datac => \U2|Equal0~1_combout\,
	datad => \U2|count\(6),
	combout => \U2|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y21_N14
\U2|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector17~0_combout\ = (\U2|s_FSM_state.start~q\ & (!\U2|Equal0~2_combout\ & ((\U2|s_FSM_state.idle~q\) # (\U2|run_timer~q\)))) # (!\U2|s_FSM_state.start~q\ & ((\U2|s_FSM_state.idle~q\) # ((\U2|run_timer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.start~q\,
	datab => \U2|s_FSM_state.idle~q\,
	datac => \U2|run_timer~q\,
	datad => \U2|Equal0~2_combout\,
	combout => \U2|Selector17~0_combout\);

-- Location: FF_X18_Y21_N15
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

-- Location: LCCOMB_X21_Y21_N30
\U2|count[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[1]~14_combout\ = (\U2|Equal2~1_combout\) # (!\U2|run_timer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Equal2~1_combout\,
	datac => \U2|run_timer~q\,
	combout => \U2|count[1]~14_combout\);

-- Location: FF_X22_Y20_N9
\U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[0]~8_combout\,
	sclr => \U2|count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(0));

-- Location: LCCOMB_X22_Y20_N14
\U2|count[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[3]~15_combout\ = (\U2|count\(3) & (!\U2|count[2]~13\)) # (!\U2|count\(3) & ((\U2|count[2]~13\) # (GND)))
-- \U2|count[3]~16\ = CARRY((!\U2|count[2]~13\) # (!\U2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(3),
	datad => VCC,
	cin => \U2|count[2]~13\,
	combout => \U2|count[3]~15_combout\,
	cout => \U2|count[3]~16\);

-- Location: FF_X22_Y20_N15
\U2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[3]~15_combout\,
	sclr => \U2|count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(3));

-- Location: LCCOMB_X22_Y20_N16
\U2|count[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[4]~17_combout\ = (\U2|count\(4) & (\U2|count[3]~16\ $ (GND))) # (!\U2|count\(4) & (!\U2|count[3]~16\ & VCC))
-- \U2|count[4]~18\ = CARRY((\U2|count\(4) & !\U2|count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(4),
	datad => VCC,
	cin => \U2|count[3]~16\,
	combout => \U2|count[4]~17_combout\,
	cout => \U2|count[4]~18\);

-- Location: FF_X22_Y20_N17
\U2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[4]~17_combout\,
	sclr => \U2|count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(4));

-- Location: FF_X22_Y20_N19
\U2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|count[5]~19_combout\,
	sclr => \U2|count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(5));

-- Location: LCCOMB_X22_Y20_N24
\U2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal0~0_combout\ = (\U2|count\(2) & (\U2|count\(5) & (\U2|count\(3) & \U2|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(2),
	datab => \U2|count\(5),
	datac => \U2|count\(3),
	datad => \U2|count\(4),
	combout => \U2|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y20_N6
\U2|Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal6~1_combout\ = (!\U2|count\(1) & (\U2|Equal0~0_combout\ & (\U2|Equal6~0_combout\ & !\U2|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(1),
	datab => \U2|Equal0~0_combout\,
	datac => \U2|Equal6~0_combout\,
	datad => \U2|count\(6),
	combout => \U2|Equal6~1_combout\);

-- Location: LCCOMB_X18_Y21_N24
\U2|Selector15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector15~3_combout\ = ((!\U2|Equal1~0_combout\ & (!\U2|Equal6~1_combout\ & !\U2|Equal0~2_combout\))) # (!\U2|s_FSM_state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|Equal6~1_combout\,
	datac => \U2|s_FSM_state.stop~q\,
	datad => \U2|Equal0~2_combout\,
	combout => \U2|Selector15~3_combout\);

-- Location: LCCOMB_X22_Y20_N26
\U2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~0_combout\ = (!\U2|count\(1) & (\U2|Equal0~1_combout\ & \U2|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(1),
	datac => \U2|Equal0~1_combout\,
	datad => \U2|count\(6),
	combout => \U2|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y20_N2
\U2|Selector15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector15~4_combout\ = (\U2|s_FSM_state.scllo2~q\ & ((\U2|Equal1~0_combout\) # ((!\U2|Equal2~1_combout\ & \U2|s_FSM_state.sclhi2~q\)))) # (!\U2|s_FSM_state.scllo2~q\ & (!\U2|Equal2~1_combout\ & (\U2|s_FSM_state.sclhi2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo2~q\,
	datab => \U2|Equal2~1_combout\,
	datac => \U2|s_FSM_state.sclhi2~q\,
	datad => \U2|Equal1~0_combout\,
	combout => \U2|Selector15~4_combout\);

-- Location: FF_X19_Y20_N3
\U2|s_FSM_state.sclhi2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|s_FSM_state.sclhi2~q\);

-- Location: LCCOMB_X19_Y22_N8
\U2|Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector14~1_combout\ = (\U2|Selector14~0_combout\ & ((\U2|Equal2~1_combout\) # ((!\U2|Equal1~0_combout\ & \U2|s_FSM_state.scllo2~q\)))) # (!\U2|Selector14~0_combout\ & (!\U2|Equal1~0_combout\ & (\U2|s_FSM_state.scllo2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector14~0_combout\,
	datab => \U2|Equal1~0_combout\,
	datac => \U2|s_FSM_state.scllo2~q\,
	datad => \U2|Equal2~1_combout\,
	combout => \U2|Selector14~1_combout\);

-- Location: FF_X19_Y22_N9
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

-- Location: LCCOMB_X19_Y22_N24
\U2|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector21~0_combout\ = (\U2|s_FSM_state.scllo~q\ & (\U2|Equal1~0_combout\ $ ((\U2|FSM:bit_count[0]~q\)))) # (!\U2|s_FSM_state.scllo~q\ & (((\U2|FSM:bit_count[0]~q\ & !\U2|s_FSM_state.scllo2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datab => \U2|Equal1~0_combout\,
	datac => \U2|FSM:bit_count[0]~q\,
	datad => \U2|s_FSM_state.scllo2~q\,
	combout => \U2|Selector21~0_combout\);

-- Location: FF_X19_Y22_N25
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

-- Location: LCCOMB_X19_Y22_N26
\U2|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~1_combout\ = \U2|FSM:bit_count[1]~q\ $ (\U2|FSM:bit_count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|FSM:bit_count[1]~q\,
	datad => \U2|FSM:bit_count[0]~q\,
	combout => \U2|Add0~1_combout\);

-- Location: LCCOMB_X19_Y21_N28
\U2|FSM:bit_count[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|FSM:bit_count[1]~0_combout\ = (\U2|Equal1~0_combout\ & (\U2|Add0~1_combout\)) # (!\U2|Equal1~0_combout\ & ((\U2|FSM:bit_count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add0~1_combout\,
	datac => \U2|FSM:bit_count[1]~q\,
	datad => \U2|Equal1~0_combout\,
	combout => \U2|FSM:bit_count[1]~0_combout\);

-- Location: LCCOMB_X19_Y21_N22
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

-- Location: FF_X19_Y21_N29
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

-- Location: LCCOMB_X19_Y22_N0
\U2|FSM:bit_count[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|FSM:bit_count[3]~0_combout\ = (\U2|Equal1~0_combout\ & (\U2|Add0~0_combout\)) # (!\U2|Equal1~0_combout\ & ((\U2|FSM:bit_count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~0_combout\,
	datab => \U2|Equal1~0_combout\,
	datac => \U2|FSM:bit_count[3]~q\,
	combout => \U2|FSM:bit_count[3]~0_combout\);

-- Location: LCCOMB_X19_Y22_N4
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

-- Location: FF_X19_Y22_N1
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

-- Location: LCCOMB_X19_Y22_N30
\U2|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal3~0_combout\ = (!\U2|FSM:bit_count[2]~q\ & (!\U2|FSM:bit_count[0]~q\ & (!\U2|FSM:bit_count[1]~q\ & \U2|FSM:bit_count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|FSM:bit_count[2]~q\,
	datab => \U2|FSM:bit_count[0]~q\,
	datac => \U2|FSM:bit_count[1]~q\,
	datad => \U2|FSM:bit_count[3]~q\,
	combout => \U2|Equal3~0_combout\);

-- Location: LCCOMB_X19_Y21_N2
\U2|Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector13~1_combout\ = (\U2|s_FSM_state.sclhi~q\ & (((\U2|s_FSM_state.sclhi2~q\ & !\U2|Equal4~0_combout\)) # (!\U2|Equal3~0_combout\))) # (!\U2|s_FSM_state.sclhi~q\ & (\U2|s_FSM_state.sclhi2~q\ & ((!\U2|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.sclhi~q\,
	datab => \U2|s_FSM_state.sclhi2~q\,
	datac => \U2|Equal3~0_combout\,
	datad => \U2|Equal4~0_combout\,
	combout => \U2|Selector13~1_combout\);

-- Location: LCCOMB_X18_Y21_N2
\U2|Selector13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector13~2_combout\ = (\U2|Selector13~0_combout\) # ((\U2|Equal2~1_combout\ & \U2|Selector13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector13~0_combout\,
	datac => \U2|Equal2~1_combout\,
	datad => \U2|Selector13~1_combout\,
	combout => \U2|Selector13~2_combout\);

-- Location: FF_X18_Y21_N3
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

-- Location: LCCOMB_X18_Y21_N30
\U2|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector11~0_combout\ = (\U2|Equal0~2_combout\ & (!\U2|s_FSM_state.idle~q\ & ((\U3|OUTPUT_PULSE~0_combout\)))) # (!\U2|Equal0~2_combout\ & ((\U2|s_FSM_state.start~q\) # ((!\U2|s_FSM_state.idle~q\ & \U3|OUTPUT_PULSE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal0~2_combout\,
	datab => \U2|s_FSM_state.idle~q\,
	datac => \U2|s_FSM_state.start~q\,
	datad => \U3|OUTPUT_PULSE~0_combout\,
	combout => \U2|Selector11~0_combout\);

-- Location: FF_X18_Y21_N31
\U2|s_FSM_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|s_FSM_state.start~q\);

-- Location: LCCOMB_X18_Y21_N26
\U2|Selector15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector15~2_combout\ = (\U2|Equal2~1_combout\) # ((\U2|Equal0~2_combout\ & ((\U2|s_FSM_state.scllo~q\) # (\U2|s_FSM_state.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal2~1_combout\,
	datab => \U2|s_FSM_state.scllo~q\,
	datac => \U2|s_FSM_state.start~q\,
	datad => \U2|Equal0~2_combout\,
	combout => \U2|Selector15~2_combout\);

-- Location: LCCOMB_X19_Y21_N8
\U2|Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector12~1_combout\ = (\U2|Selector12~0_combout\ & (((\U2|s_FSM_state.scllo2~q\) # (!\U2|Selector15~2_combout\)) # (!\U2|Selector15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector12~0_combout\,
	datab => \U2|Selector15~3_combout\,
	datac => \U2|Selector15~2_combout\,
	datad => \U2|s_FSM_state.scllo2~q\,
	combout => \U2|Selector12~1_combout\);

-- Location: LCCOMB_X19_Y22_N20
\U2|Selector12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector12~2_combout\ = (\U2|Equal1~0_combout\ & (!\U2|s_FSM_state.scllo2~q\ & ((\U2|s_FSM_state.scllo~q\) # (\U2|Selector12~1_combout\)))) # (!\U2|Equal1~0_combout\ & (((\U2|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datab => \U2|Selector12~1_combout\,
	datac => \U2|Equal1~0_combout\,
	datad => \U2|s_FSM_state.scllo2~q\,
	combout => \U2|Selector12~2_combout\);

-- Location: FF_X19_Y22_N21
\U2|s_FSM_state.sclhi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|s_FSM_state.sclhi~q\);

-- Location: LCCOMB_X18_Y21_N18
\U2|scl~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|scl~4_combout\ = (\U2|s_FSM_state.sclhi2~q\) # ((\U2|s_FSM_state.sclhi~q\) # ((\U2|s_FSM_state.start~q\ & \U2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.sclhi2~q\,
	datab => \U2|s_FSM_state.sclhi~q\,
	datac => \U2|s_FSM_state.start~q\,
	datad => \U2|Equal0~2_combout\,
	combout => \U2|scl~4_combout\);

-- Location: LCCOMB_X19_Y22_N2
\U2|Selector25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector25~1_combout\ = (\U2|Equal2~1_combout\) # ((!\U2|s_FSM_state.sclhi2~q\ & !\U2|s_FSM_state.sclhi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|s_FSM_state.sclhi2~q\,
	datac => \U2|s_FSM_state.sclhi~q\,
	datad => \U2|Equal2~1_combout\,
	combout => \U2|Selector25~1_combout\);

-- Location: LCCOMB_X19_Y22_N18
\U2|Selector25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector25~2_combout\ = (\U2|Selector25~1_combout\ & ((\U2|Equal1~0_combout\) # ((!\U2|s_FSM_state.scllo~q\ & !\U2|s_FSM_state.scllo2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datab => \U2|Selector25~1_combout\,
	datac => \U2|Equal1~0_combout\,
	datad => \U2|s_FSM_state.scllo2~q\,
	combout => \U2|Selector25~2_combout\);

-- Location: LCCOMB_X18_Y21_N0
\U2|scl~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|scl~3_combout\ = (\U2|Selector25~0_combout\ & ((\U2|Selector25~2_combout\ & (\U2|scl~4_combout\)) # (!\U2|Selector25~2_combout\ & ((\U2|scl~en_q\))))) # (!\U2|Selector25~0_combout\ & (((\U2|scl~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Selector25~0_combout\,
	datab => \U2|scl~4_combout\,
	datac => \U2|scl~en_q\,
	datad => \U2|Selector25~2_combout\,
	combout => \U2|scl~3_combout\);

-- Location: FF_X18_Y21_N1
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

-- Location: LCCOMB_X21_Y21_N24
\U2|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector7~0_combout\ = (\U2|s_FSM_state.sclhi2~q\ & (\U2|Equal2~1_combout\ & (\U2|r_no_of_bytes_to_send\(1) $ (\U2|r_no_of_bytes_to_send\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.sclhi2~q\,
	datab => \U2|r_no_of_bytes_to_send\(1),
	datac => \U2|Equal2~1_combout\,
	datad => \U2|r_no_of_bytes_to_send\(0),
	combout => \U2|Selector7~0_combout\);

-- Location: LCCOMB_X21_Y21_N20
\U2|r_byte_to_send[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|r_byte_to_send[5]~1_combout\ = (\U2|s_FSM_state.sclhi2~q\ & ((\U2|r_byte_to_send[5]~0_combout\) # ((!\U2|Equal2~0_combout\) # (!\U2|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|r_byte_to_send[5]~0_combout\,
	datab => \U2|Equal6~0_combout\,
	datac => \U2|s_FSM_state.sclhi2~q\,
	datad => \U2|Equal2~0_combout\,
	combout => \U2|r_byte_to_send[5]~1_combout\);

-- Location: LCCOMB_X19_Y21_N10
\U2|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector7~1_combout\ = (\U2|Selector7~0_combout\) # ((\U2|r_byte_to_send\(0) & ((\U2|WideOr0~0_combout\) # (\U2|r_byte_to_send[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr0~0_combout\,
	datab => \U2|Selector7~0_combout\,
	datac => \U2|r_byte_to_send\(0),
	datad => \U2|r_byte_to_send[5]~1_combout\,
	combout => \U2|Selector7~1_combout\);

-- Location: FF_X19_Y21_N11
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

-- Location: LCCOMB_X19_Y21_N20
\U2|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector6~0_combout\ = (\U2|s_FSM_state.scllo~q\ & ((\U2|r_byte_to_send\(0)))) # (!\U2|s_FSM_state.scllo~q\ & (!\U2|s_FSM_state.sclhi2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datab => \U2|s_FSM_state.sclhi2~q\,
	datad => \U2|r_byte_to_send\(0),
	combout => \U2|Selector6~0_combout\);

-- Location: LCCOMB_X19_Y21_N14
\U2|r_byte_to_send[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|r_byte_to_send[5]~2_combout\ = (!\U2|r_byte_to_send[5]~1_combout\ & ((\U2|s_FSM_state.scllo~q\ & ((\U2|Equal1~0_combout\))) # (!\U2|s_FSM_state.scllo~q\ & (!\U2|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|WideOr0~0_combout\,
	datab => \U2|r_byte_to_send[5]~1_combout\,
	datac => \U2|s_FSM_state.scllo~q\,
	datad => \U2|Equal1~0_combout\,
	combout => \U2|r_byte_to_send[5]~2_combout\);

-- Location: FF_X19_Y21_N21
\U2|r_byte_to_send[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector6~0_combout\,
	ena => \U2|r_byte_to_send[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(1));

-- Location: LCCOMB_X19_Y21_N18
\U2|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector5~0_combout\ = (\U2|s_FSM_state.scllo~q\ & \U2|r_byte_to_send\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datad => \U2|r_byte_to_send\(1),
	combout => \U2|Selector5~0_combout\);

-- Location: FF_X19_Y21_N19
\U2|r_byte_to_send[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector5~0_combout\,
	ena => \U2|r_byte_to_send[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(2));

-- Location: LCCOMB_X19_Y21_N0
\U2|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector4~0_combout\ = (\U2|s_FSM_state.scllo~q\ & \U2|r_byte_to_send\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datad => \U2|r_byte_to_send\(2),
	combout => \U2|Selector4~0_combout\);

-- Location: FF_X19_Y21_N1
\U2|r_byte_to_send[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector4~0_combout\,
	ena => \U2|r_byte_to_send[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(3));

-- Location: LCCOMB_X21_Y21_N26
\U2|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector3~0_combout\ = (\U2|r_no_of_bytes_to_send\(1) & \U2|r_no_of_bytes_to_send\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|r_no_of_bytes_to_send\(1),
	datad => \U2|r_no_of_bytes_to_send\(0),
	combout => \U2|Selector3~0_combout\);

-- Location: LCCOMB_X19_Y21_N6
\U2|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector3~1_combout\ = (\U2|s_FSM_state.sclhi2~q\ & (((\U2|Selector3~0_combout\)))) # (!\U2|s_FSM_state.sclhi2~q\ & (((\U2|r_byte_to_send\(3))) # (!\U2|s_FSM_state.scllo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datab => \U2|r_byte_to_send\(3),
	datac => \U2|Selector3~0_combout\,
	datad => \U2|s_FSM_state.sclhi2~q\,
	combout => \U2|Selector3~1_combout\);

-- Location: FF_X19_Y21_N7
\U2|r_byte_to_send[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector3~1_combout\,
	ena => \U2|r_byte_to_send[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(4));

-- Location: LCCOMB_X19_Y21_N4
\U2|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector2~0_combout\ = (\U2|s_FSM_state.scllo~q\ & ((\U2|r_byte_to_send\(4)))) # (!\U2|s_FSM_state.scllo~q\ & (!\U2|s_FSM_state.sclhi2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datab => \U2|s_FSM_state.sclhi2~q\,
	datad => \U2|r_byte_to_send\(4),
	combout => \U2|Selector2~0_combout\);

-- Location: FF_X19_Y21_N5
\U2|r_byte_to_send[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector2~0_combout\,
	ena => \U2|r_byte_to_send[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(5));

-- Location: LCCOMB_X19_Y21_N24
\U2|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector1~0_combout\ = (\U2|s_FSM_state.sclhi2~q\ & (((!\U2|Selector3~0_combout\)))) # (!\U2|s_FSM_state.sclhi2~q\ & (((\U2|r_byte_to_send\(5))) # (!\U2|s_FSM_state.scllo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datab => \U2|r_byte_to_send\(5),
	datac => \U2|Selector3~0_combout\,
	datad => \U2|s_FSM_state.sclhi2~q\,
	combout => \U2|Selector1~0_combout\);

-- Location: FF_X19_Y21_N25
\U2|r_byte_to_send[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector1~0_combout\,
	ena => \U2|r_byte_to_send[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(6));

-- Location: LCCOMB_X19_Y21_N16
\U2|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector0~0_combout\ = (\U2|s_FSM_state.scllo~q\ & \U2|r_byte_to_send\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datad => \U2|r_byte_to_send\(6),
	combout => \U2|Selector0~0_combout\);

-- Location: FF_X19_Y21_N17
\U2|r_byte_to_send[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|Selector0~0_combout\,
	ena => \U2|r_byte_to_send[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|r_byte_to_send\(7));

-- Location: LCCOMB_X19_Y21_N30
\U2|sda~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|sda~1_combout\ = (\U2|s_FSM_state.idle~q\ & (!\U2|s_FSM_state.scllo2~q\ & ((!\U2|r_byte_to_send\(7)) # (!\U2|s_FSM_state.scllo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.scllo~q\,
	datab => \U2|r_byte_to_send\(7),
	datac => \U2|s_FSM_state.idle~q\,
	datad => \U2|s_FSM_state.scllo2~q\,
	combout => \U2|sda~1_combout\);

-- Location: LCCOMB_X18_Y21_N16
\U2|sda~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|sda~2_combout\ = (\U2|sda~1_combout\ & (((\U2|Equal6~1_combout\) # (\U2|Equal0~2_combout\)) # (!\U2|s_FSM_state.stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.stop~q\,
	datab => \U2|Equal6~1_combout\,
	datac => \U2|sda~1_combout\,
	datad => \U2|Equal0~2_combout\,
	combout => \U2|sda~2_combout\);

-- Location: LCCOMB_X18_Y21_N20
\U2|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector22~0_combout\ = (!\U2|s_FSM_state.sclhi~q\ & !\U2|s_FSM_state.sclhi2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|s_FSM_state.sclhi~q\,
	datac => \U2|s_FSM_state.sclhi2~q\,
	combout => \U2|Selector22~0_combout\);

-- Location: LCCOMB_X18_Y21_N22
\U2|Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector22~1_combout\ = ((!\U2|Equal1~0_combout\ & ((\U2|Equal6~1_combout\) # (\U2|Equal2~1_combout\)))) # (!\U2|s_FSM_state.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|s_FSM_state.stop~q\,
	datab => \U2|Equal6~1_combout\,
	datac => \U2|Equal2~1_combout\,
	datad => \U2|Equal1~0_combout\,
	combout => \U2|Selector22~1_combout\);

-- Location: LCCOMB_X18_Y21_N28
\U2|Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Selector22~2_combout\ = (\U2|Selector22~0_combout\ & ((\U2|Equal0~2_combout\) # ((\U2|Selector22~1_combout\ & !\U2|s_FSM_state.scllo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal0~2_combout\,
	datab => \U2|Selector22~0_combout\,
	datac => \U2|Selector22~1_combout\,
	datad => \U2|s_FSM_state.scllo~q\,
	combout => \U2|Selector22~2_combout\);

-- Location: LCCOMB_X18_Y21_N8
\U2|sda~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|sda~3_combout\ = (\U2|Selector22~2_combout\ & (\U2|sda~2_combout\)) # (!\U2|Selector22~2_combout\ & ((\U2|sda~en_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|sda~2_combout\,
	datac => \U2|sda~en_q\,
	datad => \U2|Selector22~2_combout\,
	combout => \U2|sda~3_combout\);

-- Location: FF_X18_Y21_N9
\U2|sda~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \U2|sda~3_combout\,
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

-- Location: LCCOMB_X23_Y17_N8
\U1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~0_combout\ = \U1|vcs\(0) $ (VCC)
-- \U1|Add1~1\ = CARRY(\U1|vcs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(0),
	datad => VCC,
	combout => \U1|Add1~0_combout\,
	cout => \U1|Add1~1\);

-- Location: LCCOMB_X23_Y17_N10
\U1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~2_combout\ = (\U1|vcs\(1) & (!\U1|Add1~1\)) # (!\U1|vcs\(1) & ((\U1|Add1~1\) # (GND)))
-- \U1|Add1~3\ = CARRY((!\U1|Add1~1\) # (!\U1|vcs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(1),
	datad => VCC,
	cin => \U1|Add1~1\,
	combout => \U1|Add1~2_combout\,
	cout => \U1|Add1~3\);

-- Location: LCCOMB_X23_Y17_N12
\U1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~4_combout\ = (\U1|vcs\(2) & (\U1|Add1~3\ $ (GND))) # (!\U1|vcs\(2) & (!\U1|Add1~3\ & VCC))
-- \U1|Add1~5\ = CARRY((\U1|vcs\(2) & !\U1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(2),
	datad => VCC,
	cin => \U1|Add1~3\,
	combout => \U1|Add1~4_combout\,
	cout => \U1|Add1~5\);

-- Location: LCCOMB_X23_Y17_N14
\U1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~6_combout\ = (\U1|vcs\(3) & (!\U1|Add1~5\)) # (!\U1|vcs\(3) & ((\U1|Add1~5\) # (GND)))
-- \U1|Add1~7\ = CARRY((!\U1|Add1~5\) # (!\U1|vcs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(3),
	datad => VCC,
	cin => \U1|Add1~5\,
	combout => \U1|Add1~6_combout\,
	cout => \U1|Add1~7\);

-- Location: LCCOMB_X16_Y14_N4
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

-- Location: FF_X16_Y14_N5
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

-- Location: LCCOMB_X16_Y14_N6
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

-- Location: LCCOMB_X16_Y14_N8
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

-- Location: FF_X16_Y14_N9
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

-- Location: LCCOMB_X16_Y14_N10
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

-- Location: LCCOMB_X16_Y14_N12
\U1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|hcs\(4) & (\U1|Add0~7\ $ (GND))) # (!\U1|hcs\(4) & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|hcs\(4) & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(4),
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: LCCOMB_X16_Y14_N14
\U1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|hcs\(5) & (!\U1|Add0~9\)) # (!\U1|hcs\(5) & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|hcs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(5),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: LCCOMB_X16_Y14_N16
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

-- Location: FF_X16_Y14_N17
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

-- Location: LCCOMB_X16_Y14_N18
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

-- Location: FF_X16_Y14_N19
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

-- Location: LCCOMB_X16_Y14_N20
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

-- Location: LCCOMB_X16_Y14_N28
\U1|hcs~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|hcs~2_combout\ = (!\U1|Equal0~2_combout\ & \U1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Equal0~2_combout\,
	datad => \U1|Add0~16_combout\,
	combout => \U1|hcs~2_combout\);

-- Location: FF_X16_Y14_N29
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

-- Location: LCCOMB_X16_Y14_N22
\U1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = \U1|Add0~17\ $ (\U1|hcs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|hcs\(9),
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\);

-- Location: LCCOMB_X16_Y14_N2
\U1|hcs~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|hcs~1_combout\ = (!\U1|Equal0~2_combout\ & \U1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~2_combout\,
	datad => \U1|Add0~18_combout\,
	combout => \U1|hcs~1_combout\);

-- Location: FF_X16_Y14_N3
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

-- Location: LCCOMB_X16_Y14_N24
\U1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (\U1|hcs\(3) & (\U1|hcs\(8) & (\U1|hcs\(2) & \U1|hcs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(3),
	datab => \U1|hcs\(8),
	datac => \U1|hcs\(2),
	datad => \U1|hcs\(9),
	combout => \U1|Equal0~1_combout\);

-- Location: FF_X16_Y14_N7
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

-- Location: LCCOMB_X16_Y14_N30
\U1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (\U1|Equal0~0_combout\ & (\U1|Equal0~1_combout\ & (\U1|hcs\(0) & \U1|hcs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U1|Equal0~1_combout\,
	datac => \U1|hcs\(0),
	datad => \U1|hcs\(1),
	combout => \U1|Equal0~2_combout\);

-- Location: FF_X16_Y14_N31
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

-- Location: FF_X23_Y17_N11
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

-- Location: LCCOMB_X23_Y17_N22
\U1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~14_combout\ = (\U1|vcs\(7) & (!\U1|Add1~13\)) # (!\U1|vcs\(7) & ((\U1|Add1~13\) # (GND)))
-- \U1|Add1~15\ = CARRY((!\U1|Add1~13\) # (!\U1|vcs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(7),
	datad => VCC,
	cin => \U1|Add1~13\,
	combout => \U1|Add1~14_combout\,
	cout => \U1|Add1~15\);

-- Location: LCCOMB_X23_Y17_N24
\U1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~16_combout\ = (\U1|vcs\(8) & (\U1|Add1~15\ $ (GND))) # (!\U1|vcs\(8) & (!\U1|Add1~15\ & VCC))
-- \U1|Add1~17\ = CARRY((\U1|vcs\(8) & !\U1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(8),
	datad => VCC,
	cin => \U1|Add1~15\,
	combout => \U1|Add1~16_combout\,
	cout => \U1|Add1~17\);

-- Location: FF_X23_Y17_N25
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

-- Location: LCCOMB_X23_Y17_N26
\U1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add1~18_combout\ = \U1|vcs\(9) $ (\U1|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(9),
	cin => \U1|Add1~17\,
	combout => \U1|Add1~18_combout\);

-- Location: LCCOMB_X23_Y17_N4
\U1|vcs~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|vcs~0_combout\ = (\U1|Add1~18_combout\ & !\U1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add1~18_combout\,
	datad => \U1|Equal1~2_combout\,
	combout => \U1|vcs~0_combout\);

-- Location: FF_X23_Y17_N5
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

-- Location: LCCOMB_X23_Y16_N0
\U1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal1~2_combout\ = (\U1|Equal1~1_combout\ & (!\U1|vcs\(1) & (\U1|Equal1~0_combout\ & \U1|vcs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal1~1_combout\,
	datab => \U1|vcs\(1),
	datac => \U1|Equal1~0_combout\,
	datad => \U1|vcs\(9),
	combout => \U1|Equal1~2_combout\);

-- Location: LCCOMB_X23_Y17_N28
\U1|vcs~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|vcs~2_combout\ = (\U1|Add1~6_combout\ & !\U1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add1~6_combout\,
	datad => \U1|Equal1~2_combout\,
	combout => \U1|vcs~2_combout\);

-- Location: FF_X23_Y17_N29
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

-- Location: LCCOMB_X23_Y17_N16
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

-- Location: FF_X23_Y17_N17
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

-- Location: LCCOMB_X23_Y17_N18
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

-- Location: FF_X23_Y17_N19
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

-- Location: LCCOMB_X23_Y17_N20
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

-- Location: FF_X23_Y17_N21
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

-- Location: FF_X23_Y17_N23
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

-- Location: LCCOMB_X22_Y17_N30
\U1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal1~0_combout\ = (!\U1|vcs\(5) & (!\U1|vcs\(7) & (!\U1|vcs\(6) & !\U1|vcs\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(5),
	datab => \U1|vcs\(7),
	datac => \U1|vcs\(6),
	datad => \U1|vcs\(8),
	combout => \U1|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y17_N30
\U1|vcs~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|vcs~3_combout\ = (\U1|Add1~0_combout\ & !\U1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add1~0_combout\,
	datad => \U1|Equal1~2_combout\,
	combout => \U1|vcs~3_combout\);

-- Location: FF_X23_Y17_N31
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

-- Location: LCCOMB_X23_Y16_N4
\U1|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan4~1_combout\ = (\U1|LessThan4~0_combout\ & ((!\U1|vcs\(1)) # (!\U1|vcs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan4~0_combout\,
	datac => \U1|vcs\(0),
	datad => \U1|vcs\(1),
	combout => \U1|LessThan4~1_combout\);

-- Location: LCCOMB_X22_Y18_N20
\U1|visible_img~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|visible_img~3_combout\ = (\U1|visible_img~2_combout\ & (((\U1|Equal1~0_combout\ & \U1|LessThan4~1_combout\)) # (!\U1|vcs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|visible_img~2_combout\,
	datab => \U1|Equal1~0_combout\,
	datac => \U1|LessThan4~1_combout\,
	datad => \U1|vcs\(9),
	combout => \U1|visible_img~3_combout\);

-- Location: LCCOMB_X22_Y17_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\U1|vcs\(3) & (\Add1~3\ $ (GND))) # (!\U1|vcs\(3) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\U1|vcs\(3) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X22_Y17_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\U1|vcs\(4) & (!\Add1~5\)) # (!\U1|vcs\(4) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\U1|vcs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

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

-- Location: LCCOMB_X14_Y19_N0
\U5|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|LessThan0~0_combout\ = (!\AD_data[6]~input_o\ & (!\AD_data[5]~input_o\ & (!\AD_data[8]~input_o\ & !\AD_data[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AD_data[6]~input_o\,
	datab => \AD_data[5]~input_o\,
	datac => \AD_data[8]~input_o\,
	datad => \AD_data[7]~input_o\,
	combout => \U5|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y19_N10
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

-- Location: LCCOMB_X14_Y15_N4
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

-- Location: FF_X14_Y15_N5
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

-- Location: LCCOMB_X13_Y15_N0
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

-- Location: FF_X13_Y15_N1
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

-- Location: LCCOMB_X13_Y16_N16
\s_ram_write_en~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_ram_write_en~1_combout\ = (\U5|o_triggered~q\) # (\s_ram_write_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|o_triggered~q\,
	datad => \s_ram_write_en~q\,
	combout => \s_ram_write_en~1_combout\);

-- Location: FF_X13_Y16_N23
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

-- Location: LCCOMB_X13_Y16_N8
\s_ram_write_en~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_ram_write_en~2_combout\ = (\s_ram_write_en~0_combout\ & ((\s_ram_write_en~1_combout\) # ((\U3|reg0~q\ & !\U3|reg1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_ram_write_en~0_combout\,
	datab => \s_ram_write_en~1_combout\,
	datac => \U3|reg0~q\,
	datad => \U3|reg1~q\,
	combout => \s_ram_write_en~2_combout\);

-- Location: FF_X13_Y16_N9
s_ram_write_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_32~inputclkctrl_outclk\,
	d => \s_ram_write_en~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_ram_write_en~q\);

-- Location: LCCOMB_X13_Y17_N4
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

-- Location: LCCOMB_X13_Y17_N6
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

-- Location: LCCOMB_X14_Y17_N26
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\s_mainFSM_state.readSamples~q\ & ((addr_write(1)) # ((\Add0~2_combout\ & \s_mainFSM_state.writeSamples~q\)))) # (!\s_mainFSM_state.readSamples~q\ & (\Add0~2_combout\ & ((\s_mainFSM_state.writeSamples~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \Add0~2_combout\,
	datac => addr_write(1),
	datad => \s_mainFSM_state.writeSamples~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X14_Y17_N27
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

-- Location: LCCOMB_X13_Y17_N8
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

-- Location: LCCOMB_X13_Y17_N10
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

-- Location: LCCOMB_X14_Y17_N18
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\s_mainFSM_state.readSamples~q\ & ((addr_write(3)) # ((\Add0~6_combout\ & \s_mainFSM_state.writeSamples~q\)))) # (!\s_mainFSM_state.readSamples~q\ & (\Add0~6_combout\ & ((\s_mainFSM_state.writeSamples~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \Add0~6_combout\,
	datac => addr_write(3),
	datad => \s_mainFSM_state.writeSamples~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X14_Y17_N19
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

-- Location: LCCOMB_X13_Y17_N12
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (addr_write(4) & (\Add0~7\ $ (GND))) # (!addr_write(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((addr_write(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_write(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X14_Y17_N0
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\s_mainFSM_state.readSamples~q\ & ((addr_write(4)) # ((\Add0~8_combout\ & \s_mainFSM_state.writeSamples~q\)))) # (!\s_mainFSM_state.readSamples~q\ & (\Add0~8_combout\ & ((\s_mainFSM_state.writeSamples~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \Add0~8_combout\,
	datac => addr_write(4),
	datad => \s_mainFSM_state.writeSamples~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X14_Y17_N1
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

-- Location: LCCOMB_X13_Y17_N14
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (addr_write(5) & (!\Add0~9\)) # (!addr_write(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!addr_write(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_write(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X14_Y17_N10
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\s_mainFSM_state.readSamples~q\ & ((addr_write(5)) # ((\Add0~10_combout\ & \s_mainFSM_state.writeSamples~q\)))) # (!\s_mainFSM_state.readSamples~q\ & (\Add0~10_combout\ & ((\s_mainFSM_state.writeSamples~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \Add0~10_combout\,
	datac => addr_write(5),
	datad => \s_mainFSM_state.writeSamples~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X14_Y17_N11
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

-- Location: LCCOMB_X13_Y17_N16
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

-- Location: LCCOMB_X13_Y16_N26
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\s_mainFSM_state.readSamples~q\ & ((addr_write(6)) # ((\s_mainFSM_state.writeSamples~q\ & \Add0~12_combout\)))) # (!\s_mainFSM_state.readSamples~q\ & (\s_mainFSM_state.writeSamples~q\ & ((\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \s_mainFSM_state.writeSamples~q\,
	datac => addr_write(6),
	datad => \Add0~12_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X13_Y16_N27
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

-- Location: LCCOMB_X13_Y17_N18
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

-- Location: LCCOMB_X13_Y16_N24
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\s_mainFSM_state.readSamples~q\ & ((addr_write(7)) # ((\Selector11~0_combout\ & \Add0~14_combout\)))) # (!\s_mainFSM_state.readSamples~q\ & (\Selector11~0_combout\ & ((\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \Selector11~0_combout\,
	datac => addr_write(7),
	datad => \Add0~14_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X13_Y16_N25
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

-- Location: LCCOMB_X13_Y17_N20
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

-- Location: LCCOMB_X14_Y17_N12
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\s_mainFSM_state.readSamples~q\ & ((addr_write(8)) # ((\Add0~16_combout\ & \s_mainFSM_state.writeSamples~q\)))) # (!\s_mainFSM_state.readSamples~q\ & (\Add0~16_combout\ & ((\s_mainFSM_state.writeSamples~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \Add0~16_combout\,
	datac => addr_write(8),
	datad => \s_mainFSM_state.writeSamples~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X14_Y17_N13
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

-- Location: LCCOMB_X13_Y17_N22
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = addr_write(9) $ (\Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr_write(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X13_Y16_N6
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\s_mainFSM_state.readSamples~q\ & ((addr_write(9)) # ((\Selector11~0_combout\ & \Add0~18_combout\)))) # (!\s_mainFSM_state.readSamples~q\ & (\Selector11~0_combout\ & ((\Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \Selector11~0_combout\,
	datac => addr_write(9),
	datad => \Add0~18_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X13_Y16_N7
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

-- Location: LCCOMB_X13_Y16_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!addr_write(8) & (addr_write(9) & (!addr_write(7) & addr_write(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_write(8),
	datab => addr_write(9),
	datac => addr_write(7),
	datad => addr_write(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X13_Y16_N12
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (addr_write(1) & (\Equal0~0_combout\ & !addr_write(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => addr_write(1),
	datac => \Equal0~0_combout\,
	datad => addr_write(0),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X13_Y16_N20
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\s_mainFSM_state.writeSamples~q\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_mainFSM_state.writeSamples~q\,
	datad => \Equal0~2_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X13_Y16_N14
\Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector11~0_combout\) # ((!\s_mainFSM_state.start~q\ & ((\U5|o_triggered~q\) # (\U3|OUTPUT_PULSE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.start~q\,
	datab => \Selector11~0_combout\,
	datac => \U5|o_triggered~q\,
	datad => \U3|OUTPUT_PULSE~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: FF_X13_Y16_N15
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

-- Location: LCCOMB_X14_Y17_N20
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\s_mainFSM_state.readSamples~q\ & (addr_write(0) & ((!\s_mainFSM_state.writeSamples~q\) # (!\Add0~0_combout\)))) # (!\s_mainFSM_state.readSamples~q\ & (((!\s_mainFSM_state.writeSamples~q\)) # (!\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \Add0~0_combout\,
	datac => addr_write(0),
	datad => \s_mainFSM_state.writeSamples~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X14_Y17_N21
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

-- Location: LCCOMB_X14_Y16_N18
\addr_write[0]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_write[0]~_wirecell_combout\ = !addr_write(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => addr_write(0),
	combout => \addr_write[0]~_wirecell_combout\);

-- Location: LCCOMB_X14_Y17_N4
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\s_mainFSM_state.readSamples~q\ & ((addr_write(2)) # ((\Add0~4_combout\ & \s_mainFSM_state.writeSamples~q\)))) # (!\s_mainFSM_state.readSamples~q\ & (\Add0~4_combout\ & ((\s_mainFSM_state.writeSamples~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mainFSM_state.readSamples~q\,
	datab => \Add0~4_combout\,
	datac => addr_write(2),
	datad => \s_mainFSM_state.writeSamples~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X14_Y17_N5
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

-- Location: LCCOMB_X19_Y16_N2
\addr_read[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[0]~0_combout\ = (\U1|hcs\(0) & \U1|visible_img~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|hcs\(0),
	datad => \U1|visible_img~3_combout\,
	combout => \addr_read[0]~0_combout\);

-- Location: LCCOMB_X19_Y19_N16
\addr_read[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[1]~1_combout\ = (\U1|hcs\(1) & \U1|visible_img~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|hcs\(1),
	datad => \U1|visible_img~3_combout\,
	combout => \addr_read[1]~1_combout\);

-- Location: LCCOMB_X14_Y16_N2
\addr_read[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[2]~2_combout\ = (\U1|hcs\(2) & \U1|visible_img~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|hcs\(2),
	datad => \U1|visible_img~3_combout\,
	combout => \addr_read[2]~2_combout\);

-- Location: FF_X16_Y14_N11
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

-- Location: LCCOMB_X14_Y16_N4
\addr_read[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_read[3]~3_combout\ = (\U1|hcs\(3) & \U1|visible_img~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|hcs\(3),
	datad => \U1|visible_img~3_combout\,
	combout => \addr_read[3]~3_combout\);

-- Location: FF_X16_Y14_N13
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

-- Location: LCCOMB_X19_Y19_N4
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \U1|hcs\(4) $ (VCC)
-- \Add3~1\ = CARRY(\U1|hcs\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(4),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X19_Y19_N18
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add3~0_combout\ & \U1|visible_img~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~0_combout\,
	datad => \U1|visible_img~3_combout\,
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X19_Y19_N6
\Add3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~3_combout\ = (\U1|hcs\(5) & (\Add3~1\ & VCC)) # (!\U1|hcs\(5) & (!\Add3~1\))
-- \Add3~4\ = CARRY((!\U1|hcs\(5) & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(5),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~3_combout\,
	cout => \Add3~4\);

-- Location: LCCOMB_X21_Y21_N8
\Add3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~5_combout\ = (\U1|visible_img~3_combout\ & \Add3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|visible_img~3_combout\,
	datac => \Add3~3_combout\,
	combout => \Add3~5_combout\);

-- Location: LCCOMB_X19_Y19_N8
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\U1|hcs\(6) & ((GND) # (!\Add3~4\))) # (!\U1|hcs\(6) & (\Add3~4\ $ (GND)))
-- \Add3~7\ = CARRY((\U1|hcs\(6)) # (!\Add3~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|hcs\(6),
	datad => VCC,
	cin => \Add3~4\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X19_Y19_N20
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Add3~6_combout\ & \U1|visible_img~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~6_combout\,
	datad => \U1|visible_img~3_combout\,
	combout => \Add3~8_combout\);

-- Location: LCCOMB_X19_Y19_N2
\Add3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~11_combout\ = (\Add3~9_combout\ & \U1|visible_img~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~9_combout\,
	datad => \U1|visible_img~3_combout\,
	combout => \Add3~11_combout\);

-- Location: LCCOMB_X19_Y19_N24
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Add3~12_combout\ & \U1|visible_img~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datad => \U1|visible_img~3_combout\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X19_Y19_N14
\Add3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~15_combout\ = \Add3~13\ $ (!\U1|hcs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|hcs\(9),
	cin => \Add3~13\,
	combout => \Add3~15_combout\);

-- Location: LCCOMB_X19_Y19_N22
\Add3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~17_combout\ = (\Add3~15_combout\ & \U1|visible_img~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~15_combout\,
	datad => \U1|visible_img~3_combout\,
	combout => \Add3~17_combout\);

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

-- Location: LCCOMB_X16_Y16_N28
\Mult0|mult_core|romout[2][8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][8]~11_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a11\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a9\) # (\U4|ram_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a11\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mult0|mult_core|romout[2][8]~11_combout\);

-- Location: LCCOMB_X16_Y19_N20
\Mult0|mult_core|romout[0][8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~1_combout\ = (\U4|ram_rtl_0|auto_generated|ram_block1a2\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\) # ((\U4|ram_rtl_0|auto_generated|ram_block1a1\) # (\U4|ram_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \Mult0|mult_core|romout[0][8]~1_combout\);

-- Location: LCCOMB_X16_Y19_N24
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

-- Location: LCCOMB_X16_Y19_N18
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

-- Location: LCCOMB_X16_Y19_N28
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

-- Location: LCCOMB_X16_Y19_N0
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|romout[0][4]~10_combout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a4\ $ (VCC))) # (!\Mult0|mult_core|romout[0][4]~10_combout\ & 
-- (\U4|ram_rtl_0|auto_generated|ram_block1a4\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|romout[0][4]~10_combout\ & \U4|ram_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][4]~10_combout\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X16_Y19_N2
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|romout[1][1]~9_combout\ & ((\Mult0|mult_core|romout[0][5]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult0|mult_core|romout[0][5]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|romout[1][1]~9_combout\ & ((\Mult0|mult_core|romout[0][5]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) 
-- # (!\Mult0|mult_core|romout[0][5]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|romout[1][1]~9_combout\ & (!\Mult0|mult_core|romout[0][5]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[1][1]~9_combout\ 
-- & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult0|mult_core|romout[0][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][1]~9_combout\,
	datab => \Mult0|mult_core|romout[0][5]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X16_Y19_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|romout[1][2]~7_combout\ $ (\Mult0|mult_core|romout[0][6]~8_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[1][2]~7_combout\ & ((\Mult0|mult_core|romout[0][6]~8_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult0|mult_core|romout[1][2]~7_combout\ & (\Mult0|mult_core|romout[0][6]~8_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][2]~7_combout\,
	datab => \Mult0|mult_core|romout[0][6]~8_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X16_Y19_N6
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

-- Location: LCCOMB_X16_Y19_N10
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

-- Location: LCCOMB_X16_Y19_N12
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

-- Location: LCCOMB_X16_Y19_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = \Mult0|mult_core|romout[1][8]~0_combout\ $ (\Mult0|mult_core|romout[0][8]~1_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][8]~0_combout\,
	datab => \Mult0|mult_core|romout[0][8]~1_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X16_Y16_N2
\Mult0|mult_core|romout[2][3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][3]~15_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a11\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a9\ & (\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & !\U4|ram_rtl_0|auto_generated|ram_block1a10\)) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a9\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a11\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mult0|mult_core|romout[2][3]~15_combout\);

-- Location: LCCOMB_X16_Y16_N8
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ $ (VCC))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ & VCC))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X16_Y16_N10
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

-- Location: LCCOMB_X16_Y16_N12
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

-- Location: LCCOMB_X16_Y16_N14
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\Mult0|mult_core|romout[2][3]~15_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Mult0|mult_core|romout[2][3]~15_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\Mult0|mult_core|romout[2][3]~15_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[2][3]~15_combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Mult0|mult_core|romout[2][3]~15_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\Mult0|mult_core|romout[2][3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datab => \Mult0|mult_core|romout[2][3]~15_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X16_Y16_N16
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

-- Location: LCCOMB_X16_Y16_N18
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

-- Location: LCCOMB_X16_Y16_N20
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

-- Location: LCCOMB_X16_Y16_N22
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

-- Location: LCCOMB_X16_Y16_N24
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

-- Location: LCCOMB_X16_Y16_N26
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

-- Location: LCCOMB_X17_Y19_N20
\Mult0|mult_core|romout[0][3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][3]~18_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a3\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a1\ & (\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & !\U4|ram_rtl_0|auto_generated|ram_block1a2\)) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a1\ & ((\U4|ram_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a3\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \Mult0|mult_core|romout[0][3]~18_combout\);

-- Location: LCCOMB_X17_Y19_N10
\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ = (!\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (!\U4|ram_rtl_0|auto_generated|ram_block1a2\ & (!\U4|ram_rtl_0|auto_generated|ram_block1a1\ & 
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\);

-- Location: LCCOMB_X17_Y19_N18
\Div0|auto_generated|divider|my_abs_num|cs2a[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (\Mult0|mult_core|romout[0][3]~18_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\Mult0|mult_core|romout[0][3]~18_combout\ & 
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \Mult0|mult_core|romout[0][3]~18_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\);

-- Location: LCCOMB_X17_Y19_N28
\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ 
-- & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\);

-- Location: LCCOMB_X17_Y19_N6
\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\);

-- Location: LCCOMB_X17_Y19_N12
\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\);

-- Location: LCCOMB_X17_Y19_N30
\Div0|auto_generated|divider|my_abs_num|cs2a[12]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\);

-- Location: LCCOMB_X17_Y19_N4
\Div0|auto_generated|divider|my_abs_num|cs2a[14]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\)) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~13_combout\);

-- Location: LCCOMB_X17_Y16_N0
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \Div0|auto_generated|divider|my_abs_num|cs2a[13]~14_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\Div0|auto_generated|divider|my_abs_num|cs2a[13]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[13]~14_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X17_Y16_N4
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

-- Location: LCCOMB_X17_Y16_N20
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

-- Location: LCCOMB_X17_Y16_N24
\Div0|auto_generated|divider|my_abs_num|cs2a[16]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\);

-- Location: LCCOMB_X17_Y16_N6
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~11_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X17_Y16_N8
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

-- Location: LCCOMB_X18_Y16_N28
\Div0|auto_generated|divider|divider|StageOut[45]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~163_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~163_combout\);

-- Location: LCCOMB_X17_Y16_N18
\Div0|auto_generated|divider|divider|StageOut[44]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~165_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~165_combout\);

-- Location: LCCOMB_X17_Y16_N10
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

-- Location: LCCOMB_X17_Y16_N28
\Div0|auto_generated|divider|divider|StageOut[43]~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~271_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~271_combout\);

-- Location: LCCOMB_X17_Y19_N14
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

-- Location: LCCOMB_X18_Y16_N14
\Div0|auto_generated|divider|divider|StageOut[41]~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~272_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~272_combout\);

-- Location: LCCOMB_X18_Y19_N8
\Div0|auto_generated|divider|my_abs_num|cs2a[12]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[12]~15_combout\);

-- Location: LCCOMB_X18_Y19_N12
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

-- Location: LCCOMB_X18_Y16_N0
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

-- Location: LCCOMB_X18_Y16_N2
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

-- Location: LCCOMB_X18_Y16_N4
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[42]~168_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[42]~167_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~168_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[42]~167_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[42]~168_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[42]~167_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[42]~168_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[42]~167_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X18_Y16_N8
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

-- Location: LCCOMB_X18_Y16_N12
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

-- Location: LCCOMB_X17_Y16_N22
\Div0|auto_generated|divider|divider|StageOut[52]~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~273_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[43]~271_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[43]~271_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~273_combout\);

-- Location: LCCOMB_X18_Y16_N20
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

-- Location: LCCOMB_X18_Y16_N18
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

-- Location: LCCOMB_X18_Y16_N16
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

-- Location: LCCOMB_X17_Y19_N16
\Div0|auto_generated|divider|divider|StageOut[48]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~180_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~180_combout\);

-- Location: LCCOMB_X18_Y17_N2
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

-- Location: LCCOMB_X18_Y17_N4
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[50]~274_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[50]~176_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[50]~274_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[50]~176_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[50]~274_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[50]~176_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~274_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~176_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X18_Y17_N6
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[51]~322_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[51]~322_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[51]~175_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[51]~175_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[51]~322_combout\ & !\Div0|auto_generated|divider|divider|StageOut[51]~175_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~322_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~175_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X18_Y17_N8
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[52]~174_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[52]~273_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[52]~174_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[52]~273_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[52]~174_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[52]~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~174_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~273_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X17_Y16_N26
\Div0|auto_generated|divider|my_abs_num|cs2a[16]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[14]~9_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\);

-- Location: LCCOMB_X18_Y17_N20
\Div0|auto_generated|divider|divider|StageOut[54]~320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~320_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[16]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~320_combout\);

-- Location: LCCOMB_X18_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[53]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~173_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~173_combout\);

-- Location: LCCOMB_X18_Y17_N12
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

-- Location: LCCOMB_X18_Y17_N14
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

-- Location: LCCOMB_X17_Y17_N2
\Div0|auto_generated|divider|divider|StageOut[61]~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[61]~182_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[61]~182_combout\);

-- Location: LCCOMB_X17_Y17_N4
\Div0|auto_generated|divider|divider|StageOut[60]~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~183_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~183_combout\);

-- Location: LCCOMB_X19_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[50]~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~274_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[41]~272_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~272_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~274_combout\);

-- Location: LCCOMB_X18_Y17_N28
\Div0|auto_generated|divider|divider|StageOut[59]~278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~278_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[50]~274_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[50]~274_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~278_combout\);

-- Location: LCCOMB_X18_Y17_N16
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

-- Location: LCCOMB_X18_Y17_N18
\Div0|auto_generated|divider|divider|StageOut[57]~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~186_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~186_combout\);

-- Location: LCCOMB_X16_Y20_N4
\Div0|auto_generated|divider|divider|StageOut[56]~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~189_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~189_combout\);

-- Location: LCCOMB_X17_Y17_N14
\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[56]~188_combout\) # (\Div0|auto_generated|divider|divider|StageOut[56]~189_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[56]~188_combout\) # (\Div0|auto_generated|divider|divider|StageOut[56]~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[56]~188_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[56]~189_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X17_Y17_N16
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

-- Location: LCCOMB_X17_Y17_N18
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

-- Location: LCCOMB_X17_Y17_N20
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

-- Location: LCCOMB_X17_Y17_N22
\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[60]~277_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[60]~183_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[60]~277_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[60]~183_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[60]~277_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[60]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[60]~277_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[60]~183_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X17_Y17_N24
\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[61]~276_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[61]~182_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[61]~276_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[61]~182_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[61]~276_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[61]~182_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[61]~276_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[61]~182_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\);

-- Location: LCCOMB_X17_Y17_N8
\Div0|auto_generated|divider|divider|StageOut[62]~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[62]~275_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~321_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~321_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[62]~275_combout\);

-- Location: LCCOMB_X17_Y17_N26
\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[62]~181_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[62]~275_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[62]~181_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[62]~275_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\);

-- Location: LCCOMB_X17_Y17_N28
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

-- Location: LCCOMB_X16_Y17_N20
\Div0|auto_generated|divider|divider|StageOut[70]~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~190_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~190_combout\);

-- Location: LCCOMB_X17_Y17_N10
\Div0|auto_generated|divider|divider|StageOut[69]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[69]~191_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[69]~191_combout\);

-- Location: LCCOMB_X16_Y17_N18
\Div0|auto_generated|divider|divider|StageOut[68]~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~192_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~192_combout\);

-- Location: LCCOMB_X19_Y17_N12
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

-- Location: LCCOMB_X19_Y17_N22
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

-- Location: LCCOMB_X16_Y20_N28
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

-- Location: LCCOMB_X17_Y19_N24
\Div0|auto_generated|divider|divider|StageOut[64]~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~198_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~198_combout\);

-- Location: LCCOMB_X16_Y17_N0
\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[64]~197_combout\) # (\Div0|auto_generated|divider|divider|StageOut[64]~198_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[64]~197_combout\) # (\Div0|auto_generated|divider|divider|StageOut[64]~198_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[64]~197_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[64]~198_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X16_Y17_N2
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

-- Location: LCCOMB_X16_Y17_N8
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

-- Location: LCCOMB_X16_Y17_N10
\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[69]~280_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[69]~191_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[69]~280_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[69]~191_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[69]~280_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[69]~191_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[69]~280_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[69]~191_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\);

-- Location: LCCOMB_X16_Y17_N12
\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[70]~279_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[70]~190_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[70]~279_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[70]~190_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13_cout\);

-- Location: LCCOMB_X16_Y17_N14
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

-- Location: LCCOMB_X16_Y17_N28
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

-- Location: LCCOMB_X18_Y17_N26
\Div0|auto_generated|divider|divider|StageOut[68]~281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~281_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[59]~278_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[59]~278_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~281_combout\);

-- Location: LCCOMB_X17_Y20_N4
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

-- Location: LCCOMB_X18_Y19_N16
\Div0|auto_generated|divider|divider|StageOut[67]~282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~282_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[58]~323_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[58]~323_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~282_combout\);

-- Location: LCCOMB_X18_Y19_N18
\Div0|auto_generated|divider|divider|StageOut[76]~286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[76]~286_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[67]~282_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[67]~282_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[76]~286_combout\);

-- Location: LCCOMB_X19_Y17_N0
\Div0|auto_generated|divider|divider|StageOut[75]~287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~287_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[66]~283_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[66]~283_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~287_combout\);

-- Location: LCCOMB_X16_Y20_N6
\Div0|auto_generated|divider|divider|StageOut[74]~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~203_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~203_combout\);

-- Location: LCCOMB_X16_Y20_N24
\Div0|auto_generated|divider|divider|StageOut[73]~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~204_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~204_combout\);

-- Location: LCCOMB_X17_Y19_N0
\Div0|auto_generated|divider|divider|StageOut[72]~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~206_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~206_combout\);

-- Location: LCCOMB_X17_Y20_N12
\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[72]~207_combout\) # (\Div0|auto_generated|divider|divider|StageOut[72]~206_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[72]~207_combout\) # (\Div0|auto_generated|divider|divider|StageOut[72]~206_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[72]~207_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[72]~206_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X17_Y20_N14
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

-- Location: LCCOMB_X17_Y20_N16
\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[74]~324_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[74]~203_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[74]~324_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[74]~203_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[74]~324_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[74]~203_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[74]~324_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[74]~203_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X17_Y20_N20
\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[76]~201_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[76]~286_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[76]~201_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[76]~286_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[76]~201_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[76]~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[76]~201_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[76]~286_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\);

-- Location: LCCOMB_X17_Y20_N24
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

-- Location: LCCOMB_X17_Y20_N26
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

-- Location: LCCOMB_X18_Y20_N4
\Div0|auto_generated|divider|divider|StageOut[84]~290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~290_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[75]~287_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[75]~287_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~290_combout\);

-- Location: LCCOMB_X16_Y20_N16
\Div0|auto_generated|divider|divider|StageOut[74]~324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~324_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[10]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~324_combout\);

-- Location: LCCOMB_X16_Y20_N8
\Div0|auto_generated|divider|divider|StageOut[83]~291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[83]~291_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[74]~324_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[74]~324_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[83]~291_combout\);

-- Location: LCCOMB_X19_Y20_N16
\Div0|auto_generated|divider|divider|StageOut[82]~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~212_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~212_combout\);

-- Location: LCCOMB_X19_Y20_N0
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

-- Location: LCCOMB_X19_Y20_N12
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

-- Location: LCCOMB_X18_Y20_N6
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

-- Location: LCCOMB_X18_Y20_N8
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

-- Location: LCCOMB_X18_Y20_N10
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

-- Location: LCCOMB_X18_Y20_N14
\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[84]~210_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[84]~290_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[84]~210_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[84]~290_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[84]~210_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[84]~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[84]~210_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[84]~290_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\);

-- Location: LCCOMB_X17_Y20_N6
\Div0|auto_generated|divider|divider|StageOut[86]~288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~288_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[77]~285_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[77]~285_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~288_combout\);

-- Location: LCCOMB_X17_Y20_N28
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

-- Location: LCCOMB_X18_Y20_N18
\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[86]~208_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[86]~288_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[86]~208_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[86]~288_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\);

-- Location: LCCOMB_X18_Y20_N20
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

-- Location: LCCOMB_X18_Y20_N22
\Div0|auto_generated|divider|divider|StageOut[85]~289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~289_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[76]~286_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[76]~286_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~289_combout\);

-- Location: LCCOMB_X17_Y20_N0
\Div0|auto_generated|divider|divider|StageOut[94]~293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[94]~293_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[85]~289_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[85]~289_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[94]~293_combout\);

-- Location: LCCOMB_X18_Y20_N0
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

-- Location: LCCOMB_X18_Y20_N26
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

-- Location: LCCOMB_X18_Y20_N24
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

-- Location: LCCOMB_X17_Y19_N22
\Div0|auto_generated|divider|my_abs_num|cs2a[8]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ & 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\)) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\);

-- Location: LCCOMB_X14_Y18_N22
\Div0|auto_generated|divider|divider|StageOut[90]~325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[90]~325_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & 
-- ((\Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[8]~17_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[90]~325_combout\);

-- Location: LCCOMB_X13_Y20_N28
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

-- Location: LCCOMB_X18_Y19_N0
\Div0|auto_generated|divider|my_abs_num|cs2a[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ & 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~4_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\);

-- Location: LCCOMB_X14_Y20_N28
\Div0|auto_generated|divider|divider|StageOut[88]~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~225_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~225_combout\);

-- Location: LCCOMB_X13_Y20_N12
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

-- Location: LCCOMB_X13_Y20_N14
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

-- Location: LCCOMB_X13_Y20_N20
\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[92]~295_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[92]~219_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[92]~295_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[92]~219_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[92]~295_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[92]~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[92]~295_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[92]~219_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\);

-- Location: LCCOMB_X13_Y20_N24
\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[94]~217_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[94]~293_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[94]~217_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[94]~293_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13_cout\);

-- Location: LCCOMB_X13_Y20_N26
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

-- Location: LCCOMB_X17_Y20_N10
\Div0|auto_generated|divider|divider|StageOut[102]~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~297_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[93]~294_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[93]~294_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~297_combout\);

-- Location: LCCOMB_X13_Y20_N10
\Div0|auto_generated|divider|divider|StageOut[92]~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~295_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[83]~291_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[83]~291_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~295_combout\);

-- Location: LCCOMB_X13_Y20_N8
\Div0|auto_generated|divider|divider|StageOut[101]~298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~298_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[92]~295_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[92]~295_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~298_combout\);

-- Location: LCCOMB_X16_Y20_N18
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

-- Location: LCCOMB_X16_Y20_N20
\Div0|auto_generated|divider|divider|StageOut[91]~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[91]~296_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[82]~292_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[82]~292_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[91]~296_combout\);

-- Location: LCCOMB_X16_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[100]~299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~299_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[91]~296_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[91]~296_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~299_combout\);

-- Location: LCCOMB_X14_Y18_N4
\Div0|auto_generated|divider|divider|StageOut[99]~300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[99]~300_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[90]~325_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[90]~325_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[99]~300_combout\);

-- Location: LCCOMB_X14_Y20_N20
\Div0|auto_generated|divider|divider|StageOut[89]~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[89]~222_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~5_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[89]~222_combout\);

-- Location: LCCOMB_X12_Y20_N2
\Div0|auto_generated|divider|divider|StageOut[98]~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[98]~301_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[89]~222_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[89]~222_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[98]~301_combout\);

-- Location: LCCOMB_X12_Y20_N4
\Div0|auto_generated|divider|divider|StageOut[97]~231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[97]~231_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[6]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[97]~231_combout\);

-- Location: LCCOMB_X11_Y20_N6
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

-- Location: LCCOMB_X12_Y20_N10
\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[97]~232_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[97]~231_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[97]~232_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[97]~231_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[97]~232_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[97]~231_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[97]~232_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[97]~231_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X12_Y20_N12
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

-- Location: LCCOMB_X12_Y20_N14
\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[99]~229_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[99]~229_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[99]~300_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[99]~300_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[99]~229_combout\ & !\Div0|auto_generated|divider|divider|StageOut[99]~300_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[99]~229_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[99]~300_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\);

-- Location: LCCOMB_X12_Y20_N20
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

-- Location: LCCOMB_X12_Y20_N22
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

-- Location: LCCOMB_X12_Y18_N20
\Div0|auto_generated|divider|divider|StageOut[109]~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[109]~236_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[109]~236_combout\);

-- Location: LCCOMB_X14_Y18_N6
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

-- Location: LCCOMB_X12_Y20_N24
\Div0|auto_generated|divider|divider|StageOut[107]~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~305_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[98]~301_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[98]~301_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~305_combout\);

-- Location: LCCOMB_X14_Y18_N0
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

-- Location: LCCOMB_X11_Y20_N4
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

-- Location: LCCOMB_X11_Y18_N24
\Div0|auto_generated|divider|divider|StageOut[104]~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~243_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~243_combout\);

-- Location: LCCOMB_X12_Y18_N4
\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[104]~242_combout\) # (\Div0|auto_generated|divider|divider|StageOut[104]~243_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[104]~242_combout\) # (\Div0|auto_generated|divider|divider|StageOut[104]~243_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[104]~242_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[104]~243_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X12_Y18_N10
\Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[107]~238_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[107]~238_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[107]~305_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[107]~305_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[107]~238_combout\ & !\Div0|auto_generated|divider|divider|StageOut[107]~305_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[107]~238_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[107]~305_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\);

-- Location: LCCOMB_X12_Y18_N12
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

-- Location: LCCOMB_X12_Y18_N14
\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ & (((\Div0|auto_generated|divider|divider|StageOut[109]~303_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[109]~236_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ & (!\Div0|auto_generated|divider|divider|StageOut[109]~303_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[109]~236_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[109]~303_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[109]~236_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[109]~303_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[109]~236_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\);

-- Location: LCCOMB_X13_Y20_N2
\Div0|auto_generated|divider|divider|StageOut[110]~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~302_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[101]~298_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[101]~298_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~302_combout\);

-- Location: LCCOMB_X12_Y18_N16
\Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[110]~235_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[110]~302_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[110]~235_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[110]~302_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~13_cout\);

-- Location: LCCOMB_X12_Y18_N18
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

-- Location: LCCOMB_X12_Y18_N24
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

-- Location: LCCOMB_X14_Y18_N24
\Div0|auto_generated|divider|divider|StageOut[117]~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~307_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[108]~304_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[108]~304_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~307_combout\);

-- Location: LCCOMB_X12_Y20_N26
\Div0|auto_generated|divider|divider|StageOut[116]~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~308_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[107]~305_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[107]~305_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~308_combout\);

-- Location: LCCOMB_X13_Y18_N0
\Div0|auto_generated|divider|divider|StageOut[115]~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~309_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[106]~326_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[106]~326_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~309_combout\);

-- Location: LCCOMB_X11_Y20_N0
\Div0|auto_generated|divider|divider|StageOut[114]~310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~310_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[105]~240_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[105]~240_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~310_combout\);

-- Location: LCCOMB_X17_Y19_N8
\Div0|auto_generated|divider|my_abs_num|cs2a[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ & (\Mult0|mult_core|romout[0][3]~18_combout\)) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\,
	datab => \Mult0|mult_core|romout[0][3]~18_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\);

-- Location: LCCOMB_X14_Y18_N10
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

-- Location: LCCOMB_X14_Y18_N16
\Div0|auto_generated|divider|divider|StageOut[112]~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~251_combout\ = (\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\ $ 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (\Mult0|mult_core|romout[0][3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~20_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Mult0|mult_core|romout[0][3]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~251_combout\);

-- Location: LCCOMB_X13_Y18_N2
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

-- Location: LCCOMB_X13_Y18_N6
\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[114]~248_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[114]~310_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~248_combout\) # 
-- ((\Div0|auto_generated|divider|divider|StageOut[114]~310_combout\) # (GND))))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[114]~248_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[114]~310_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[114]~248_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[114]~310_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\);

-- Location: LCCOMB_X13_Y18_N8
\Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[115]~247_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[115]~247_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[115]~309_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[115]~309_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[115]~247_combout\ & !\Div0|auto_generated|divider|divider|StageOut[115]~309_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[115]~247_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[115]~309_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\);

-- Location: LCCOMB_X13_Y18_N10
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

-- Location: LCCOMB_X13_Y18_N14
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

-- Location: LCCOMB_X13_Y18_N16
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

-- Location: LCCOMB_X14_Y18_N14
\Div0|auto_generated|divider|divider|StageOut[126]~311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~311_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[117]~307_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[117]~307_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~311_combout\);

-- Location: LCCOMB_X16_Y18_N18
\Div0|auto_generated|divider|divider|StageOut[125]~312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~312_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[116]~308_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[116]~308_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~312_combout\);

-- Location: LCCOMB_X13_Y18_N20
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

-- Location: LCCOMB_X16_Y18_N28
\Div0|auto_generated|divider|divider|StageOut[123]~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~256_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~256_combout\);

-- Location: LCCOMB_X14_Y18_N26
\Div0|auto_generated|divider|divider|StageOut[122]~327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~327_combout\ = (\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~19_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~327_combout\);

-- Location: LCCOMB_X14_Y18_N8
\Div0|auto_generated|divider|divider|StageOut[121]~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~259_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~259_combout\);

-- Location: LCCOMB_X11_Y20_N26
\Div0|auto_generated|divider|my_abs_num|cs2a[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\ = \U4|ram_rtl_0|auto_generated|ram_block1a2\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))) # 
-- (!\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a1\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \U4|ram_rtl_0|auto_generated|ram_block1a2\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\);

-- Location: LCCOMB_X16_Y18_N20
\Div0|auto_generated|divider|divider|StageOut[120]~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~261_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\ & !\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~261_combout\);

-- Location: LCCOMB_X16_Y18_N4
\Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[121]~258_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[121]~259_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[121]~258_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[121]~259_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[121]~258_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[121]~259_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[121]~258_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[121]~259_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~3\);

-- Location: LCCOMB_X16_Y18_N6
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

-- Location: LCCOMB_X16_Y18_N8
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

-- Location: LCCOMB_X16_Y18_N10
\Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[124]~313_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[124]~255_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[124]~313_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[124]~255_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[124]~313_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[124]~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[124]~313_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[124]~255_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~9\);

-- Location: LCCOMB_X16_Y18_N14
\Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[126]~253_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[126]~311_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[126]~253_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[126]~311_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~13_cout\);

-- Location: LCCOMB_X16_Y18_N16
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

-- Location: LCCOMB_X17_Y18_N0
\Div0|auto_generated|divider|divider|StageOut[134]~315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[134]~315_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[125]~312_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[125]~312_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[134]~315_combout\);

-- Location: LCCOMB_X17_Y18_N4
\Div0|auto_generated|divider|divider|StageOut[133]~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[133]~263_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[133]~263_combout\);

-- Location: LCCOMB_X16_Y18_N24
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

-- Location: LCCOMB_X17_Y18_N2
\Div0|auto_generated|divider|divider|StageOut[131]~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~265_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~265_combout\);

-- Location: LCCOMB_X16_Y18_N30
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

-- Location: LCCOMB_X17_Y18_N28
\Div0|auto_generated|divider|divider|StageOut[129]~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~267_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & \Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[2]~21_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~267_combout\);

-- Location: LCCOMB_X14_Y18_N2
\Div0|auto_generated|divider|divider|StageOut[128]~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~269_combout\ = (\Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\ & (\U4|ram_rtl_0|auto_generated|ram_block1a1\ $ (((\U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \U4|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~269_combout\);

-- Location: LCCOMB_X17_Y18_N8
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

-- Location: LCCOMB_X17_Y18_N10
\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[129]~268_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[129]~267_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[129]~268_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[129]~267_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3_cout\);

-- Location: LCCOMB_X17_Y18_N12
\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[130]~319_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[130]~266_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[130]~319_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[130]~266_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5_cout\);

-- Location: LCCOMB_X17_Y18_N14
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

-- Location: LCCOMB_X17_Y18_N16
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

-- Location: LCCOMB_X17_Y18_N18
\Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[133]~316_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[133]~263_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[133]~316_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[133]~263_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\);

-- Location: LCCOMB_X17_Y18_N20
\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[134]~262_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[134]~315_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[134]~262_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[134]~315_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13_cout\);

-- Location: LCCOMB_X17_Y18_N22
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

-- Location: LCCOMB_X18_Y18_N0
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

-- Location: LCCOMB_X18_Y18_N4
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

-- Location: LCCOMB_X19_Y18_N0
\Div0|auto_generated|divider|quotient[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[2]~2_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (\Div0|auto_generated|divider|op_1~4_combout\)) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|op_1~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|quotient[2]~2_combout\);

-- Location: LCCOMB_X17_Y18_N26
\Div0|auto_generated|divider|quotient[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[0]~4_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (\Div0|auto_generated|divider|op_1~0_combout\)) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|op_1~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|quotient[0]~4_combout\);

-- Location: LCCOMB_X21_Y18_N18
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Div0|auto_generated|divider|quotient[2]~2_combout\ & ((GND) # (!\Add2~3\))) # (!\Div0|auto_generated|divider|quotient[2]~2_combout\ & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((\Div0|auto_generated|divider|quotient[2]~2_combout\) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|quotient[2]~2_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X21_Y18_N20
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Div0|auto_generated|divider|quotient[3]~1_combout\ & (\Add2~5\ & VCC)) # (!\Div0|auto_generated|divider|quotient[3]~1_combout\ & (!\Add2~5\))
-- \Add2~7\ = CARRY((!\Div0|auto_generated|divider|quotient[3]~1_combout\ & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[3]~1_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X21_Y18_N22
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Div0|auto_generated|divider|quotient[4]~0_combout\ & (\Add2~7\ $ (GND))) # (!\Div0|auto_generated|divider|quotient[4]~0_combout\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\Div0|auto_generated|divider|quotient[4]~0_combout\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[4]~0_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X18_Y18_N10
\Div0|auto_generated|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & (!\Div0|auto_generated|divider|op_1~9\)) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~9\) # (GND)))
-- \Div0|auto_generated|divider|op_1~11\ = CARRY((!\Div0|auto_generated|divider|op_1~9\) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~9\,
	combout => \Div0|auto_generated|divider|op_1~10_combout\,
	cout => \Div0|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X19_Y18_N2
\Div0|auto_generated|divider|quotient[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[5]~5_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\Div0|auto_generated|divider|op_1~10_combout\))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|op_1~10_combout\,
	combout => \Div0|auto_generated|divider|quotient[5]~5_combout\);

-- Location: LCCOMB_X21_Y18_N24
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Div0|auto_generated|divider|quotient[5]~5_combout\ & (!\Add2~9\)) # (!\Div0|auto_generated|divider|quotient[5]~5_combout\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\Div0|auto_generated|divider|quotient[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|quotient[5]~5_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X21_Y18_N12
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Add1~8_combout\ & (\Add2~10_combout\ & (\Add1~6_combout\ $ (!\Add2~8_combout\)))) # (!\Add1~8_combout\ & (!\Add2~10_combout\ & (\Add1~6_combout\ $ (!\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~6_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~10_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X21_Y18_N30
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\Div0|auto_generated|divider|quotient[8]~12_combout\ & ((GND) # (!\Add2~15\))) # (!\Div0|auto_generated|divider|quotient[8]~12_combout\ & (\Add2~15\ $ (GND)))
-- \Add2~17\ = CARRY((\Div0|auto_generated|divider|quotient[8]~12_combout\) # (!\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[8]~12_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X18_Y18_N20
\Div0|auto_generated|divider|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Div0|auto_generated|divider|op_1~19\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~19\ & VCC))
-- \Div0|auto_generated|divider|op_1~21\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & !\Div0|auto_generated|divider|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~19\,
	combout => \Div0|auto_generated|divider|op_1~20_combout\,
	cout => \Div0|auto_generated|divider|op_1~21\);

-- Location: LCCOMB_X18_Y18_N28
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

-- Location: LCCOMB_X21_Y17_N28
\Div0|auto_generated|divider|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|_~0_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & \Div0|auto_generated|divider|op_1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|op_1~28_combout\,
	combout => \Div0|auto_generated|divider|_~0_combout\);

-- Location: LCCOMB_X19_Y17_N8
\Div0|auto_generated|divider|quotient[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[10]~10_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (\Div0|auto_generated|divider|op_1~20_combout\)) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datac => \Div0|auto_generated|divider|op_1~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|quotient[10]~10_combout\);

-- Location: LCCOMB_X21_Y17_N0
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Div0|auto_generated|divider|quotient[9]~11_combout\ & (\Add2~17\ & VCC)) # (!\Div0|auto_generated|divider|quotient[9]~11_combout\ & (!\Add2~17\))
-- \Add2~19\ = CARRY((!\Div0|auto_generated|divider|quotient[9]~11_combout\ & !\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[9]~11_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X21_Y17_N2
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\Div0|auto_generated|divider|quotient[10]~10_combout\ & (\Add2~19\ $ (GND))) # (!\Div0|auto_generated|divider|quotient[10]~10_combout\ & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((\Div0|auto_generated|divider|quotient[10]~10_combout\ & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|quotient[10]~10_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X21_Y17_N4
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Div0|auto_generated|divider|quotient[11]~9_combout\ & (!\Add2~21\)) # (!\Div0|auto_generated|divider|quotient[11]~9_combout\ & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!\Div0|auto_generated|divider|quotient[11]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[11]~9_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X21_Y17_N6
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\Div0|auto_generated|divider|quotient[12]~8_combout\ & (\Add2~23\ $ (GND))) # (!\Div0|auto_generated|divider|quotient[12]~8_combout\ & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((\Div0|auto_generated|divider|quotient[12]~8_combout\ & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[12]~8_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X21_Y17_N8
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Div0|auto_generated|divider|_~1_combout\ & (!\Add2~25\)) # (!\Div0|auto_generated|divider|_~1_combout\ & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!\Div0|auto_generated|divider|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|_~1_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X21_Y17_N10
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\Div0|auto_generated|divider|_~0_combout\ & (\Add2~27\ $ (GND))) # (!\Div0|auto_generated|divider|_~0_combout\ & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((\Div0|auto_generated|divider|_~0_combout\ & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X21_Y17_N14
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\Div0|auto_generated|divider|_~0_combout\ & (\Add2~31\ $ (GND))) # (!\Div0|auto_generated|divider|_~0_combout\ & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((\Div0|auto_generated|divider|_~0_combout\ & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X21_Y17_N16
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\Div0|auto_generated|divider|_~0_combout\ & (!\Add2~33\)) # (!\Div0|auto_generated|divider|_~0_combout\ & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!\Div0|auto_generated|divider|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X21_Y17_N18
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = \Add2~35\ $ (!\Div0|auto_generated|divider|_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|_~0_combout\,
	cin => \Add2~35\,
	combout => \Add2~36_combout\);

-- Location: LCCOMB_X21_Y17_N24
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\Add2~30_combout\ & (!\Add2~32_combout\ & (!\Add2~28_combout\ & !\Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => \Add2~32_combout\,
	datac => \Add2~28_combout\,
	datad => \Add2~34_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X19_Y18_N26
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\Add2~36_combout\ & (\Equal1~2_combout\ & (\Add1~14_combout\ $ (!\Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add2~16_combout\,
	datac => \Add2~36_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X22_Y17_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\U1|vcs\(8) & (\Add1~13\ & VCC)) # (!\U1|vcs\(8) & (!\Add1~13\))
-- \Add1~15\ = CARRY((!\U1|vcs\(8) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|vcs\(8),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X22_Y17_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\ $ (\U1|vcs\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|vcs\(9),
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X21_Y18_N8
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Add1~2_combout\ & (\Add2~4_combout\ & (\Add1~4_combout\ $ (!\Add2~6_combout\)))) # (!\Add1~2_combout\ & (!\Add2~4_combout\ & (\Add1~4_combout\ $ (!\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add2~4_combout\,
	datac => \Add1~4_combout\,
	datad => \Add2~6_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X21_Y17_N30
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\Add2~22_combout\ & !\Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~22_combout\,
	datad => \Add2~20_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X19_Y18_N20
\Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (\Equal1~6_combout\ & (!\Add2~24_combout\ & (!\Add2~26_combout\ & \Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \Add2~24_combout\,
	datac => \Add2~26_combout\,
	datad => \Equal1~5_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X19_Y18_N18
\Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (\Equal1~4_combout\ & (\Equal1~7_combout\ & (\Add2~18_combout\ $ (!\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add1~16_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~7_combout\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X19_Y18_N28
\Equal1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\Equal1~3_combout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X19_Y18_N16
\red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~0_combout\ = (\U1|visible_img~3_combout\ & !\Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|visible_img~3_combout\,
	datad => \Equal1~9_combout\,
	combout => \red~0_combout\);

-- Location: FF_X19_Y18_N17
\blue[3]\ : dffeas
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
	q => blue(3));

-- Location: LCCOMB_X19_Y18_N30
\blue[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blue[4]~feeder_combout\ = \red~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \red~0_combout\,
	combout => \blue[4]~feeder_combout\);

-- Location: FF_X19_Y18_N31
\blue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \blue[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(4));

-- Location: LCCOMB_X26_Y20_N16
\green[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green[1]~feeder_combout\ = \U1|visible_img~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|visible_img~3_combout\,
	combout => \green[1]~feeder_combout\);

-- Location: FF_X26_Y20_N17
\green[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(1));

-- Location: LCCOMB_X19_Y18_N8
\green[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green[2]~feeder_combout\ = \red~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \red~0_combout\,
	combout => \green[2]~feeder_combout\);

-- Location: FF_X19_Y18_N9
\green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(2));

-- Location: LCCOMB_X21_Y17_N20
\Equal1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~13_combout\ = (\Add1~16_combout\ & (\Add2~18_combout\ & (\Add1~14_combout\ $ (!\Add2~16_combout\)))) # (!\Add1~16_combout\ & (!\Add2~18_combout\ & (\Add1~14_combout\ $ (!\Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add1~14_combout\,
	datac => \Add2~16_combout\,
	datad => \Add2~18_combout\,
	combout => \Equal1~13_combout\);

-- Location: LCCOMB_X21_Y17_N26
\Equal1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~14_combout\ = (!\Add2~24_combout\ & (!\Add2~26_combout\ & (\Equal1~5_combout\ & \Equal1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \Add2~26_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~13_combout\,
	combout => \Equal1~14_combout\);

-- Location: LCCOMB_X22_Y18_N26
\red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~1_combout\ = (!\Add2~36_combout\ & (((\U1|LessThan4~1_combout\ & \U1|Equal1~0_combout\)) # (!\U1|vcs\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(9),
	datab => \U1|LessThan4~1_combout\,
	datac => \U1|Equal1~0_combout\,
	datad => \Add2~36_combout\,
	combout => \red~1_combout\);

-- Location: LCCOMB_X22_Y18_N18
\red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~2_combout\ = (\U1|visible_img~2_combout\ & \Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|visible_img~2_combout\,
	datad => \Equal1~2_combout\,
	combout => \red~2_combout\);

-- Location: LCCOMB_X22_Y18_N28
\red~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~3_combout\ = (\Equal1~12_combout\ & (\Equal1~14_combout\ & (\red~1_combout\ & \red~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~12_combout\,
	datab => \Equal1~14_combout\,
	datac => \red~1_combout\,
	datad => \red~2_combout\,
	combout => \red~3_combout\);

-- Location: FF_X22_Y18_N29
\green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(3));

-- Location: FF_X22_Y18_N19
\green[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	asdata => \red~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(5));

-- Location: LCCOMB_X22_Y18_N12
\green[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green[6]~feeder_combout\ = \red~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \red~3_combout\,
	combout => \green[6]~feeder_combout\);

-- Location: FF_X22_Y18_N13
\green[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(6));

-- Location: LCCOMB_X22_Y18_N30
\green[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green[7]~feeder_combout\ = \red~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \red~3_combout\,
	combout => \green[7]~feeder_combout\);

-- Location: FF_X22_Y18_N31
\green[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \green[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(7));

-- Location: LCCOMB_X22_Y18_N24
\red[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red[1]~feeder_combout\ = \U1|visible_img~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|visible_img~3_combout\,
	combout => \red[1]~feeder_combout\);

-- Location: FF_X22_Y18_N25
\red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(1));

-- Location: LCCOMB_X19_Y18_N22
\red[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red[2]~feeder_combout\ = \red~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \red~0_combout\,
	combout => \red[2]~feeder_combout\);

-- Location: FF_X19_Y18_N23
\red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(2));

-- Location: LCCOMB_X22_Y18_N22
\red[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red[3]~feeder_combout\ = \red~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \red~3_combout\,
	combout => \red[3]~feeder_combout\);

-- Location: FF_X22_Y18_N23
\red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(3));

-- Location: LCCOMB_X22_Y18_N4
\red[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red[5]~feeder_combout\ = \red~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \red~3_combout\,
	combout => \red[5]~feeder_combout\);

-- Location: FF_X22_Y18_N5
\red[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(5));

-- Location: LCCOMB_X14_Y16_N0
\red[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red[6]~feeder_combout\ = \U1|visible_img~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|visible_img~3_combout\,
	combout => \red[6]~feeder_combout\);

-- Location: FF_X14_Y16_N1
\red[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(6));

-- Location: LCCOMB_X22_Y18_N10
\red[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red[7]~feeder_combout\ = \red~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \red~3_combout\,
	combout => \red[7]~feeder_combout\);

-- Location: FF_X22_Y18_N11
\red[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_25~inputclkctrl_outclk\,
	d => \red[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => red(7));

-- Location: LCCOMB_X16_Y14_N0
\U1|hcs~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|hcs~0_combout\ = (!\U1|Equal0~2_combout\ & \U1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~2_combout\,
	datad => \U1|Add0~10_combout\,
	combout => \U1|hcs~0_combout\);

-- Location: FF_X16_Y14_N1
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

-- Location: LCCOMB_X19_Y19_N0
\U1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~0_combout\ = (!\U1|hcs\(8) & (!\U1|hcs\(9) & ((!\U1|hcs\(5)) # (!\U1|hcs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|hcs\(8),
	datab => \U1|hcs\(6),
	datac => \U1|hcs\(5),
	datad => \U1|hcs\(9),
	combout => \U1|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y19_N30
\U1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~1_combout\ = (!\U1|hcs\(7) & \U1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|hcs\(7),
	datad => \U1|LessThan0~0_combout\,
	combout => \U1|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y17_N6
\U1|vcs~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|vcs~1_combout\ = (!\U1|Equal1~2_combout\ & \U1|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal1~2_combout\,
	datad => \U1|Add1~4_combout\,
	combout => \U1|vcs~1_combout\);

-- Location: FF_X23_Y17_N7
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

-- Location: LCCOMB_X23_Y16_N12
\U1|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan4~0_combout\ = (!\U1|vcs\(4) & (!\U1|vcs\(2) & !\U1|vcs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|vcs\(4),
	datab => \U1|vcs\(2),
	datad => \U1|vcs\(3),
	combout => \U1|LessThan4~0_combout\);

-- Location: LCCOMB_X23_Y16_N30
\U1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan1~0_combout\ = ((\U1|vcs\(1)) # ((\U1|vcs\(9)) # (!\U1|Equal1~0_combout\))) # (!\U1|LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan4~0_combout\,
	datab => \U1|vcs\(1),
	datac => \U1|Equal1~0_combout\,
	datad => \U1|vcs\(9),
	combout => \U1|LessThan1~0_combout\);

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


