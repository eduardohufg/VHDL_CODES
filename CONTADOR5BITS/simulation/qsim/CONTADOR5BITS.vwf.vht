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
-- Generated on "02/29/2024 22:51:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CONTADOR5BITS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CONTADOR5BITS_vhd_vec_tst IS
END CONTADOR5BITS_vhd_vec_tst;
ARCHITECTURE CONTADOR5BITS_arch OF CONTADOR5BITS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL ENA : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT CONTADOR5BITS
	PORT (
	CLK : IN STD_LOGIC;
	ENA : IN STD_LOGIC;
	RST : IN STD_LOGIC;
	S : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CONTADOR5BITS
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	ENA => ENA,
	RST => RST,
	S => S
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- ENA
t_prcs_ENA: PROCESS
BEGIN
	ENA <= '0';
	WAIT FOR 10000 ps;
	ENA <= '1';
	WAIT FOR 20000 ps;
	ENA <= '0';
	WAIT FOR 50000 ps;
	ENA <= '1';
	WAIT FOR 10000 ps;
	ENA <= '0';
	WAIT FOR 10000 ps;
	ENA <= '1';
	WAIT FOR 10000 ps;
	ENA <= '0';
	WAIT FOR 10000 ps;
	ENA <= '1';
	WAIT FOR 30000 ps;
	ENA <= '0';
	WAIT FOR 10000 ps;
	ENA <= '1';
	WAIT FOR 10000 ps;
	ENA <= '0';
	WAIT FOR 10000 ps;
	ENA <= '1';
	WAIT FOR 20000 ps;
	ENA <= '0';
	WAIT FOR 20000 ps;
	ENA <= '1';
	WAIT FOR 30000 ps;
	ENA <= '0';
	WAIT FOR 40000 ps;
	ENA <= '1';
	WAIT FOR 20000 ps;
	ENA <= '0';
	WAIT FOR 20000 ps;
	ENA <= '1';
	WAIT FOR 10000 ps;
	ENA <= '0';
	WAIT FOR 10000 ps;
	ENA <= '1';
	WAIT FOR 10000 ps;
	ENA <= '0';
	WAIT FOR 30000 ps;
	ENA <= '1';
	WAIT FOR 10000 ps;
	ENA <= '0';
	WAIT FOR 10000 ps;
	ENA <= '1';
	WAIT FOR 30000 ps;
	ENA <= '0';
	WAIT FOR 20000 ps;
	ENA <= '1';
	WAIT FOR 10000 ps;
	ENA <= '0';
	WAIT FOR 10000 ps;
	ENA <= '1';
	WAIT FOR 40000 ps;
	ENA <= '0';
	WAIT FOR 10000 ps;
	ENA <= '1';
	WAIT FOR 20000 ps;
	ENA <= '0';
	WAIT FOR 20000 ps;
	ENA <= '1';
	WAIT FOR 60000 ps;
	ENA <= '0';
	WAIT FOR 10000 ps;
	ENA <= '1';
	WAIT FOR 20000 ps;
	ENA <= '0';
	WAIT FOR 20000 ps;
	ENA <= '1';
	WAIT FOR 40000 ps;
	ENA <= '0';
	WAIT FOR 20000 ps;
	ENA <= '1';
	WAIT FOR 50000 ps;
	ENA <= '0';
	WAIT FOR 40000 ps;
	ENA <= '1';
	WAIT FOR 10000 ps;
	ENA <= '0';
	WAIT FOR 10000 ps;
	ENA <= '1';
	WAIT FOR 20000 ps;
	ENA <= '0';
	WAIT FOR 20000 ps;
	ENA <= '1';
	WAIT FOR 50000 ps;
	ENA <= '0';
	WAIT FOR 10000 ps;
	ENA <= '1';
	WAIT FOR 40000 ps;
	ENA <= '0';
WAIT;
END PROCESS t_prcs_ENA;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '1';
WAIT;
END PROCESS t_prcs_RST;
END CONTADOR5BITS_arch;
