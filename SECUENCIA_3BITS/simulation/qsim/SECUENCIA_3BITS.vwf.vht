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
-- Generated on "02/19/2024 10:43:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SECUENCIA_3BITS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SECUENCIA_3BITS_vhd_vec_tst IS
END SECUENCIA_3BITS_vhd_vec_tst;
ARCHITECTURE SECUENCIA_3BITS_arch OF SECUENCIA_3BITS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL SALIDA : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT SECUENCIA_3BITS
	PORT (
	CLK : IN STD_LOGIC;
	RST : IN STD_LOGIC;
	SALIDA : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SECUENCIA_3BITS
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	RST => RST,
	SALIDA => SALIDA
	);

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '1';
	WAIT FOR 30000 ps;
	RST <= '0';
	WAIT FOR 90000 ps;
	RST <= '1';
	WAIT FOR 350000 ps;
	RST <= '0';
	WAIT FOR 90000 ps;
	RST <= '1';
WAIT;
END PROCESS t_prcs_RST;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 20000 ps;
	CLK <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
END SECUENCIA_3BITS_arch;
