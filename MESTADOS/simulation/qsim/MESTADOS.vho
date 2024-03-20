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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/01/2024 00:07:06"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MESTADOS IS
    PORT (
	RST : IN std_logic;
	CLK : IN std_logic;
	START : IN std_logic;
	HORARIO : IN std_logic;
	T0 : IN std_logic_vector(4 DOWNTO 0);
	T1 : IN std_logic_vector(4 DOWNTO 0);
	T2 : IN std_logic_vector(4 DOWNTO 0);
	T3 : IN std_logic_vector(4 DOWNTO 0);
	T4 : IN std_logic_vector(4 DOWNTO 0);
	T5 : IN std_logic_vector(4 DOWNTO 0);
	E_O : BUFFER std_logic_vector(3 DOWNTO 0);
	O_E : BUFFER std_logic_vector(3 DOWNTO 0);
	N_S : BUFFER std_logic_vector(2 DOWNTO 0);
	S_N : BUFFER std_logic_vector(2 DOWNTO 0);
	cuenta : IN std_logic_vector(4 DOWNTO 0)
	);
END MESTADOS;

-- Design Ports Information
-- E_O[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_O[1]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_O[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_O[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_E[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_E[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_E[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_E[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_S[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_S[1]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_S[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_N[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_N[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_N[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HORARIO	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[3]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta[4]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2[0]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2[2]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T0[1]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T0[0]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T0[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T0[2]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T0[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3[2]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4[3]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4[4]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5[3]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MESTADOS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_HORARIO : std_logic;
SIGNAL ww_T0 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_T1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_T2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_T3 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_T4 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_T5 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_E_O : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_O_E : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_N_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_S_N : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cuenta : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \E_O[0]~output_o\ : std_logic;
SIGNAL \E_O[1]~output_o\ : std_logic;
SIGNAL \E_O[2]~output_o\ : std_logic;
SIGNAL \E_O[3]~output_o\ : std_logic;
SIGNAL \O_E[0]~output_o\ : std_logic;
SIGNAL \O_E[1]~output_o\ : std_logic;
SIGNAL \O_E[2]~output_o\ : std_logic;
SIGNAL \O_E[3]~output_o\ : std_logic;
SIGNAL \N_S[0]~output_o\ : std_logic;
SIGNAL \N_S[1]~output_o\ : std_logic;
SIGNAL \N_S[2]~output_o\ : std_logic;
SIGNAL \S_N[0]~output_o\ : std_logic;
SIGNAL \S_N[1]~output_o\ : std_logic;
SIGNAL \S_N[2]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \T2[3]~input_o\ : std_logic;
SIGNAL \T2[2]~input_o\ : std_logic;
SIGNAL \cuenta[2]~input_o\ : std_logic;
SIGNAL \cuenta[3]~input_o\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \T2[1]~input_o\ : std_logic;
SIGNAL \cuenta[0]~input_o\ : std_logic;
SIGNAL \T2[0]~input_o\ : std_logic;
SIGNAL \cuenta[1]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \T2[4]~input_o\ : std_logic;
SIGNAL \cuenta[4]~input_o\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \T1[1]~input_o\ : std_logic;
SIGNAL \T1[0]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \T1[4]~input_o\ : std_logic;
SIGNAL \T1[3]~input_o\ : std_logic;
SIGNAL \T1[2]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \T0[0]~input_o\ : std_logic;
SIGNAL \T0[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \T0[3]~input_o\ : std_logic;
SIGNAL \T0[2]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \T0[4]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \T5[0]~input_o\ : std_logic;
SIGNAL \T5[1]~input_o\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \T5[4]~input_o\ : std_logic;
SIGNAL \T5[3]~input_o\ : std_logic;
SIGNAL \T5[2]~input_o\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \T4[4]~input_o\ : std_logic;
SIGNAL \T4[1]~input_o\ : std_logic;
SIGNAL \T4[0]~input_o\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \T4[3]~input_o\ : std_logic;
SIGNAL \T4[2]~input_o\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \T3[2]~input_o\ : std_logic;
SIGNAL \T3[3]~input_o\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \T3[0]~input_o\ : std_logic;
SIGNAL \T3[1]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \T3[4]~input_o\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \EDO.S4~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \EDO.S5~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \EDO.S6~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \EDO.IDLE~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \EDO.S1~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \EDO.S2~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \EDO.S3~q\ : std_logic;
SIGNAL \HORARIO~input_o\ : std_logic;
SIGNAL \E_O~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \E_O~1_combout\ : std_logic;
SIGNAL \E_O~2_combout\ : std_logic;
SIGNAL \O_E~0_combout\ : std_logic;
SIGNAL \O_E~1_combout\ : std_logic;
SIGNAL \N_S~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \N_S~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_RST <= RST;
ww_CLK <= CLK;
ww_START <= START;
ww_HORARIO <= HORARIO;
ww_T0 <= T0;
ww_T1 <= T1;
ww_T2 <= T2;
ww_T3 <= T3;
ww_T4 <= T4;
ww_T5 <= T5;
E_O <= ww_E_O;
O_E <= ww_O_E;
N_S <= ww_N_S;
S_N <= ww_S_N;
ww_cuenta <= cuenta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X24_Y25_N30
\E_O[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_O~0_combout\,
	devoe => ww_devoe,
	o => \E_O[0]~output_o\);

-- Location: IOOBUF_X31_Y14_N23
\E_O[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector7~1_combout\,
	devoe => ww_devoe,
	o => \E_O[1]~output_o\);

-- Location: IOOBUF_X24_Y25_N16
\E_O[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_O~1_combout\,
	devoe => ww_devoe,
	o => \E_O[2]~output_o\);

-- Location: IOOBUF_X19_Y25_N30
\E_O[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_O~2_combout\,
	devoe => ww_devoe,
	o => \E_O[3]~output_o\);

-- Location: IOOBUF_X24_Y25_N9
\O_E[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_E~0_combout\,
	devoe => ww_devoe,
	o => \O_E[0]~output_o\);

-- Location: IOOBUF_X31_Y14_N9
\O_E[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector7~1_combout\,
	devoe => ww_devoe,
	o => \O_E[1]~output_o\);

-- Location: IOOBUF_X22_Y25_N2
\O_E[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \O_E~1_combout\,
	devoe => ww_devoe,
	o => \O_E[2]~output_o\);

-- Location: IOOBUF_X19_Y25_N23
\O_E[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_O~2_combout\,
	devoe => ww_devoe,
	o => \O_E[3]~output_o\);

-- Location: IOOBUF_X19_Y25_N9
\N_S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N_S~0_combout\,
	devoe => ww_devoe,
	o => \N_S[0]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\N_S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => \N_S[1]~output_o\);

-- Location: IOOBUF_X22_Y25_N9
\N_S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N_S~1_combout\,
	devoe => ww_devoe,
	o => \N_S[2]~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\S_N[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N_S~0_combout\,
	devoe => ww_devoe,
	o => \S_N[0]~output_o\);

-- Location: IOOBUF_X10_Y21_N9
\S_N[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector9~0_combout\,
	devoe => ww_devoe,
	o => \S_N[1]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\S_N[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N_S~1_combout\,
	devoe => ww_devoe,
	o => \S_N[2]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X27_Y25_N1
\T2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2(3),
	o => \T2[3]~input_o\);

-- Location: IOIBUF_X29_Y25_N22
\T2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2(2),
	o => \T2[2]~input_o\);

-- Location: IOIBUF_X31_Y19_N15
\cuenta[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cuenta(2),
	o => \cuenta[2]~input_o\);

-- Location: IOIBUF_X31_Y19_N1
\cuenta[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cuenta(3),
	o => \cuenta[3]~input_o\);

-- Location: LCCOMB_X30_Y21_N10
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\T2[3]~input_o\ & (\cuenta[3]~input_o\ & (\T2[2]~input_o\ $ (!\cuenta[2]~input_o\)))) # (!\T2[3]~input_o\ & (!\cuenta[3]~input_o\ & (\T2[2]~input_o\ $ (!\cuenta[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2[3]~input_o\,
	datab => \T2[2]~input_o\,
	datac => \cuenta[2]~input_o\,
	datad => \cuenta[3]~input_o\,
	combout => \Equal2~1_combout\);

-- Location: IOIBUF_X27_Y25_N29
\T2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2(1),
	o => \T2[1]~input_o\);

-- Location: IOIBUF_X29_Y25_N29
\cuenta[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cuenta(0),
	o => \cuenta[0]~input_o\);

-- Location: IOIBUF_X31_Y15_N1
\T2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2(0),
	o => \T2[0]~input_o\);

-- Location: IOIBUF_X31_Y15_N22
\cuenta[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cuenta(1),
	o => \cuenta[1]~input_o\);

-- Location: LCCOMB_X30_Y21_N0
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\T2[1]~input_o\ & (\cuenta[1]~input_o\ & (\cuenta[0]~input_o\ $ (!\T2[0]~input_o\)))) # (!\T2[1]~input_o\ & (!\cuenta[1]~input_o\ & (\cuenta[0]~input_o\ $ (!\T2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2[1]~input_o\,
	datab => \cuenta[0]~input_o\,
	datac => \T2[0]~input_o\,
	datad => \cuenta[1]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X29_Y25_N8
\T2[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T2(4),
	o => \T2[4]~input_o\);

-- Location: IOIBUF_X31_Y21_N15
\cuenta[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cuenta(4),
	o => \cuenta[4]~input_o\);

-- Location: LCCOMB_X30_Y21_N16
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal2~1_combout\ & (\Equal2~0_combout\ & (\T2[4]~input_o\ $ (!\cuenta[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \T2[4]~input_o\,
	datad => \cuenta[4]~input_o\,
	combout => \Equal2~2_combout\);

-- Location: IOIBUF_X27_Y25_N8
\T1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1(1),
	o => \T1[1]~input_o\);

-- Location: IOIBUF_X31_Y14_N15
\T1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1(0),
	o => \T1[0]~input_o\);

-- Location: LCCOMB_X30_Y21_N8
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\T1[1]~input_o\ & (\cuenta[1]~input_o\ & (\cuenta[0]~input_o\ $ (!\T1[0]~input_o\)))) # (!\T1[1]~input_o\ & (!\cuenta[1]~input_o\ & (\cuenta[0]~input_o\ $ (!\T1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T1[1]~input_o\,
	datab => \cuenta[0]~input_o\,
	datac => \T1[0]~input_o\,
	datad => \cuenta[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X31_Y21_N1
\T1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1(4),
	o => \T1[4]~input_o\);

-- Location: IOIBUF_X29_Y25_N1
\T1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1(3),
	o => \T1[3]~input_o\);

-- Location: IOIBUF_X29_Y25_N15
\T1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1(2),
	o => \T1[2]~input_o\);

-- Location: LCCOMB_X30_Y22_N28
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\T1[3]~input_o\ & (\cuenta[3]~input_o\ & (\T1[2]~input_o\ $ (!\cuenta[2]~input_o\)))) # (!\T1[3]~input_o\ & (!\cuenta[3]~input_o\ & (\T1[2]~input_o\ $ (!\cuenta[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T1[3]~input_o\,
	datab => \T1[2]~input_o\,
	datac => \cuenta[3]~input_o\,
	datad => \cuenta[2]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X30_Y21_N6
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\T1[4]~input_o\ $ (!\cuenta[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \T1[4]~input_o\,
	datac => \Equal1~1_combout\,
	datad => \cuenta[4]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: IOIBUF_X31_Y17_N1
\T0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T0(0),
	o => \T0[0]~input_o\);

-- Location: IOIBUF_X31_Y21_N22
\T0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T0(1),
	o => \T0[1]~input_o\);

-- Location: LCCOMB_X30_Y21_N26
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\T0[0]~input_o\ & (\cuenta[0]~input_o\ & (\cuenta[1]~input_o\ $ (!\T0[1]~input_o\)))) # (!\T0[0]~input_o\ & (!\cuenta[0]~input_o\ & (\cuenta[1]~input_o\ $ (!\T0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T0[0]~input_o\,
	datab => \cuenta[1]~input_o\,
	datac => \T0[1]~input_o\,
	datad => \cuenta[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X31_Y22_N1
\T0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T0(3),
	o => \T0[3]~input_o\);

-- Location: IOIBUF_X31_Y22_N8
\T0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T0(2),
	o => \T0[2]~input_o\);

-- Location: LCCOMB_X30_Y22_N30
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\T0[3]~input_o\ & (\cuenta[3]~input_o\ & (\cuenta[2]~input_o\ $ (!\T0[2]~input_o\)))) # (!\T0[3]~input_o\ & (!\cuenta[3]~input_o\ & (\cuenta[2]~input_o\ $ (!\T0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T0[3]~input_o\,
	datab => \cuenta[2]~input_o\,
	datac => \cuenta[3]~input_o\,
	datad => \T0[2]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X31_Y21_N8
\T0[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T0(4),
	o => \T0[4]~input_o\);

-- Location: LCCOMB_X30_Y21_N20
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\cuenta[4]~input_o\ $ (!\T0[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \cuenta[4]~input_o\,
	datac => \Equal0~1_combout\,
	datad => \T0[4]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X24_Y25_N22
\START~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: IOIBUF_X22_Y25_N22
\T5[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T5(0),
	o => \T5[0]~input_o\);

-- Location: IOIBUF_X31_Y19_N22
\T5[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T5(1),
	o => \T5[1]~input_o\);

-- Location: LCCOMB_X30_Y21_N30
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\T5[0]~input_o\ & (\cuenta[0]~input_o\ & (\T5[1]~input_o\ $ (!\cuenta[1]~input_o\)))) # (!\T5[0]~input_o\ & (!\cuenta[0]~input_o\ & (\T5[1]~input_o\ $ (!\cuenta[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T5[0]~input_o\,
	datab => \cuenta[0]~input_o\,
	datac => \T5[1]~input_o\,
	datad => \cuenta[1]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: IOIBUF_X31_Y22_N22
\T5[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T5(4),
	o => \T5[4]~input_o\);

-- Location: IOIBUF_X31_Y15_N15
\T5[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T5(3),
	o => \T5[3]~input_o\);

-- Location: IOIBUF_X31_Y20_N15
\T5[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T5(2),
	o => \T5[2]~input_o\);

-- Location: LCCOMB_X30_Y21_N28
\Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\T5[3]~input_o\ & (\cuenta[3]~input_o\ & (\T5[2]~input_o\ $ (!\cuenta[2]~input_o\)))) # (!\T5[3]~input_o\ & (!\cuenta[3]~input_o\ & (\T5[2]~input_o\ $ (!\cuenta[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T5[3]~input_o\,
	datab => \T5[2]~input_o\,
	datac => \cuenta[2]~input_o\,
	datad => \cuenta[3]~input_o\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X30_Y21_N14
\Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (\Equal5~0_combout\ & (\Equal5~1_combout\ & (\cuenta[4]~input_o\ $ (!\T5[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \cuenta[4]~input_o\,
	datac => \T5[4]~input_o\,
	datad => \Equal5~1_combout\,
	combout => \Equal5~2_combout\);

-- Location: IOIBUF_X31_Y20_N22
\T4[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T4(4),
	o => \T4[4]~input_o\);

-- Location: IOIBUF_X31_Y22_N15
\T4[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T4(1),
	o => \T4[1]~input_o\);

-- Location: IOIBUF_X27_Y25_N22
\T4[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T4(0),
	o => \T4[0]~input_o\);

-- Location: LCCOMB_X30_Y21_N24
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\T4[1]~input_o\ & (\cuenta[1]~input_o\ & (\T4[0]~input_o\ $ (!\cuenta[0]~input_o\)))) # (!\T4[1]~input_o\ & (!\cuenta[1]~input_o\ & (\T4[0]~input_o\ $ (!\cuenta[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T4[1]~input_o\,
	datab => \cuenta[1]~input_o\,
	datac => \T4[0]~input_o\,
	datad => \cuenta[0]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: IOIBUF_X31_Y17_N22
\T4[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T4(3),
	o => \T4[3]~input_o\);

-- Location: IOIBUF_X31_Y17_N15
\T4[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T4(2),
	o => \T4[2]~input_o\);

-- Location: LCCOMB_X30_Y21_N22
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\T4[3]~input_o\ & (\cuenta[3]~input_o\ & (\T4[2]~input_o\ $ (!\cuenta[2]~input_o\)))) # (!\T4[3]~input_o\ & (!\cuenta[3]~input_o\ & (\T4[2]~input_o\ $ (!\cuenta[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T4[3]~input_o\,
	datab => \T4[2]~input_o\,
	datac => \cuenta[2]~input_o\,
	datad => \cuenta[3]~input_o\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X30_Y21_N4
\Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (\Equal4~0_combout\ & (\Equal4~1_combout\ & (\T4[4]~input_o\ $ (!\cuenta[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T4[4]~input_o\,
	datab => \Equal4~0_combout\,
	datac => \Equal4~1_combout\,
	datad => \cuenta[4]~input_o\,
	combout => \Equal4~2_combout\);

-- Location: IOIBUF_X31_Y17_N8
\T3[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T3(2),
	o => \T3[2]~input_o\);

-- Location: IOIBUF_X27_Y25_N15
\T3[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T3(3),
	o => \T3[3]~input_o\);

-- Location: LCCOMB_X30_Y21_N12
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\T3[2]~input_o\ & (\cuenta[2]~input_o\ & (\T3[3]~input_o\ $ (!\cuenta[3]~input_o\)))) # (!\T3[2]~input_o\ & (!\cuenta[2]~input_o\ & (\T3[3]~input_o\ $ (!\cuenta[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3[2]~input_o\,
	datab => \T3[3]~input_o\,
	datac => \cuenta[2]~input_o\,
	datad => \cuenta[3]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: IOIBUF_X31_Y15_N8
\T3[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T3(0),
	o => \T3[0]~input_o\);

-- Location: IOIBUF_X31_Y19_N8
\T3[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T3(1),
	o => \T3[1]~input_o\);

-- Location: LCCOMB_X30_Y21_N2
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\T3[0]~input_o\ & (\cuenta[0]~input_o\ & (\T3[1]~input_o\ $ (!\cuenta[1]~input_o\)))) # (!\T3[0]~input_o\ & (!\cuenta[0]~input_o\ & (\T3[1]~input_o\ $ (!\cuenta[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T3[0]~input_o\,
	datab => \cuenta[0]~input_o\,
	datac => \T3[1]~input_o\,
	datad => \cuenta[1]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: IOIBUF_X22_Y25_N29
\T3[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T3(4),
	o => \T3[4]~input_o\);

-- Location: LCCOMB_X30_Y21_N18
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\Equal3~1_combout\ & (\Equal3~0_combout\ & (\T3[4]~input_o\ $ (!\cuenta[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal3~0_combout\,
	datac => \T3[4]~input_o\,
	datad => \cuenta[4]~input_o\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X24_Y21_N16
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Equal2~2_combout\ & ((\EDO.S3~q\) # ((!\Equal3~2_combout\ & \EDO.S4~q\)))) # (!\Equal2~2_combout\ & (!\Equal3~2_combout\ & (\EDO.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal3~2_combout\,
	datac => \EDO.S4~q\,
	datad => \EDO.S3~q\,
	combout => \Selector4~0_combout\);

-- Location: IOIBUF_X0_Y6_N22
\RST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X24_Y21_N17
\EDO.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO.S4~q\);

-- Location: LCCOMB_X24_Y21_N18
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Equal4~2_combout\ & (\Equal3~2_combout\ & ((\EDO.S4~q\)))) # (!\Equal4~2_combout\ & ((\EDO.S5~q\) # ((\Equal3~2_combout\ & \EDO.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datab => \Equal3~2_combout\,
	datac => \EDO.S5~q\,
	datad => \EDO.S4~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X24_Y21_N19
\EDO.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO.S5~q\);

-- Location: LCCOMB_X24_Y21_N10
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Equal4~2_combout\ & ((\EDO.S5~q\) # ((!\Equal5~2_combout\ & \EDO.S6~q\)))) # (!\Equal4~2_combout\ & (!\Equal5~2_combout\ & (\EDO.S6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datab => \Equal5~2_combout\,
	datac => \EDO.S6~q\,
	datad => \EDO.S5~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X24_Y21_N11
\EDO.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO.S6~q\);

-- Location: LCCOMB_X24_Y21_N24
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\START~input_o\ & (((!\EDO.S6~q\)) # (!\Equal5~2_combout\))) # (!\START~input_o\ & (\EDO.IDLE~q\ & ((!\EDO.S6~q\) # (!\Equal5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \Equal5~2_combout\,
	datac => \EDO.IDLE~q\,
	datad => \EDO.S6~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X24_Y21_N25
\EDO.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO.IDLE~q\);

-- Location: LCCOMB_X24_Y21_N2
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\START~input_o\ & (((!\Equal0~2_combout\ & \EDO.S1~q\)) # (!\EDO.IDLE~q\))) # (!\START~input_o\ & (!\Equal0~2_combout\ & (\EDO.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \Equal0~2_combout\,
	datac => \EDO.S1~q\,
	datad => \EDO.IDLE~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X24_Y21_N3
\EDO.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO.S1~q\);

-- Location: LCCOMB_X24_Y21_N12
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Equal1~2_combout\ & (\Equal0~2_combout\ & ((\EDO.S1~q\)))) # (!\Equal1~2_combout\ & ((\EDO.S2~q\) # ((\Equal0~2_combout\ & \EDO.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal0~2_combout\,
	datac => \EDO.S2~q\,
	datad => \EDO.S1~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X24_Y21_N13
\EDO.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO.S2~q\);

-- Location: LCCOMB_X24_Y21_N20
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Equal2~2_combout\ & (\Equal1~2_combout\ & ((\EDO.S2~q\)))) # (!\Equal2~2_combout\ & ((\EDO.S3~q\) # ((\Equal1~2_combout\ & \EDO.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal1~2_combout\,
	datac => \EDO.S3~q\,
	datad => \EDO.S2~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X24_Y21_N21
\EDO.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EDO.S3~q\);

-- Location: IOIBUF_X24_Y25_N1
\HORARIO~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HORARIO,
	o => \HORARIO~input_o\);

-- Location: LCCOMB_X24_Y21_N26
\E_O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_O~0_combout\ = (\EDO.S3~q\ & \HORARIO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EDO.S3~q\,
	datad => \HORARIO~input_o\,
	combout => \E_O~0_combout\);

-- Location: LCCOMB_X24_Y21_N8
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\HORARIO~input_o\ & (((\EDO.S2~q\)))) # (!\HORARIO~input_o\ & ((\EDO.S5~q\) # ((\EDO.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDO.S5~q\,
	datab => \EDO.S3~q\,
	datac => \EDO.S2~q\,
	datad => \HORARIO~input_o\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X24_Y21_N28
\Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((\EDO.S1~q\ & !\HORARIO~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDO.S1~q\,
	datac => \Selector7~0_combout\,
	datad => \HORARIO~input_o\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X24_Y21_N22
\E_O~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_O~1_combout\ = (\HORARIO~input_o\ & ((\EDO.S6~q\) # ((\EDO.S4~q\) # (\EDO.S5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDO.S6~q\,
	datab => \EDO.S4~q\,
	datac => \EDO.S5~q\,
	datad => \HORARIO~input_o\,
	combout => \E_O~1_combout\);

-- Location: LCCOMB_X24_Y21_N4
\E_O~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \E_O~2_combout\ = (\EDO.S1~q\ & \HORARIO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EDO.S1~q\,
	datad => \HORARIO~input_o\,
	combout => \E_O~2_combout\);

-- Location: LCCOMB_X25_Y21_N4
\O_E~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \O_E~0_combout\ = (\EDO.S6~q\ & \HORARIO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDO.S6~q\,
	datad => \HORARIO~input_o\,
	combout => \O_E~0_combout\);

-- Location: LCCOMB_X24_Y21_N14
\O_E~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \O_E~1_combout\ = (\HORARIO~input_o\ & ((\EDO.S3~q\) # ((\EDO.S5~q\) # (\EDO.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HORARIO~input_o\,
	datab => \EDO.S3~q\,
	datac => \EDO.S5~q\,
	datad => \EDO.S4~q\,
	combout => \O_E~1_combout\);

-- Location: LCCOMB_X24_Y21_N0
\N_S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \N_S~0_combout\ = (\EDO.S4~q\ & \HORARIO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EDO.S4~q\,
	datad => \HORARIO~input_o\,
	combout => \N_S~0_combout\);

-- Location: LCCOMB_X24_Y21_N30
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\EDO.S5~q\) # ((!\HORARIO~input_o\ & ((\EDO.S1~q\) # (\EDO.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDO.S1~q\,
	datab => \EDO.S3~q\,
	datac => \EDO.S5~q\,
	datad => \HORARIO~input_o\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X24_Y21_N6
\N_S~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \N_S~1_combout\ = (\EDO.IDLE~q\ & (!\EDO.S4~q\ & (!\EDO.S5~q\ & \HORARIO~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EDO.IDLE~q\,
	datab => \EDO.S4~q\,
	datac => \EDO.S5~q\,
	datad => \HORARIO~input_o\,
	combout => \N_S~1_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_E_O(0) <= \E_O[0]~output_o\;

ww_E_O(1) <= \E_O[1]~output_o\;

ww_E_O(2) <= \E_O[2]~output_o\;

ww_E_O(3) <= \E_O[3]~output_o\;

ww_O_E(0) <= \O_E[0]~output_o\;

ww_O_E(1) <= \O_E[1]~output_o\;

ww_O_E(2) <= \O_E[2]~output_o\;

ww_O_E(3) <= \O_E[3]~output_o\;

ww_N_S(0) <= \N_S[0]~output_o\;

ww_N_S(1) <= \N_S[1]~output_o\;

ww_N_S(2) <= \N_S[2]~output_o\;

ww_S_N(0) <= \S_N[0]~output_o\;

ww_S_N(1) <= \S_N[1]~output_o\;

ww_S_N(2) <= \S_N[2]~output_o\;
END structure;


