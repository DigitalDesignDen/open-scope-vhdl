----------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 13.0sp1
-- Quartus II development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2013 Altera Corporation.  All rights reserved.    
-- Your use of  Altera  Corporation's design tools,  logic functions and other 
-- software and tools,  and its AMPP  partner logic functions, and  any output 
-- files  any of the  foregoing  device programming or simulation files),  and 
-- any associated  documentation or information are expressly subject  to  the 
-- terms and conditions  of the Altera Program License Subscription Agreement, 
-- Altera  MegaCore  Function  License  Agreement, or other applicable license 
-- agreement,  including,  without limitation,  that your use  is for the sole 
-- purpose of  programming  logic  devices  manufactured by Altera and sold by 
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable 
-- agreement for further details.
----------------------------------------------------------------------------- 

-- VHDL created from FIRcompiled_rtl
-- VHDL created on Fri Jan 10 16:47:38 2025


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

-- Text written from d:/SJ/nightly/13.0sp1/232/w32/p4/ip/aion/src/mip_common/hw_model.cpp:1303
entity FIRcompiled_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);
        xIn_c : in std_logic_vector(7 downto 0);
        xIn_0 : in std_logic_vector(11 downto 0);
        xOut_v : out std_logic_vector(0 downto 0);
        xOut_c : out std_logic_vector(7 downto 0);
        xOut_0 : out std_logic_vector(24 downto 0);
        clk : in std_logic;
        areset : in std_logic
        );
end;

architecture normal of FIRcompiled_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name NOT_GATE_PUSH_BACK OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410";

    signal GND_q : std_logic_vector (0 downto 0);
    signal VCC_q : std_logic_vector (0 downto 0);
    signal d_xIn_0_12_q : std_logic_vector (11 downto 0);
    signal d_in0_m0_wi0_wo0_assign_sel_q_12_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_run_count : std_logic_vector(5 downto 0);
    signal u0_m0_wo0_run_pre_ena_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_run_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_run_out : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_run_enable_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_run_ctrl : std_logic_vector(2 downto 0);
    signal u0_m0_wo0_memread_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_compute_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_compute_q_15_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_compute_q_16_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_wi0_ra0_count0_q : std_logic_vector(2 downto 0);
    signal u0_m0_wo0_wi0_ra0_count0_i : unsigned(2 downto 0);
    signal u0_m0_wo0_wi0_ra0_count0_eq : std_logic;
    signal u0_m0_wo0_wi0_ra0_count0_lutreg_q : std_logic_vector (3 downto 0);
    signal u0_m0_wo0_wi0_ra1_count0_q : std_logic_vector(3 downto 0);
    signal u0_m0_wo0_wi0_ra1_count0_i : unsigned(3 downto 0);
    signal u0_m0_wo0_wi0_ra1_count0_eq : std_logic;
    signal u0_m0_wo0_wi0_ra1_count0_lutreg_q : std_logic_vector (4 downto 0);
    signal u0_m0_wo0_wi0_ra2_count0_q : std_logic_vector(4 downto 0);
    signal u0_m0_wo0_wi0_ra2_count0_i : unsigned(4 downto 0);
    signal u0_m0_wo0_wi0_ra2_count0_eq : std_logic;
    signal u0_m0_wo0_wi0_ra2_count0_lutreg_q : std_logic_vector (4 downto 0);
    signal u0_m0_wo0_wi0_ra3_count0_q : std_logic_vector(4 downto 0);
    signal u0_m0_wo0_wi0_ra3_count0_i : unsigned(4 downto 0);
    signal u0_m0_wo0_wi0_ra3_count0_eq : std_logic;
    signal u0_m0_wo0_wi0_ra3_count0_lutreg_q : std_logic_vector (5 downto 0);
    signal u0_m0_wo0_wi0_wa0_q : std_logic_vector(3 downto 0);
    signal u0_m0_wo0_wi0_wa0_i : unsigned(3 downto 0);
    signal u0_m0_wo0_wi0_wa0_eq : std_logic;
    signal u0_m0_wo0_wi0_wa1_q : std_logic_vector(4 downto 0);
    signal u0_m0_wo0_wi0_wa1_i : unsigned(4 downto 0);
    signal u0_m0_wo0_wi0_wa1_eq : std_logic;
    signal u0_m0_wo0_wi0_wa2_q : std_logic_vector(4 downto 0);
    signal u0_m0_wo0_wi0_wa2_i : unsigned(4 downto 0);
    signal u0_m0_wo0_wi0_wa2_eq : std_logic;
    signal u0_m0_wo0_wi0_wa3_q : std_logic_vector(5 downto 0);
    signal u0_m0_wo0_wi0_wa3_i : unsigned(5 downto 0);
    signal u0_m0_wo0_wi0_wa3_eq : std_logic;
    signal u0_m0_wo0_wi0_delayr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_delayr0_ia : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_wi0_delayr0_aa : std_logic_vector (3 downto 0);
    signal u0_m0_wo0_wi0_delayr0_ab : std_logic_vector (3 downto 0);
    signal u0_m0_wo0_wi0_delayr0_iq : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_wi0_delayr0_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_wi0_delayr1_reset0 : std_logic;
    signal u0_m0_wo0_wi0_delayr1_ia : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_wi0_delayr1_aa : std_logic_vector (4 downto 0);
    signal u0_m0_wo0_wi0_delayr1_ab : std_logic_vector (4 downto 0);
    signal u0_m0_wo0_wi0_delayr1_iq : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_wi0_delayr1_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_wi0_delayr2_reset0 : std_logic;
    signal u0_m0_wo0_wi0_delayr2_ia : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_wi0_delayr2_aa : std_logic_vector (4 downto 0);
    signal u0_m0_wo0_wi0_delayr2_ab : std_logic_vector (4 downto 0);
    signal u0_m0_wo0_wi0_delayr2_iq : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_wi0_delayr2_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_wi0_delayr3_reset0 : std_logic;
    signal u0_m0_wo0_wi0_delayr3_ia : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_wi0_delayr3_aa : std_logic_vector (5 downto 0);
    signal u0_m0_wo0_wi0_delayr3_ab : std_logic_vector (5 downto 0);
    signal u0_m0_wo0_wi0_delayr3_iq : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_wi0_delayr3_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_ca1_q : std_logic_vector(2 downto 0);
    signal u0_m0_wo0_ca1_i : unsigned(2 downto 0);
    signal u0_m0_wo0_ca1_eq : std_logic;
    signal u0_m0_wo0_cm0_q : std_logic_vector(7 downto 0);
    signal u0_m0_wo0_cm1_q : std_logic_vector(7 downto 0);
    signal u0_m0_wo0_sym_add0_a : std_logic_vector(12 downto 0);
    signal u0_m0_wo0_sym_add0_b : std_logic_vector(12 downto 0);
    signal u0_m0_wo0_sym_add0_o : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_sym_add0_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_sym_add1_a : std_logic_vector(12 downto 0);
    signal u0_m0_wo0_sym_add1_b : std_logic_vector(12 downto 0);
    signal u0_m0_wo0_sym_add1_o : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_sym_add1_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_a : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_b : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_s1 : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_a : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_b : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_s1 : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : std_logic_vector(21 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : std_logic_vector (21 downto 0);
    signal u0_m0_wo0_aseq_q : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_accum_a : std_logic_vector(24 downto 0);
    signal u0_m0_wo0_accum_b : std_logic_vector(24 downto 0);
    signal u0_m0_wo0_accum_i : std_logic_vector (24 downto 0);
    signal u0_m0_wo0_accum_o : std_logic_vector (24 downto 0);
    signal u0_m0_wo0_accum_q : std_logic_vector (24 downto 0);
    signal u0_m0_wo0_oseq_q : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_oseq_gated_a : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_oseq_gated_b : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_wi0_ra0_count0_lut_q : std_logic_vector(3 downto 0);
    signal u0_m0_wo0_wi0_ra1_count0_lut_q : std_logic_vector(4 downto 0);
    signal u0_m0_wo0_wi0_ra2_count0_lut_q : std_logic_vector(4 downto 0);
    signal u0_m0_wo0_wi0_ra3_count0_lut_q : std_logic_vector(5 downto 0);
begin


	--VCC(CONSTANT,1)@0
    VCC_q <= "1";

	--xIn(PORTIN,2)@10

	--u0_m0_wo0_run(ENABLEGENERATOR,5)@10
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & xIn_v & u0_m0_wo0_run_enable_q;
    u0_m0_wo0_run: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : signed(3 downto 0);
        variable u0_m0_wo0_run_inc : signed(5 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(4,4);
            u0_m0_wo0_run_enable_q <= "0";
            u0_m0_wo0_run_count <= "000000";
            u0_m0_wo0_run_inc := (OTHERS => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(3) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-5);
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + (-1);
                END IF;
                u0_m0_wo0_run_enable_q <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(3 DOWNTO 3));
            ELSE
                u0_m0_wo0_run_enable_q <= "0";
            END IF;
            CASE u0_m0_wo0_run_ctrl is
                WHEN "000" | "001" =>
                    u0_m0_wo0_run_inc := "000000";
                WHEN "010" | "011" =>
                    u0_m0_wo0_run_inc := "111111";
                WHEN "100" =>
                    u0_m0_wo0_run_inc := "000000";
                WHEN "101" =>
                    u0_m0_wo0_run_inc := "001010";
                WHEN "110" =>
                    u0_m0_wo0_run_inc := "111111";
                WHEN "111" =>
                    u0_m0_wo0_run_inc := "001001";
                WHEN OTHERS =>
            END CASE;
            u0_m0_wo0_run_count <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_run_count) + SIGNED(u0_m0_wo0_run_inc));
            u0_m0_wo0_run_q <= u0_m0_wo0_run_out;
        END IF;
    END PROCESS;
    u0_m0_wo0_run_pre_ena_q <= u0_m0_wo0_run_count(5 downto 5);
    u0_m0_wo0_run_out <= u0_m0_wo0_run_pre_ena_q AND VCC_q;

	--u0_m0_wo0_memread(DELAY,6)@12
    u0_m0_wo0_memread : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_run_q, xout => u0_m0_wo0_memread_q, clk => clk, aclr => areset );

	--u0_m0_wo0_compute(DELAY,7)@12
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_compute_q_15(DELAY,50)@12
    d_u0_m0_wo0_compute_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3 )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_15_q, clk => clk, aclr => areset );

	--u0_m0_wo0_aseq(SEQUENCE,40)@15
    u0_m0_wo0_aseq: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : signed (4 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "00000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_15_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "00000") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 5;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= std_logic_vector(u0_m0_wo0_aseq_c(4 DOWNTO 4));
            END IF;
        END IF;
    END PROCESS;


	--d_u0_m0_wo0_compute_q_16(DELAY,51)@15
    d_u0_m0_wo0_compute_q_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_15_q, xout => d_u0_m0_wo0_compute_q_16_q, clk => clk, aclr => areset );

	--d_xIn_0_12(DELAY,48)@10
    d_xIn_0_12 : dspba_delay
    GENERIC MAP ( width => 12, depth => 2 )
    PORT MAP ( xin => xIn_0, xout => d_xIn_0_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_wa3(COUNTER,23)@12
    -- every=1, low=0, high=39, step=1, init=30
    u0_m0_wo0_wi0_wa3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_wa3_i <= TO_UNSIGNED(30,6);
            u0_m0_wo0_wi0_wa3_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_sel_q_12_q = "1") THEN
                    IF u0_m0_wo0_wi0_wa3_i = 38 THEN
                      u0_m0_wo0_wi0_wa3_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_wa3_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_wa3_eq = '1') THEN
                        u0_m0_wo0_wi0_wa3_i <= u0_m0_wo0_wi0_wa3_i - 39;
                    ELSE
                        u0_m0_wo0_wi0_wa3_i <= u0_m0_wo0_wi0_wa3_i + 1;
                    END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_wa3_q <= STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_wa3_i,6));


	--d_in0_m0_wi0_wo0_assign_sel_q_12(DELAY,49)@10
    d_in0_m0_wi0_wo0_assign_sel_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2 )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_sel_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_ra3_count0(COUNTER,17)@12
    -- every=1, low=0, high=23, step=1, init=1
    u0_m0_wo0_wi0_ra3_count0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_ra3_count0_i <= TO_UNSIGNED(1,5);
            u0_m0_wo0_wi0_ra3_count0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                    IF u0_m0_wo0_wi0_ra3_count0_i = 22 THEN
                      u0_m0_wo0_wi0_ra3_count0_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_ra3_count0_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_ra3_count0_eq = '1') THEN
                        u0_m0_wo0_wi0_ra3_count0_i <= u0_m0_wo0_wi0_ra3_count0_i - 23;
                    ELSE
                        u0_m0_wo0_wi0_ra3_count0_i <= u0_m0_wo0_wi0_ra3_count0_i + 1;
                    END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_ra3_count0_q <= STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_ra3_count0_i,5));


	--u0_m0_wo0_wi0_ra3_count0_lut(LOOKUP,18)@12
    u0_m0_wo0_wi0_ra3_count0_lut: PROCESS (u0_m0_wo0_wi0_ra3_count0_q)
    BEGIN
        -- Begin reserved scope level
            CASE (u0_m0_wo0_wi0_ra3_count0_q) IS
                WHEN "00000" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "001100";
                WHEN "00001" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "001011";
                WHEN "00010" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "001010";
                WHEN "00011" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "001001";
                WHEN "00100" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "001000";
                WHEN "00101" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "000111";
                WHEN "00110" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "010110";
                WHEN "00111" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "010101";
                WHEN "01000" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "010100";
                WHEN "01001" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "010011";
                WHEN "01010" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "010010";
                WHEN "01011" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "010001";
                WHEN "01100" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "100000";
                WHEN "01101" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "011111";
                WHEN "01110" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "011110";
                WHEN "01111" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "011101";
                WHEN "10000" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "011100";
                WHEN "10001" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "011011";
                WHEN "10010" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "000010";
                WHEN "10011" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "000001";
                WHEN "10100" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "000000";
                WHEN "10101" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "100111";
                WHEN "10110" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "100110";
                WHEN "10111" =>  u0_m0_wo0_wi0_ra3_count0_lut_q <= "100101";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_wi0_ra3_count0_lut_q <= (others => '-');
            END CASE;
        -- End reserved scope level
    END PROCESS;


	--u0_m0_wo0_wi0_ra3_count0_lutreg(REG,19)@12
    u0_m0_wo0_wi0_ra3_count0_lutreg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_ra3_count0_lutreg_q <= "001100";
        ELSIF rising_edge(clk) THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                u0_m0_wo0_wi0_ra3_count0_lutreg_q <= u0_m0_wo0_wi0_ra3_count0_lut_q;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_delayr3(DUALMEM,30)@12
    u0_m0_wo0_wi0_delayr3_ia <= d_xIn_0_12_q;
    u0_m0_wo0_wi0_delayr3_aa <= u0_m0_wo0_wi0_wa3_q;
    u0_m0_wo0_wi0_delayr3_ab <= u0_m0_wo0_wi0_ra3_count0_lutreg_q;
    u0_m0_wo0_wi0_delayr3_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 12,
        widthad_a => 6,
        numwords_a => 40,
        width_b => 12,
        widthad_b => 6,
        numwords_b => 40,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "CLEAR0",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "OLD_DATA",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone III"
    )
    PORT MAP (
        clocken0 => '1',
        wren_a => d_in0_m0_wi0_wo0_assign_sel_q_12_q(0),
        aclr0 => u0_m0_wo0_wi0_delayr3_reset0,
        clock0 => clk,
        address_b => u0_m0_wo0_wi0_delayr3_ab,
        -- data_b => (others => '0'),
        q_b => u0_m0_wo0_wi0_delayr3_iq,
        address_a => u0_m0_wo0_wi0_delayr3_aa,
        data_a => u0_m0_wo0_wi0_delayr3_ia
    );
    u0_m0_wo0_wi0_delayr3_reset0 <= areset;
        u0_m0_wo0_wi0_delayr3_q <= u0_m0_wo0_wi0_delayr3_iq(11 downto 0);

	--u0_m0_wo0_wi0_wa0(COUNTER,20)@12
    -- every=1, low=0, high=9, step=1, init=0
    u0_m0_wo0_wi0_wa0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_wa0_i <= TO_UNSIGNED(0,4);
            u0_m0_wo0_wi0_wa0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_sel_q_12_q = "1") THEN
                    IF u0_m0_wo0_wi0_wa0_i = 8 THEN
                      u0_m0_wo0_wi0_wa0_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_wa0_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_wa0_eq = '1') THEN
                        u0_m0_wo0_wi0_wa0_i <= u0_m0_wo0_wi0_wa0_i - 9;
                    ELSE
                        u0_m0_wo0_wi0_wa0_i <= u0_m0_wo0_wi0_wa0_i + 1;
                    END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_wa0_q <= STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_wa0_i,4));


	--u0_m0_wo0_wi0_ra0_count0(COUNTER,8)@12
    -- every=1, low=0, high=5, step=1, init=1
    u0_m0_wo0_wi0_ra0_count0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_ra0_count0_i <= TO_UNSIGNED(1,3);
            u0_m0_wo0_wi0_ra0_count0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                    IF u0_m0_wo0_wi0_ra0_count0_i = 4 THEN
                      u0_m0_wo0_wi0_ra0_count0_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_ra0_count0_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_ra0_count0_eq = '1') THEN
                        u0_m0_wo0_wi0_ra0_count0_i <= u0_m0_wo0_wi0_ra0_count0_i - 5;
                    ELSE
                        u0_m0_wo0_wi0_ra0_count0_i <= u0_m0_wo0_wi0_ra0_count0_i + 1;
                    END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_ra0_count0_q <= STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_ra0_count0_i,3));


	--u0_m0_wo0_wi0_ra0_count0_lut(LOOKUP,9)@12
    u0_m0_wo0_wi0_ra0_count0_lut: PROCESS (u0_m0_wo0_wi0_ra0_count0_q)
    BEGIN
        -- Begin reserved scope level
            CASE (u0_m0_wo0_wi0_ra0_count0_q) IS
                WHEN "000" =>  u0_m0_wo0_wi0_ra0_count0_lut_q <= "0101";
                WHEN "001" =>  u0_m0_wo0_wi0_ra0_count0_lut_q <= "0110";
                WHEN "010" =>  u0_m0_wo0_wi0_ra0_count0_lut_q <= "0111";
                WHEN "011" =>  u0_m0_wo0_wi0_ra0_count0_lut_q <= "1000";
                WHEN "100" =>  u0_m0_wo0_wi0_ra0_count0_lut_q <= "1001";
                WHEN "101" =>  u0_m0_wo0_wi0_ra0_count0_lut_q <= "0000";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_wi0_ra0_count0_lut_q <= (others => '-');
            END CASE;
        -- End reserved scope level
    END PROCESS;


	--u0_m0_wo0_wi0_ra0_count0_lutreg(REG,10)@12
    u0_m0_wo0_wi0_ra0_count0_lutreg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_ra0_count0_lutreg_q <= "0101";
        ELSIF rising_edge(clk) THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                u0_m0_wo0_wi0_ra0_count0_lutreg_q <= u0_m0_wo0_wi0_ra0_count0_lut_q;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_delayr0(DUALMEM,24)@12
    u0_m0_wo0_wi0_delayr0_ia <= d_xIn_0_12_q;
    u0_m0_wo0_wi0_delayr0_aa <= u0_m0_wo0_wi0_wa0_q;
    u0_m0_wo0_wi0_delayr0_ab <= u0_m0_wo0_wi0_ra0_count0_lutreg_q;
    u0_m0_wo0_wi0_delayr0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 12,
        widthad_a => 4,
        numwords_a => 10,
        width_b => 12,
        widthad_b => 4,
        numwords_b => 10,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "CLEAR0",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "OLD_DATA",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone III"
    )
    PORT MAP (
        clocken0 => '1',
        wren_a => d_in0_m0_wi0_wo0_assign_sel_q_12_q(0),
        aclr0 => u0_m0_wo0_wi0_delayr0_reset0,
        clock0 => clk,
        address_b => u0_m0_wo0_wi0_delayr0_ab,
        -- data_b => (others => '0'),
        q_b => u0_m0_wo0_wi0_delayr0_iq,
        address_a => u0_m0_wo0_wi0_delayr0_aa,
        data_a => u0_m0_wo0_wi0_delayr0_ia
    );
    u0_m0_wo0_wi0_delayr0_reset0 <= areset;
        u0_m0_wo0_wi0_delayr0_q <= u0_m0_wo0_wi0_delayr0_iq(11 downto 0);

	--u0_m0_wo0_sym_add0(ADD,35)@12
    u0_m0_wo0_sym_add0_a <= STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_wi0_delayr0_q(11)) & u0_m0_wo0_wi0_delayr0_q);
    u0_m0_wo0_sym_add0_b <= STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_wi0_delayr3_q(11)) & u0_m0_wo0_wi0_delayr3_q);
    u0_m0_wo0_sym_add0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add0_a) + SIGNED(u0_m0_wo0_sym_add0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add0_q <= u0_m0_wo0_sym_add0_o(12 downto 0);


	--u0_m0_wo0_ca1(COUNTER,32)@12
    -- every=1, low=0, high=5, step=1, init=0
    u0_m0_wo0_ca1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca1_i <= TO_UNSIGNED(0,3);
            u0_m0_wo0_ca1_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                    IF u0_m0_wo0_ca1_i = 4 THEN
                      u0_m0_wo0_ca1_eq <= '1';
                    ELSE
                      u0_m0_wo0_ca1_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_ca1_eq = '1') THEN
                        u0_m0_wo0_ca1_i <= u0_m0_wo0_ca1_i - 5;
                    ELSE
                        u0_m0_wo0_ca1_i <= u0_m0_wo0_ca1_i + 1;
                    END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca1_q <= STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca1_i,3));


	--u0_m0_wo0_cm0(LOOKUP,33)@12
    u0_m0_wo0_cm0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm0_q <= "00101010";
        ELSIF rising_edge(clk) THEN            CASE (u0_m0_wo0_ca1_q) IS
                WHEN "000" =>  u0_m0_wo0_cm0_q <= "00101010";
                WHEN "001" =>  u0_m0_wo0_cm0_q <= "00011100";
                WHEN "010" =>  u0_m0_wo0_cm0_q <= "00010001";
                WHEN "011" =>  u0_m0_wo0_cm0_q <= "00001001";
                WHEN "100" =>  u0_m0_wo0_cm0_q <= "00000101";
                WHEN "101" =>  u0_m0_wo0_cm0_q <= "00000011";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_cm0_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_mtree_mult1_1(MULT,37)@13
    u0_m0_wo0_mtree_mult1_1_a <= u0_m0_wo0_cm0_q;
    u0_m0_wo0_mtree_mult1_1_b <= u0_m0_wo0_sym_add0_q;
    u0_m0_wo0_mtree_mult1_1_reset <= areset;

    u0_m0_wo0_mtree_mult1_1_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 8,
    lpm_widthb => 13,
    lpm_widthp => 21,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_1_a,
    datab => u0_m0_wo0_mtree_mult1_1_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_1_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_1_s1
    );
    u0_m0_wo0_mtree_mult1_1_q <= u0_m0_wo0_mtree_mult1_1_s1;

	--u0_m0_wo0_wi0_wa2(COUNTER,22)@12
    -- every=1, low=0, high=29, step=1, init=20
    u0_m0_wo0_wi0_wa2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_wa2_i <= TO_UNSIGNED(20,5);
            u0_m0_wo0_wi0_wa2_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_sel_q_12_q = "1") THEN
                    IF u0_m0_wo0_wi0_wa2_i = 28 THEN
                      u0_m0_wo0_wi0_wa2_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_wa2_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_wa2_eq = '1') THEN
                        u0_m0_wo0_wi0_wa2_i <= u0_m0_wo0_wi0_wa2_i - 29;
                    ELSE
                        u0_m0_wo0_wi0_wa2_i <= u0_m0_wo0_wi0_wa2_i + 1;
                    END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_wa2_q <= STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_wa2_i,5));


	--u0_m0_wo0_wi0_ra2_count0(COUNTER,14)@12
    -- every=1, low=0, high=17, step=1, init=1
    u0_m0_wo0_wi0_ra2_count0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_ra2_count0_i <= TO_UNSIGNED(1,5);
            u0_m0_wo0_wi0_ra2_count0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                    IF u0_m0_wo0_wi0_ra2_count0_i = 16 THEN
                      u0_m0_wo0_wi0_ra2_count0_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_ra2_count0_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_ra2_count0_eq = '1') THEN
                        u0_m0_wo0_wi0_ra2_count0_i <= u0_m0_wo0_wi0_ra2_count0_i - 17;
                    ELSE
                        u0_m0_wo0_wi0_ra2_count0_i <= u0_m0_wo0_wi0_ra2_count0_i + 1;
                    END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_ra2_count0_q <= STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_ra2_count0_i,5));


	--u0_m0_wo0_wi0_ra2_count0_lut(LOOKUP,15)@12
    u0_m0_wo0_wi0_ra2_count0_lut: PROCESS (u0_m0_wo0_wi0_ra2_count0_q)
    BEGIN
        -- Begin reserved scope level
            CASE (u0_m0_wo0_wi0_ra2_count0_q) IS
                WHEN "00000" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "01000";
                WHEN "00001" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "00111";
                WHEN "00010" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "00110";
                WHEN "00011" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "00101";
                WHEN "00100" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "00100";
                WHEN "00101" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "00011";
                WHEN "00110" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "10010";
                WHEN "00111" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "10001";
                WHEN "01000" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "10000";
                WHEN "01001" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "01111";
                WHEN "01010" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "01110";
                WHEN "01011" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "01101";
                WHEN "01100" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "11100";
                WHEN "01101" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "11011";
                WHEN "01110" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "11010";
                WHEN "01111" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "11001";
                WHEN "10000" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "11000";
                WHEN "10001" =>  u0_m0_wo0_wi0_ra2_count0_lut_q <= "10111";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_wi0_ra2_count0_lut_q <= (others => '-');
            END CASE;
        -- End reserved scope level
    END PROCESS;


	--u0_m0_wo0_wi0_ra2_count0_lutreg(REG,16)@12
    u0_m0_wo0_wi0_ra2_count0_lutreg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_ra2_count0_lutreg_q <= "01000";
        ELSIF rising_edge(clk) THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                u0_m0_wo0_wi0_ra2_count0_lutreg_q <= u0_m0_wo0_wi0_ra2_count0_lut_q;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_delayr2(DUALMEM,28)@12
    u0_m0_wo0_wi0_delayr2_ia <= d_xIn_0_12_q;
    u0_m0_wo0_wi0_delayr2_aa <= u0_m0_wo0_wi0_wa2_q;
    u0_m0_wo0_wi0_delayr2_ab <= u0_m0_wo0_wi0_ra2_count0_lutreg_q;
    u0_m0_wo0_wi0_delayr2_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 12,
        widthad_a => 5,
        numwords_a => 30,
        width_b => 12,
        widthad_b => 5,
        numwords_b => 30,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "CLEAR0",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "OLD_DATA",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone III"
    )
    PORT MAP (
        clocken0 => '1',
        wren_a => d_in0_m0_wi0_wo0_assign_sel_q_12_q(0),
        aclr0 => u0_m0_wo0_wi0_delayr2_reset0,
        clock0 => clk,
        address_b => u0_m0_wo0_wi0_delayr2_ab,
        -- data_b => (others => '0'),
        q_b => u0_m0_wo0_wi0_delayr2_iq,
        address_a => u0_m0_wo0_wi0_delayr2_aa,
        data_a => u0_m0_wo0_wi0_delayr2_ia
    );
    u0_m0_wo0_wi0_delayr2_reset0 <= areset;
        u0_m0_wo0_wi0_delayr2_q <= u0_m0_wo0_wi0_delayr2_iq(11 downto 0);

	--u0_m0_wo0_wi0_wa1(COUNTER,21)@12
    -- every=1, low=0, high=19, step=1, init=0
    u0_m0_wo0_wi0_wa1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_wa1_i <= TO_UNSIGNED(0,5);
            u0_m0_wo0_wi0_wa1_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_sel_q_12_q = "1") THEN
                    IF u0_m0_wo0_wi0_wa1_i = 18 THEN
                      u0_m0_wo0_wi0_wa1_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_wa1_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_wa1_eq = '1') THEN
                        u0_m0_wo0_wi0_wa1_i <= u0_m0_wo0_wi0_wa1_i - 19;
                    ELSE
                        u0_m0_wo0_wi0_wa1_i <= u0_m0_wo0_wi0_wa1_i + 1;
                    END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_wa1_q <= STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_wa1_i,5));


	--u0_m0_wo0_wi0_ra1_count0(COUNTER,11)@12
    -- every=1, low=0, high=11, step=1, init=1
    u0_m0_wo0_wi0_ra1_count0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_ra1_count0_i <= TO_UNSIGNED(1,4);
            u0_m0_wo0_wi0_ra1_count0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                    IF u0_m0_wo0_wi0_ra1_count0_i = 10 THEN
                      u0_m0_wo0_wi0_ra1_count0_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_ra1_count0_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_ra1_count0_eq = '1') THEN
                        u0_m0_wo0_wi0_ra1_count0_i <= u0_m0_wo0_wi0_ra1_count0_i - 11;
                    ELSE
                        u0_m0_wo0_wi0_ra1_count0_i <= u0_m0_wo0_wi0_ra1_count0_i + 1;
                    END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_ra1_count0_q <= STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_ra1_count0_i,4));


	--u0_m0_wo0_wi0_ra1_count0_lut(LOOKUP,12)@12
    u0_m0_wo0_wi0_ra1_count0_lut: PROCESS (u0_m0_wo0_wi0_ra1_count0_q)
    BEGIN
        -- Begin reserved scope level
            CASE (u0_m0_wo0_wi0_ra1_count0_q) IS
                WHEN "0000" =>  u0_m0_wo0_wi0_ra1_count0_lut_q <= "01001";
                WHEN "0001" =>  u0_m0_wo0_wi0_ra1_count0_lut_q <= "01010";
                WHEN "0010" =>  u0_m0_wo0_wi0_ra1_count0_lut_q <= "01011";
                WHEN "0011" =>  u0_m0_wo0_wi0_ra1_count0_lut_q <= "01100";
                WHEN "0100" =>  u0_m0_wo0_wi0_ra1_count0_lut_q <= "01101";
                WHEN "0101" =>  u0_m0_wo0_wi0_ra1_count0_lut_q <= "01110";
                WHEN "0110" =>  u0_m0_wo0_wi0_ra1_count0_lut_q <= "10011";
                WHEN "0111" =>  u0_m0_wo0_wi0_ra1_count0_lut_q <= "00000";
                WHEN "1000" =>  u0_m0_wo0_wi0_ra1_count0_lut_q <= "00001";
                WHEN "1001" =>  u0_m0_wo0_wi0_ra1_count0_lut_q <= "00010";
                WHEN "1010" =>  u0_m0_wo0_wi0_ra1_count0_lut_q <= "00011";
                WHEN "1011" =>  u0_m0_wo0_wi0_ra1_count0_lut_q <= "00100";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_wi0_ra1_count0_lut_q <= (others => '-');
            END CASE;
        -- End reserved scope level
    END PROCESS;


	--u0_m0_wo0_wi0_ra1_count0_lutreg(REG,13)@12
    u0_m0_wo0_wi0_ra1_count0_lutreg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_ra1_count0_lutreg_q <= "01001";
        ELSIF rising_edge(clk) THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                u0_m0_wo0_wi0_ra1_count0_lutreg_q <= u0_m0_wo0_wi0_ra1_count0_lut_q;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_delayr1(DUALMEM,26)@12
    u0_m0_wo0_wi0_delayr1_ia <= d_xIn_0_12_q;
    u0_m0_wo0_wi0_delayr1_aa <= u0_m0_wo0_wi0_wa1_q;
    u0_m0_wo0_wi0_delayr1_ab <= u0_m0_wo0_wi0_ra1_count0_lutreg_q;
    u0_m0_wo0_wi0_delayr1_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 12,
        widthad_a => 5,
        numwords_a => 20,
        width_b => 12,
        widthad_b => 5,
        numwords_b => 20,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "CLEAR0",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "OLD_DATA",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone III"
    )
    PORT MAP (
        clocken0 => '1',
        wren_a => d_in0_m0_wi0_wo0_assign_sel_q_12_q(0),
        aclr0 => u0_m0_wo0_wi0_delayr1_reset0,
        clock0 => clk,
        address_b => u0_m0_wo0_wi0_delayr1_ab,
        -- data_b => (others => '0'),
        q_b => u0_m0_wo0_wi0_delayr1_iq,
        address_a => u0_m0_wo0_wi0_delayr1_aa,
        data_a => u0_m0_wo0_wi0_delayr1_ia
    );
    u0_m0_wo0_wi0_delayr1_reset0 <= areset;
        u0_m0_wo0_wi0_delayr1_q <= u0_m0_wo0_wi0_delayr1_iq(11 downto 0);

	--u0_m0_wo0_sym_add1(ADD,36)@12
    u0_m0_wo0_sym_add1_a <= STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_wi0_delayr1_q(11)) & u0_m0_wo0_wi0_delayr1_q);
    u0_m0_wo0_sym_add1_b <= STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_wi0_delayr2_q(11)) & u0_m0_wo0_wi0_delayr2_q);
    u0_m0_wo0_sym_add1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add1_a) + SIGNED(u0_m0_wo0_sym_add1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add1_q <= u0_m0_wo0_sym_add1_o(12 downto 0);


	--u0_m0_wo0_cm1(LOOKUP,34)@12
    u0_m0_wo0_cm1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm1_q <= "01111111";
        ELSIF rising_edge(clk) THEN            CASE (u0_m0_wo0_ca1_q) IS
                WHEN "000" =>  u0_m0_wo0_cm1_q <= "01111111";
                WHEN "001" =>  u0_m0_wo0_cm1_q <= "01111001";
                WHEN "010" =>  u0_m0_wo0_cm1_q <= "01101110";
                WHEN "011" =>  u0_m0_wo0_cm1_q <= "01011110";
                WHEN "100" =>  u0_m0_wo0_cm1_q <= "01001101";
                WHEN "101" =>  u0_m0_wo0_cm1_q <= "00111011";
                WHEN OTHERS => -- unreachable
                    u0_m0_wo0_cm1_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_mtree_mult1_0(MULT,38)@13
    u0_m0_wo0_mtree_mult1_0_a <= u0_m0_wo0_cm1_q;
    u0_m0_wo0_mtree_mult1_0_b <= u0_m0_wo0_sym_add1_q;
    u0_m0_wo0_mtree_mult1_0_reset <= areset;

    u0_m0_wo0_mtree_mult1_0_component : lpm_mult
    GENERIC MAP (
    lpm_widtha => 8,
    lpm_widthb => 13,
    lpm_widthp => 21,
    lpm_widths => 1,
    lpm_type => "LPM_MULT",
    lpm_representation => "SIGNED",
    lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES,MAXIMIZE_SPEED=5",
    lpm_pipeline => 2
    )
    PORT MAP (
    dataa => u0_m0_wo0_mtree_mult1_0_a,
    datab => u0_m0_wo0_mtree_mult1_0_b,
    clken => VCC_q(0),
    aclr => u0_m0_wo0_mtree_mult1_0_reset,
    clock => clk,
    result => u0_m0_wo0_mtree_mult1_0_s1
    );
    u0_m0_wo0_mtree_mult1_0_q <= u0_m0_wo0_mtree_mult1_0_s1;

	--u0_m0_wo0_mtree_add0_0(ADD,39)@15
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_0_q(20)) & u0_m0_wo0_mtree_mult1_0_q);
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_1_q(20)) & u0_m0_wo0_mtree_mult1_1_q);
    u0_m0_wo0_mtree_add0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(21 downto 0);


	--u0_m0_wo0_accum(ADD,41)@16
    u0_m0_wo0_accum_a <= STD_LOGIC_VECTOR((24 downto 22 => u0_m0_wo0_mtree_add0_0_q(21)) & u0_m0_wo0_mtree_add0_0_q);
    u0_m0_wo0_accum_b <= u0_m0_wo0_accum_q;
    u0_m0_wo0_accum_i <= u0_m0_wo0_accum_a;
    u0_m0_wo0_accum: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_accum_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_16_q = "1") THEN
                IF (u0_m0_wo0_aseq_q = "1") THEN
                    u0_m0_wo0_accum_o <= u0_m0_wo0_accum_i;
                ELSE
                    u0_m0_wo0_accum_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_accum_a) + SIGNED(u0_m0_wo0_accum_b));
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_accum_q <= u0_m0_wo0_accum_o(24 downto 0);


	--GND(CONSTANT,0)@0
    GND_q <= "0";

	--u0_m0_wo0_oseq(SEQUENCE,42)@15
    u0_m0_wo0_oseq: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : signed (4 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "00101";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_15_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "00000") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 5;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= std_logic_vector(u0_m0_wo0_oseq_c(4 DOWNTO 4));
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_oseq_gated(LOGICAL,43)@16
    u0_m0_wo0_oseq_gated_a <= u0_m0_wo0_oseq_q;
    u0_m0_wo0_oseq_gated_b <= d_u0_m0_wo0_compute_q_16_q;
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_gated_a and u0_m0_wo0_oseq_gated_b;

	--u0_m0_wo0_oseq_gated_reg(REG,44)@16
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF rising_edge(clk) THEN
            u0_m0_wo0_oseq_gated_reg_q <= u0_m0_wo0_oseq_gated_q;
        END IF;
    END PROCESS;


	--xOut(PORTOUT,47)@17
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_accum_q;


end normal;
