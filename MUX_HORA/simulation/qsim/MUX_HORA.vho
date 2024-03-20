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

-- DATE "02/29/2024 23:36:16"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MUX_HORA IS
    PORT (
	CASO : IN std_logic_vector(2 DOWNTO 0);
	T0 : BUFFER std_logic_vector(4 DOWNTO 0);
	T1 : BUFFER std_logic_vector(4 DOWNTO 0);
	T2 : BUFFER std_logic_vector(4 DOWNTO 0);
	T3 : BUFFER std_logic_vector(4 DOWNTO 0);
	T4 : BUFFER std_logic_vector(4 DOWNTO 0);
	T5 : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END MUX_HORA;

-- Design Ports Information
-- T0[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T0[1]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T0[2]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T0[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T0[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1[0]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1[2]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1[3]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1[4]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2[3]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3[1]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3[2]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3[3]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4[4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CASO[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CASO[0]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CASO[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MUX_HORA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CASO : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_T0 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_T1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_T2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_T3 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_T4 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_T5 : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mux11~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \T0[0]~output_o\ : std_logic;
SIGNAL \T0[1]~output_o\ : std_logic;
SIGNAL \T0[2]~output_o\ : std_logic;
SIGNAL \T0[3]~output_o\ : std_logic;
SIGNAL \T0[4]~output_o\ : std_logic;
SIGNAL \T1[0]~output_o\ : std_logic;
SIGNAL \T1[1]~output_o\ : std_logic;
SIGNAL \T1[2]~output_o\ : std_logic;
SIGNAL \T1[3]~output_o\ : std_logic;
SIGNAL \T1[4]~output_o\ : std_logic;
SIGNAL \T2[0]~output_o\ : std_logic;
SIGNAL \T2[1]~output_o\ : std_logic;
SIGNAL \T2[2]~output_o\ : std_logic;
SIGNAL \T2[3]~output_o\ : std_logic;
SIGNAL \T2[4]~output_o\ : std_logic;
SIGNAL \T3[0]~output_o\ : std_logic;
SIGNAL \T3[1]~output_o\ : std_logic;
SIGNAL \T3[2]~output_o\ : std_logic;
SIGNAL \T3[3]~output_o\ : std_logic;
SIGNAL \T3[4]~output_o\ : std_logic;
SIGNAL \T4[0]~output_o\ : std_logic;
SIGNAL \T4[1]~output_o\ : std_logic;
SIGNAL \T4[2]~output_o\ : std_logic;
SIGNAL \T4[3]~output_o\ : std_logic;
SIGNAL \T4[4]~output_o\ : std_logic;
SIGNAL \T5[0]~output_o\ : std_logic;
SIGNAL \T5[1]~output_o\ : std_logic;
SIGNAL \T5[2]~output_o\ : std_logic;
SIGNAL \T5[3]~output_o\ : std_logic;
SIGNAL \T5[4]~output_o\ : std_logic;
SIGNAL \CASO[1]~input_o\ : std_logic;
SIGNAL \CASO[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \CASO[2]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~0clkctrl_outclk\ : std_logic;
SIGNAL \T0[0]$latch~combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \T0[1]$latch~combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \T0[2]$latch~combout\ : std_logic;
SIGNAL \T0[3]$latch~combout\ : std_logic;
SIGNAL \T1[0]$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \T2[0]$latch~combout\ : std_logic;
SIGNAL \T2[1]$latch~combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \T2[4]$latch~combout\ : std_logic;
SIGNAL \T4[1]$latch~combout\ : std_logic;
SIGNAL \T4[2]$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CASO <= CASO;
T0 <= ww_T0;
T1 <= ww_T1;
T2 <= ww_T2;
T3 <= ww_T3;
T4 <= ww_T4;
T5 <= ww_T5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Mux11~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux11~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y16_N24
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

-- Location: IOOBUF_X31_Y7_N2
\T0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T0[0]$latch~combout\,
	devoe => ww_devoe,
	o => \T0[0]~output_o\);

-- Location: IOOBUF_X31_Y6_N23
\T0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T0[1]$latch~combout\,
	devoe => ww_devoe,
	o => \T0[1]~output_o\);

-- Location: IOOBUF_X31_Y13_N16
\T0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T0[2]$latch~combout\,
	devoe => ww_devoe,
	o => \T0[2]~output_o\);

-- Location: IOOBUF_X31_Y12_N2
\T0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T0[3]$latch~combout\,
	devoe => ww_devoe,
	o => \T0[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\T0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \T0[4]~output_o\);

-- Location: IOOBUF_X31_Y11_N2
\T1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \T1[0]~output_o\);

-- Location: IOOBUF_X31_Y7_N16
\T1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T0[0]$latch~combout\,
	devoe => ww_devoe,
	o => \T1[1]~output_o\);

-- Location: IOOBUF_X31_Y12_N9
\T1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T0[3]$latch~combout\,
	devoe => ww_devoe,
	o => \T1[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\T1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \T1[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\T1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \T1[4]~output_o\);

-- Location: IOOBUF_X31_Y9_N16
\T2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \T2[0]~output_o\);

-- Location: IOOBUF_X31_Y9_N9
\T2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \T2[1]~output_o\);

-- Location: IOOBUF_X31_Y7_N23
\T2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T0[1]$latch~combout\,
	devoe => ww_devoe,
	o => \T2[2]~output_o\);

-- Location: IOOBUF_X31_Y6_N2
\T2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T0[1]$latch~combout\,
	devoe => ww_devoe,
	o => \T2[3]~output_o\);

-- Location: IOOBUF_X31_Y11_N23
\T2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T2[4]$latch~combout\,
	devoe => ww_devoe,
	o => \T2[4]~output_o\);

-- Location: IOOBUF_X31_Y13_N9
\T3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T0[2]$latch~combout\,
	devoe => ww_devoe,
	o => \T3[0]~output_o\);

-- Location: IOOBUF_X31_Y6_N9
\T3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T0[1]$latch~combout\,
	devoe => ww_devoe,
	o => \T3[1]~output_o\);

-- Location: IOOBUF_X31_Y13_N23
\T3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T0[2]$latch~combout\,
	devoe => ww_devoe,
	o => \T3[2]~output_o\);

-- Location: IOOBUF_X31_Y12_N23
\T3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T0[3]$latch~combout\,
	devoe => ww_devoe,
	o => \T3[3]~output_o\);

-- Location: IOOBUF_X31_Y12_N16
\T3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \T3[4]~output_o\);

-- Location: IOOBUF_X31_Y11_N16
\T4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \T4[0]~output_o\);

-- Location: IOOBUF_X31_Y7_N9
\T4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T4[1]$latch~combout\,
	devoe => ww_devoe,
	o => \T4[1]~output_o\);

-- Location: IOOBUF_X31_Y9_N23
\T4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T4[2]$latch~combout\,
	devoe => ww_devoe,
	o => \T4[2]~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\T4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \T4[3]~output_o\);

-- Location: IOOBUF_X10_Y16_N9
\T4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \T4[4]~output_o\);

-- Location: IOOBUF_X19_Y25_N23
\T5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \T5[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\T5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \T5[1]~output_o\);

-- Location: IOOBUF_X10_Y20_N2
\T5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \T5[2]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\T5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \T5[3]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\T5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \T5[4]~output_o\);

-- Location: IOIBUF_X31_Y6_N15
\CASO[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CASO(1),
	o => \CASO[1]~input_o\);

-- Location: IOIBUF_X31_Y9_N1
\CASO[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CASO(0),
	o => \CASO[0]~input_o\);

-- Location: LCCOMB_X30_Y9_N6
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\CASO[1]~input_o\ & !\CASO[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CASO[1]~input_o\,
	datac => \CASO[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X31_Y11_N8
\CASO[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CASO(2),
	o => \CASO[2]~input_o\);

-- Location: LCCOMB_X30_Y9_N2
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ((!\CASO[1]~input_o\ & !\CASO[0]~input_o\)) # (!\CASO[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CASO[1]~input_o\,
	datac => \CASO[2]~input_o\,
	datad => \CASO[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: CLKCTRL_G8
\Mux11~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux11~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux11~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y9_N22
\T0[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T0[0]$latch~combout\ = (GLOBAL(\Mux11~0clkctrl_outclk\) & (!\Mux7~0_combout\)) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((\T0[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datac => \T0[0]$latch~combout\,
	datad => \Mux11~0clkctrl_outclk\,
	combout => \T0[0]$latch~combout\);

-- Location: LCCOMB_X30_Y9_N28
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\CASO[2]~input_o\) # ((\CASO[0]~input_o\ & \CASO[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CASO[0]~input_o\,
	datac => \CASO[2]~input_o\,
	datad => \CASO[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X30_Y9_N0
\T0[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T0[1]$latch~combout\ = (GLOBAL(\Mux11~0clkctrl_outclk\) & (\Mux8~0_combout\)) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((\T0[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \T0[1]$latch~combout\,
	datad => \Mux11~0clkctrl_outclk\,
	combout => \T0[1]$latch~combout\);

-- Location: LCCOMB_X30_Y9_N18
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = \CASO[0]~input_o\ $ (\CASO[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CASO[0]~input_o\,
	datac => \CASO[1]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X30_Y9_N4
\T0[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T0[2]$latch~combout\ = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((!\Mux9~0_combout\))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (\T0[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T0[2]$latch~combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux11~0clkctrl_outclk\,
	combout => \T0[2]$latch~combout\);

-- Location: LCCOMB_X30_Y9_N26
\T0[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T0[3]$latch~combout\ = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((\Mux9~0_combout\))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (\T0[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T0[3]$latch~combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux11~0clkctrl_outclk\,
	combout => \T0[3]$latch~combout\);

-- Location: LCCOMB_X30_Y9_N16
\T1[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T1[0]$latch~combout\ = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((\CASO[1]~input_o\))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (\T1[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T1[0]$latch~combout\,
	datac => \CASO[1]~input_o\,
	datad => \Mux11~0clkctrl_outclk\,
	combout => \T1[0]$latch~combout\);

-- Location: LCCOMB_X30_Y9_N24
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\CASO[2]~input_o\ & (!\CASO[0]~input_o\ & !\CASO[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CASO[2]~input_o\,
	datac => \CASO[0]~input_o\,
	datad => \CASO[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X30_Y9_N10
\T2[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T2[0]$latch~combout\ = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((!\Mux2~0_combout\))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (\T2[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2[0]$latch~combout\,
	datab => \Mux2~0_combout\,
	datad => \Mux11~0clkctrl_outclk\,
	combout => \T2[0]$latch~combout\);

-- Location: LCCOMB_X30_Y9_N12
\T2[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T2[1]$latch~combout\ = (GLOBAL(\Mux11~0clkctrl_outclk\) & ((\CASO[0]~input_o\))) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & (\T2[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T2[1]$latch~combout\,
	datab => \CASO[0]~input_o\,
	datad => \Mux11~0clkctrl_outclk\,
	combout => \T2[1]$latch~combout\);

-- Location: LCCOMB_X30_Y9_N30
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\CASO[0]~input_o\ & \CASO[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CASO[0]~input_o\,
	datac => \CASO[1]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X30_Y9_N14
\T2[4]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T2[4]$latch~combout\ = (GLOBAL(\Mux11~0clkctrl_outclk\) & (!\Mux8~1_combout\)) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((\T2[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datac => \T2[4]$latch~combout\,
	datad => \Mux11~0clkctrl_outclk\,
	combout => \T2[4]$latch~combout\);

-- Location: LCCOMB_X30_Y9_N8
\T4[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T4[1]$latch~combout\ = (GLOBAL(\Mux11~0clkctrl_outclk\) & (!\CASO[2]~input_o\)) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((\T4[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CASO[2]~input_o\,
	datac => \T4[1]$latch~combout\,
	datad => \Mux11~0clkctrl_outclk\,
	combout => \T4[1]$latch~combout\);

-- Location: LCCOMB_X30_Y9_N20
\T4[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T4[2]$latch~combout\ = (GLOBAL(\Mux11~0clkctrl_outclk\) & (\CASO[2]~input_o\)) # (!GLOBAL(\Mux11~0clkctrl_outclk\) & ((\T4[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CASO[2]~input_o\,
	datab => \T4[2]$latch~combout\,
	datad => \Mux11~0clkctrl_outclk\,
	combout => \T4[2]$latch~combout\);

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

ww_T0(0) <= \T0[0]~output_o\;

ww_T0(1) <= \T0[1]~output_o\;

ww_T0(2) <= \T0[2]~output_o\;

ww_T0(3) <= \T0[3]~output_o\;

ww_T0(4) <= \T0[4]~output_o\;

ww_T1(0) <= \T1[0]~output_o\;

ww_T1(1) <= \T1[1]~output_o\;

ww_T1(2) <= \T1[2]~output_o\;

ww_T1(3) <= \T1[3]~output_o\;

ww_T1(4) <= \T1[4]~output_o\;

ww_T2(0) <= \T2[0]~output_o\;

ww_T2(1) <= \T2[1]~output_o\;

ww_T2(2) <= \T2[2]~output_o\;

ww_T2(3) <= \T2[3]~output_o\;

ww_T2(4) <= \T2[4]~output_o\;

ww_T3(0) <= \T3[0]~output_o\;

ww_T3(1) <= \T3[1]~output_o\;

ww_T3(2) <= \T3[2]~output_o\;

ww_T3(3) <= \T3[3]~output_o\;

ww_T3(4) <= \T3[4]~output_o\;

ww_T4(0) <= \T4[0]~output_o\;

ww_T4(1) <= \T4[1]~output_o\;

ww_T4(2) <= \T4[2]~output_o\;

ww_T4(3) <= \T4[3]~output_o\;

ww_T4(4) <= \T4[4]~output_o\;

ww_T5(0) <= \T5[0]~output_o\;

ww_T5(1) <= \T5[1]~output_o\;

ww_T5(2) <= \T5[2]~output_o\;

ww_T5(3) <= \T5[3]~output_o\;

ww_T5(4) <= \T5[4]~output_o\;
END structure;


