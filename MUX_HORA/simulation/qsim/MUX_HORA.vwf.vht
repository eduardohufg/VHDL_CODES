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
-- Generated on "02/29/2024 23:36:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MUX_HORA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX_HORA_vhd_vec_tst IS
END MUX_HORA_vhd_vec_tst;
ARCHITECTURE MUX_HORA_arch OF MUX_HORA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CASO : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL T0 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL T1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL T2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL T3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL T4 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL T5 : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT MUX_HORA
	PORT (
	CASO : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	T0 : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	T1 : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	T2 : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	T3 : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	T4 : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	T5 : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MUX_HORA
	PORT MAP (
-- list connections between master ports and signals
	CASO => CASO,
	T0 => T0,
	T1 => T1,
	T2 => T2,
	T3 => T3,
	T4 => T4,
	T5 => T5
	);
-- CASO[2]
t_prcs_CASO_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		CASO(2) <= '0';
		WAIT FOR 80000 ps;
		CASO(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	CASO(2) <= '0';
WAIT;
END PROCESS t_prcs_CASO_2;
-- CASO[1]
t_prcs_CASO_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		CASO(1) <= '0';
		WAIT FOR 40000 ps;
		CASO(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	CASO(1) <= '0';
WAIT;
END PROCESS t_prcs_CASO_1;
-- CASO[0]
t_prcs_CASO_0: PROCESS
BEGIN
LOOP
	CASO(0) <= '0';
	WAIT FOR 20000 ps;
	CASO(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CASO_0;
END MUX_HORA_arch;
