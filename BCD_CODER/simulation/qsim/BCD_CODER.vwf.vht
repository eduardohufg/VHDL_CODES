-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/22/2024 23:18:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BCD_CODER
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BCD_CODER_vhd_vec_tst IS
END BCD_CODER_vhd_vec_tst;
ARCHITECTURE BCD_CODER_arch OF BCD_CODER_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BCD : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SEG : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT BCD_CODER
	PORT (
	BCD : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	SEG : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BCD_CODER
	PORT MAP (
-- list connections between master ports and signals
	BCD => BCD,
	SEG => SEG
	);
-- BCD[3]
t_prcs_BCD_3: PROCESS
BEGIN
	BCD(3) <= '1';
	WAIT FOR 50000 ps;
	BCD(3) <= '0';
	WAIT FOR 50000 ps;
	BCD(3) <= '1';
	WAIT FOR 150000 ps;
	BCD(3) <= '0';
	WAIT FOR 100000 ps;
	BCD(3) <= '1';
	WAIT FOR 150000 ps;
	BCD(3) <= '0';
	WAIT FOR 50000 ps;
	BCD(3) <= '1';
	WAIT FOR 50000 ps;
	BCD(3) <= '0';
	WAIT FOR 250000 ps;
	BCD(3) <= '1';
	WAIT FOR 50000 ps;
	BCD(3) <= '0';
WAIT;
END PROCESS t_prcs_BCD_3;
-- BCD[2]
t_prcs_BCD_2: PROCESS
BEGIN
	BCD(2) <= '0';
	WAIT FOR 50000 ps;
	BCD(2) <= '1';
	WAIT FOR 50000 ps;
	BCD(2) <= '0';
	WAIT FOR 100000 ps;
	BCD(2) <= '1';
	WAIT FOR 50000 ps;
	BCD(2) <= '0';
	WAIT FOR 300000 ps;
	BCD(2) <= '1';
	WAIT FOR 200000 ps;
	BCD(2) <= '0';
	WAIT FOR 50000 ps;
	BCD(2) <= '1';
WAIT;
END PROCESS t_prcs_BCD_2;
-- BCD[1]
t_prcs_BCD_1: PROCESS
BEGIN
	BCD(1) <= '1';
	WAIT FOR 50000 ps;
	BCD(1) <= '0';
	WAIT FOR 100000 ps;
	BCD(1) <= '1';
	WAIT FOR 150000 ps;
	BCD(1) <= '0';
	WAIT FOR 50000 ps;
	BCD(1) <= '1';
	WAIT FOR 50000 ps;
	BCD(1) <= '0';
	WAIT FOR 100000 ps;
	BCD(1) <= '1';
	WAIT FOR 50000 ps;
	BCD(1) <= '0';
	WAIT FOR 50000 ps;
	BCD(1) <= '1';
	WAIT FOR 50000 ps;
	BCD(1) <= '0';
	WAIT FOR 100000 ps;
	BCD(1) <= '1';
	WAIT FOR 100000 ps;
	BCD(1) <= '0';
WAIT;
END PROCESS t_prcs_BCD_1;
-- BCD[0]
t_prcs_BCD_0: PROCESS
BEGIN
	BCD(0) <= '1';
	WAIT FOR 100000 ps;
	BCD(0) <= '0';
	WAIT FOR 50000 ps;
	BCD(0) <= '1';
	WAIT FOR 100000 ps;
	BCD(0) <= '0';
	WAIT FOR 250000 ps;
	BCD(0) <= '1';
	WAIT FOR 100000 ps;
	BCD(0) <= '0';
	WAIT FOR 50000 ps;
	BCD(0) <= '1';
	WAIT FOR 100000 ps;
	BCD(0) <= '0';
	WAIT FOR 100000 ps;
	BCD(0) <= '1';
WAIT;
END PROCESS t_prcs_BCD_0;
END BCD_CODER_arch;
