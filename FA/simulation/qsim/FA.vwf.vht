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
-- Generated on "02/19/2024 00:16:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fa
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fa_vhd_vec_tst IS
END fa_vhd_vec_tst;
ARCHITECTURE fa_arch OF fa_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL s : STD_LOGIC;
COMPONENT fa
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	Cin : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	s : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fa
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	Cin => Cin,
	Cout => Cout,
	s => s
	);

-- a
t_prcs_a: PROCESS
BEGIN
LOOP
	a <= '0';
	WAIT FOR 50000 ps;
	a <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
LOOP
	b <= '0';
	WAIT FOR 100000 ps;
	b <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		Cin <= '0';
		WAIT FOR 200000 ps;
		Cin <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	Cin <= '0';
WAIT;
END PROCESS t_prcs_Cin;
END fa_arch;
