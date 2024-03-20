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
-- Generated on "03/11/2024 17:49:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MOVOBST
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MOVOBST_vhd_vec_tst IS
END MOVOBST_vhd_vec_tst;
ARCHITECTURE MOVOBST_arch OF MOVOBST_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL ST : STD_LOGIC;
SIGNAL valor : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL valor2 : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT MOVOBST
	PORT (
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	ST : IN STD_LOGIC;
	valor : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	valor2 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MOVOBST
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset => reset,
	ST => ST,
	valor => valor,
	valor2 => valor2
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- ST
t_prcs_ST: PROCESS
BEGIN
	ST <= '0';
	WAIT FOR 20000 ps;
	ST <= '1';
	WAIT FOR 570000 ps;
	ST <= '0';
WAIT;
END PROCESS t_prcs_ST;
END MOVOBST_arch;
