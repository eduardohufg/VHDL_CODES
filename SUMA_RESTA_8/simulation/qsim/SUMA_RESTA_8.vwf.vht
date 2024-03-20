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
-- Generated on "02/19/2024 23:15:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SUMA_RESTA_8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SUMA_RESTA_8_vhd_vec_tst IS
END SUMA_RESTA_8_vhd_vec_tst;
ARCHITECTURE SUMA_RESTA_8_arch OF SUMA_RESTA_8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Cout : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sel : STD_LOGIC;
COMPONENT SUMA_RESTA_8
	PORT (
	a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Cout : BUFFER STD_LOGIC;
	s : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SUMA_RESTA_8
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	Cout => Cout,
	s => s,
	sel => sel
	);

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '1';
	WAIT FOR 100000 ps;
	sel <= '0';
	WAIT FOR 50000 ps;
	sel <= '1';
	WAIT FOR 100000 ps;
	sel <= '0';
	WAIT FOR 50000 ps;
	sel <= '1';
	WAIT FOR 50000 ps;
	sel <= '0';
	WAIT FOR 50000 ps;
	sel <= '1';
	WAIT FOR 50000 ps;
	sel <= '0';
	WAIT FOR 50000 ps;
	sel <= '1';
	WAIT FOR 50000 ps;
	sel <= '0';
	WAIT FOR 50000 ps;
	sel <= '1';
	WAIT FOR 50000 ps;
	sel <= '0';
	WAIT FOR 200000 ps;
	sel <= '1';
WAIT;
END PROCESS t_prcs_sel;
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
	a(7) <= '0';
WAIT;
END PROCESS t_prcs_a_7;
-- a[6]
t_prcs_a_6: PROCESS
BEGIN
	a(6) <= '0';
WAIT;
END PROCESS t_prcs_a_6;
-- a[5]
t_prcs_a_5: PROCESS
BEGIN
	a(5) <= '0';
WAIT;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '0';
	WAIT FOR 800000 ps;
	a(4) <= '1';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
	WAIT FOR 400000 ps;
	a(3) <= '1';
	WAIT FOR 400000 ps;
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		a(2) <= '0';
		WAIT FOR 200000 ps;
		a(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
LOOP
	a(1) <= '0';
	WAIT FOR 100000 ps;
	a(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
LOOP
	a(0) <= '0';
	WAIT FOR 50000 ps;
	a(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a_0;
-- b[7]
t_prcs_b_7: PROCESS
BEGIN
	b(7) <= '0';
WAIT;
END PROCESS t_prcs_b_7;
-- b[6]
t_prcs_b_6: PROCESS
BEGIN
	b(6) <= '0';
	WAIT FOR 650000 ps;
	b(6) <= '1';
WAIT;
END PROCESS t_prcs_b_6;
-- b[5]
t_prcs_b_5: PROCESS
BEGIN
	b(5) <= '0';
	WAIT FOR 350000 ps;
	b(5) <= '1';
	WAIT FOR 300000 ps;
	b(5) <= '0';
WAIT;
END PROCESS t_prcs_b_5;
-- b[4]
t_prcs_b_4: PROCESS
BEGIN
	b(4) <= '0';
	WAIT FOR 200000 ps;
	FOR i IN 1 TO 2
	LOOP
		b(4) <= '1';
		WAIT FOR 150000 ps;
		b(4) <= '0';
		WAIT FOR 150000 ps;
	END LOOP;
	b(4) <= '1';
WAIT;
END PROCESS t_prcs_b_4;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '0';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 2
	LOOP
		b(3) <= '1';
		WAIT FOR 100000 ps;
		b(3) <= '0';
		WAIT FOR 50000 ps;
	END LOOP;
	b(3) <= '1';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 2
	LOOP
		b(3) <= '0';
		WAIT FOR 100000 ps;
		b(3) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	b(3) <= '0';
	WAIT FOR 100000 ps;
	b(3) <= '1';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 2
	LOOP
		b(2) <= '1';
		WAIT FOR 50000 ps;
		b(2) <= '0';
		WAIT FOR 50000 ps;
		b(2) <= '1';
		WAIT FOR 100000 ps;
		b(2) <= '0';
		WAIT FOR 50000 ps;
		b(2) <= '1';
		WAIT FOR 50000 ps;
		b(2) <= '0';
		WAIT FOR 100000 ps;
	END LOOP;
	b(2) <= '1';
	WAIT FOR 50000 ps;
	b(2) <= '0';
	WAIT FOR 50000 ps;
	b(2) <= '1';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
LOOP
	b(1) <= '0';
	WAIT FOR 100000 ps;
	b(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
LOOP
	b(0) <= '0';
	WAIT FOR 50000 ps;
	b(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b_0;
END SUMA_RESTA_8_arch;
