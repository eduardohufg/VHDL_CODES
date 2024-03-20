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
-- Generated on "02/22/2024 23:10:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BIN2BCD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BIN2BCD_vhd_vec_tst IS
END BIN2BCD_vhd_vec_tst;
ARCHITECTURE BIN2BCD_arch OF BIN2BCD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BCD : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BIN : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT BIN2BCD
	PORT (
	BCD : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	BIN : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BIN2BCD
	PORT MAP (
-- list connections between master ports and signals
	BCD => BCD,
	BIN => BIN
	);
-- BIN[3]
t_prcs_BIN_3: PROCESS
BEGIN
	BIN(3) <= '0';
	WAIT FOR 100000 ps;
	BIN(3) <= '1';
	WAIT FOR 100000 ps;
	BIN(3) <= '0';
	WAIT FOR 100000 ps;
	BIN(3) <= '1';
	WAIT FOR 100000 ps;
	BIN(3) <= '0';
	WAIT FOR 100000 ps;
	BIN(3) <= '1';
	WAIT FOR 50000 ps;
	BIN(3) <= '0';
	WAIT FOR 100000 ps;
	BIN(3) <= '1';
	WAIT FOR 150000 ps;
	BIN(3) <= '0';
	WAIT FOR 100000 ps;
	BIN(3) <= '1';
WAIT;
END PROCESS t_prcs_BIN_3;
-- BIN[2]
t_prcs_BIN_2: PROCESS
BEGIN
	BIN(2) <= '0';
	WAIT FOR 50000 ps;
	BIN(2) <= '1';
	WAIT FOR 350000 ps;
	BIN(2) <= '0';
	WAIT FOR 100000 ps;
	BIN(2) <= '1';
	WAIT FOR 100000 ps;
	BIN(2) <= '0';
	WAIT FOR 300000 ps;
	BIN(2) <= '1';
WAIT;
END PROCESS t_prcs_BIN_2;
-- BIN[1]
t_prcs_BIN_1: PROCESS
BEGIN
	BIN(1) <= '1';
	WAIT FOR 300000 ps;
	BIN(1) <= '0';
	WAIT FOR 50000 ps;
	BIN(1) <= '1';
	WAIT FOR 50000 ps;
	BIN(1) <= '0';
	WAIT FOR 50000 ps;
	BIN(1) <= '1';
	WAIT FOR 150000 ps;
	BIN(1) <= '0';
	WAIT FOR 50000 ps;
	BIN(1) <= '1';
	WAIT FOR 100000 ps;
	BIN(1) <= '0';
	WAIT FOR 50000 ps;
	BIN(1) <= '1';
	WAIT FOR 50000 ps;
	BIN(1) <= '0';
WAIT;
END PROCESS t_prcs_BIN_1;
-- BIN[0]
t_prcs_BIN_0: PROCESS
BEGIN
	BIN(0) <= '1';
	WAIT FOR 50000 ps;
	BIN(0) <= '0';
	WAIT FOR 150000 ps;
	BIN(0) <= '1';
	WAIT FOR 100000 ps;
	BIN(0) <= '0';
	WAIT FOR 50000 ps;
	BIN(0) <= '1';
	WAIT FOR 50000 ps;
	BIN(0) <= '0';
	WAIT FOR 50000 ps;
	BIN(0) <= '1';
	WAIT FOR 50000 ps;
	BIN(0) <= '0';
	WAIT FOR 50000 ps;
	BIN(0) <= '1';
	WAIT FOR 50000 ps;
	BIN(0) <= '0';
	WAIT FOR 50000 ps;
	BIN(0) <= '1';
	WAIT FOR 50000 ps;
	BIN(0) <= '0';
WAIT;
END PROCESS t_prcs_BIN_0;
END BIN2BCD_arch;
