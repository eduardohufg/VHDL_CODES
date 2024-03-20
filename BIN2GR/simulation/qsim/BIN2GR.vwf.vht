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
-- Generated on "02/15/2024 10:44:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BIN2GR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BIN2GR_vhd_vec_tst IS
END BIN2GR_vhd_vec_tst;
ARCHITECTURE BIN2GR_arch OF BIN2GR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL INP : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL SEL : STD_LOGIC;
COMPONENT BIN2GR
	PORT (
	INP : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	SEL : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BIN2GR
	PORT MAP (
-- list connections between master ports and signals
	INP => INP,
	S => S,
	SEL => SEL
	);

-- SEL
t_prcs_SEL: PROCESS
BEGIN
	SEL <= '0';
	WAIT FOR 400000 ps;
	SEL <= '1';
	WAIT FOR 400000 ps;
	SEL <= '0';
WAIT;
END PROCESS t_prcs_SEL;
-- INP[2]
t_prcs_INP_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		INP(2) <= '0';
		WAIT FOR 200000 ps;
		INP(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	INP(2) <= '0';
WAIT;
END PROCESS t_prcs_INP_2;
-- INP[1]
t_prcs_INP_1: PROCESS
BEGIN
LOOP
	INP(1) <= '0';
	WAIT FOR 100000 ps;
	INP(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INP_1;
-- INP[0]
t_prcs_INP_0: PROCESS
BEGIN
LOOP
	INP(0) <= '0';
	WAIT FOR 50000 ps;
	INP(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INP_0;
END BIN2GR_arch;
