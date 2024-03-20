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
-- Generated on "02/22/2024 23:28:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BCD_8BITS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BCD_8BITS_vhd_vec_tst IS
END BCD_8BITS_vhd_vec_tst;
ARCHITECTURE BCD_8BITS_arch OF BCD_8BITS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DATO : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL SALIDA : STD_LOGIC_VECTOR(13 DOWNTO 0);
COMPONENT BCD_8BITS
	PORT (
	DATO : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	S1 : IN STD_LOGIC;
	S2 : IN STD_LOGIC;
	SALIDA : BUFFER STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BCD_8BITS
	PORT MAP (
-- list connections between master ports and signals
	DATO => DATO,
	S1 => S1,
	S2 => S2,
	SALIDA => SALIDA
	);
-- DATO[7]
t_prcs_DATO_7: PROCESS
BEGIN
	DATO(7) <= '0';
WAIT;
END PROCESS t_prcs_DATO_7;
-- DATO[6]
t_prcs_DATO_6: PROCESS
BEGIN
	DATO(6) <= '0';
WAIT;
END PROCESS t_prcs_DATO_6;
-- DATO[5]
t_prcs_DATO_5: PROCESS
BEGIN
	DATO(5) <= '0';
	WAIT FOR 210000 ps;
	DATO(5) <= '1';
	WAIT FOR 160000 ps;
	DATO(5) <= '0';
WAIT;
END PROCESS t_prcs_DATO_5;
-- DATO[4]
t_prcs_DATO_4: PROCESS
BEGIN
	DATO(4) <= '0';
	WAIT FOR 40000 ps;
	DATO(4) <= '1';
	WAIT FOR 100000 ps;
	DATO(4) <= '0';
WAIT;
END PROCESS t_prcs_DATO_4;
-- DATO[3]
t_prcs_DATO_3: PROCESS
BEGIN
	DATO(3) <= '0';
WAIT;
END PROCESS t_prcs_DATO_3;
-- DATO[2]
t_prcs_DATO_2: PROCESS
BEGIN
	DATO(2) <= '0';
WAIT;
END PROCESS t_prcs_DATO_2;
-- DATO[1]
t_prcs_DATO_1: PROCESS
BEGIN
	DATO(1) <= '0';
	WAIT FOR 210000 ps;
	DATO(1) <= '1';
	WAIT FOR 160000 ps;
	DATO(1) <= '0';
WAIT;
END PROCESS t_prcs_DATO_1;
-- DATO[0]
t_prcs_DATO_0: PROCESS
BEGIN
	DATO(0) <= '0';
	WAIT FOR 40000 ps;
	DATO(0) <= '1';
	WAIT FOR 100000 ps;
	DATO(0) <= '0';
WAIT;
END PROCESS t_prcs_DATO_0;

-- S1
t_prcs_S1: PROCESS
BEGIN
	S1 <= '0';
	WAIT FOR 40000 ps;
	S1 <= '1';
	WAIT FOR 90000 ps;
	S1 <= '0';
WAIT;
END PROCESS t_prcs_S1;

-- S2
t_prcs_S2: PROCESS
BEGIN
	S2 <= '0';
	WAIT FOR 230000 ps;
	S2 <= '1';
	WAIT FOR 120000 ps;
	S2 <= '0';
WAIT;
END PROCESS t_prcs_S2;
END BCD_8BITS_arch;
