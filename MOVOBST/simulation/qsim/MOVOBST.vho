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

-- DATE "03/11/2024 17:49:16"

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

ENTITY 	MOVOBST IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	ST : IN std_logic;
	valor : OUT std_logic_vector(9 DOWNTO 0);
	valor2 : OUT std_logic_vector(9 DOWNTO 0)
	);
END MOVOBST;

-- Design Ports Information
-- valor[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[4]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[8]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[9]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[3]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[4]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[6]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[7]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[8]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[9]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ST	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MOVOBST IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ST : std_logic;
SIGNAL ww_valor : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_valor2 : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \valor[0]~output_o\ : std_logic;
SIGNAL \valor[1]~output_o\ : std_logic;
SIGNAL \valor[2]~output_o\ : std_logic;
SIGNAL \valor[3]~output_o\ : std_logic;
SIGNAL \valor[4]~output_o\ : std_logic;
SIGNAL \valor[5]~output_o\ : std_logic;
SIGNAL \valor[6]~output_o\ : std_logic;
SIGNAL \valor[7]~output_o\ : std_logic;
SIGNAL \valor[8]~output_o\ : std_logic;
SIGNAL \valor[9]~output_o\ : std_logic;
SIGNAL \valor2[0]~output_o\ : std_logic;
SIGNAL \valor2[1]~output_o\ : std_logic;
SIGNAL \valor2[2]~output_o\ : std_logic;
SIGNAL \valor2[3]~output_o\ : std_logic;
SIGNAL \valor2[4]~output_o\ : std_logic;
SIGNAL \valor2[5]~output_o\ : std_logic;
SIGNAL \valor2[6]~output_o\ : std_logic;
SIGNAL \valor2[7]~output_o\ : std_logic;
SIGNAL \valor2[8]~output_o\ : std_logic;
SIGNAL \valor2[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \valor_int[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \valor_int[0]~11\ : std_logic;
SIGNAL \valor_int[1]~16_combout\ : std_logic;
SIGNAL \valor_int[1]~17\ : std_logic;
SIGNAL \valor_int[2]~18_combout\ : std_logic;
SIGNAL \valor_int[2]~19\ : std_logic;
SIGNAL \valor_int[3]~20_combout\ : std_logic;
SIGNAL \valor_int[3]~21\ : std_logic;
SIGNAL \valor_int[4]~22_combout\ : std_logic;
SIGNAL \valor_int[4]~23\ : std_logic;
SIGNAL \valor_int[5]~24_combout\ : std_logic;
SIGNAL \ST~input_o\ : std_logic;
SIGNAL \valor_int[5]~25\ : std_logic;
SIGNAL \valor_int[6]~26_combout\ : std_logic;
SIGNAL \valor_int[6]~27\ : std_logic;
SIGNAL \valor_int[7]~28_combout\ : std_logic;
SIGNAL \valor_int[7]~29\ : std_logic;
SIGNAL \valor_int[8]~30_combout\ : std_logic;
SIGNAL \valor_int[8]~31\ : std_logic;
SIGNAL \valor_int[9]~32_combout\ : std_logic;
SIGNAL \valor_int[0]~12_combout\ : std_logic;
SIGNAL \valor_int[0]~13_combout\ : std_logic;
SIGNAL \valor_int[0]~14_combout\ : std_logic;
SIGNAL \valor_int[0]~15_combout\ : std_logic;
SIGNAL \valor_int2[0]~10_combout\ : std_logic;
SIGNAL \valor_int2[0]~11\ : std_logic;
SIGNAL \valor_int2[1]~16_combout\ : std_logic;
SIGNAL \valor_int2[1]~17\ : std_logic;
SIGNAL \valor_int2[2]~18_combout\ : std_logic;
SIGNAL \valor_int2[2]~19\ : std_logic;
SIGNAL \valor_int2[3]~20_combout\ : std_logic;
SIGNAL \valor_int2[3]~21\ : std_logic;
SIGNAL \valor_int2[4]~22_combout\ : std_logic;
SIGNAL \valor_int2[4]~23\ : std_logic;
SIGNAL \valor_int2[5]~24_combout\ : std_logic;
SIGNAL \valor_int2[5]~25\ : std_logic;
SIGNAL \valor_int2[6]~26_combout\ : std_logic;
SIGNAL \valor_int2[6]~27\ : std_logic;
SIGNAL \valor_int2[7]~28_combout\ : std_logic;
SIGNAL \valor_int2[7]~29\ : std_logic;
SIGNAL \valor_int2[8]~30_combout\ : std_logic;
SIGNAL \valor_int2[8]~31\ : std_logic;
SIGNAL \valor_int2[9]~32_combout\ : std_logic;
SIGNAL \valor_int2[0]~13_combout\ : std_logic;
SIGNAL \valor_int2[0]~12_combout\ : std_logic;
SIGNAL \valor_int2[0]~14_combout\ : std_logic;
SIGNAL \valor_int2[0]~15_combout\ : std_logic;
SIGNAL valor_int : std_logic_vector(9 DOWNTO 0);
SIGNAL valor_int2 : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL ALT_INV_valor_int2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ALT_INV_valor_int : std_logic_vector(5 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_ST <= ST;
valor <= ww_valor;
valor2 <= ww_valor2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
ALT_INV_valor_int2(6) <= NOT valor_int2(6);
ALT_INV_valor_int2(5) <= NOT valor_int2(5);
ALT_INV_valor_int2(4) <= NOT valor_int2(4);
ALT_INV_valor_int2(1) <= NOT valor_int2(1);
ALT_INV_valor_int2(0) <= NOT valor_int2(0);
ALT_INV_valor_int(5) <= NOT valor_int(5);
ALT_INV_valor_int(1) <= NOT valor_int(1);
ALT_INV_valor_int(0) <= NOT valor_int(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y25_N2
\valor[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_valor_int(0),
	devoe => ww_devoe,
	o => \valor[0]~output_o\);

-- Location: IOOBUF_X10_Y20_N2
\valor[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_valor_int(1),
	devoe => ww_devoe,
	o => \valor[1]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\valor[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int(2),
	devoe => ww_devoe,
	o => \valor[2]~output_o\);

-- Location: IOOBUF_X13_Y25_N23
\valor[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int(3),
	devoe => ww_devoe,
	o => \valor[3]~output_o\);

-- Location: IOOBUF_X11_Y25_N16
\valor[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int(4),
	devoe => ww_devoe,
	o => \valor[4]~output_o\);

-- Location: IOOBUF_X15_Y25_N30
\valor[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_valor_int(5),
	devoe => ww_devoe,
	o => \valor[5]~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\valor[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int(6),
	devoe => ww_devoe,
	o => \valor[6]~output_o\);

-- Location: IOOBUF_X13_Y25_N16
\valor[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int(7),
	devoe => ww_devoe,
	o => \valor[7]~output_o\);

-- Location: IOOBUF_X15_Y25_N9
\valor[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int(8),
	devoe => ww_devoe,
	o => \valor[8]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\valor[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int(9),
	devoe => ww_devoe,
	o => \valor[9]~output_o\);

-- Location: IOOBUF_X11_Y25_N30
\valor2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_valor_int2(0),
	devoe => ww_devoe,
	o => \valor2[0]~output_o\);

-- Location: IOOBUF_X10_Y20_N16
\valor2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_valor_int2(1),
	devoe => ww_devoe,
	o => \valor2[1]~output_o\);

-- Location: IOOBUF_X11_Y25_N23
\valor2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int2(2),
	devoe => ww_devoe,
	o => \valor2[2]~output_o\);

-- Location: IOOBUF_X10_Y22_N16
\valor2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int2(3),
	devoe => ww_devoe,
	o => \valor2[3]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\valor2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_valor_int2(4),
	devoe => ww_devoe,
	o => \valor2[4]~output_o\);

-- Location: IOOBUF_X10_Y21_N9
\valor2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_valor_int2(5),
	devoe => ww_devoe,
	o => \valor2[5]~output_o\);

-- Location: IOOBUF_X10_Y20_N9
\valor2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_valor_int2(6),
	devoe => ww_devoe,
	o => \valor2[6]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\valor2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int2(7),
	devoe => ww_devoe,
	o => \valor2[7]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\valor2[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int2(8),
	devoe => ww_devoe,
	o => \valor2[8]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\valor2[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int2(9),
	devoe => ww_devoe,
	o => \valor2[9]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y21_N10
\valor_int[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[0]~10_combout\ = !valor_int(0)
-- \valor_int[0]~11\ = CARRY(!valor_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(0),
	combout => \valor_int[0]~10_combout\,
	cout => \valor_int[0]~11\);

-- Location: LCCOMB_X13_Y21_N8
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X0_Y6_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y21_N12
\valor_int[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[1]~16_combout\ = (valor_int(1) & ((GND) # (!\valor_int[0]~11\))) # (!valor_int(1) & (\valor_int[0]~11\ $ (GND)))
-- \valor_int[1]~17\ = CARRY((valor_int(1)) # (!\valor_int[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(1),
	datad => VCC,
	cin => \valor_int[0]~11\,
	combout => \valor_int[1]~16_combout\,
	cout => \valor_int[1]~17\);

-- Location: FF_X13_Y21_N13
\valor_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[1]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(1));

-- Location: LCCOMB_X13_Y21_N14
\valor_int[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[2]~18_combout\ = (valor_int(2) & (\valor_int[1]~17\ $ (GND))) # (!valor_int(2) & (!\valor_int[1]~17\ & VCC))
-- \valor_int[2]~19\ = CARRY((valor_int(2) & !\valor_int[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(2),
	datad => VCC,
	cin => \valor_int[1]~17\,
	combout => \valor_int[2]~18_combout\,
	cout => \valor_int[2]~19\);

-- Location: FF_X13_Y21_N15
\valor_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[2]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(2));

-- Location: LCCOMB_X13_Y21_N16
\valor_int[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[3]~20_combout\ = (valor_int(3) & (!\valor_int[2]~19\)) # (!valor_int(3) & ((\valor_int[2]~19\) # (GND)))
-- \valor_int[3]~21\ = CARRY((!\valor_int[2]~19\) # (!valor_int(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int(3),
	datad => VCC,
	cin => \valor_int[2]~19\,
	combout => \valor_int[3]~20_combout\,
	cout => \valor_int[3]~21\);

-- Location: FF_X13_Y21_N17
\valor_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[3]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(3));

-- Location: LCCOMB_X13_Y21_N18
\valor_int[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[4]~22_combout\ = (valor_int(4) & (\valor_int[3]~21\ $ (GND))) # (!valor_int(4) & (!\valor_int[3]~21\ & VCC))
-- \valor_int[4]~23\ = CARRY((valor_int(4) & !\valor_int[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(4),
	datad => VCC,
	cin => \valor_int[3]~21\,
	combout => \valor_int[4]~22_combout\,
	cout => \valor_int[4]~23\);

-- Location: FF_X13_Y21_N19
\valor_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[4]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(4));

-- Location: LCCOMB_X13_Y21_N20
\valor_int[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[5]~24_combout\ = (valor_int(5) & ((GND) # (!\valor_int[4]~23\))) # (!valor_int(5) & (\valor_int[4]~23\ $ (GND)))
-- \valor_int[5]~25\ = CARRY((valor_int(5)) # (!\valor_int[4]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(5),
	datad => VCC,
	cin => \valor_int[4]~23\,
	combout => \valor_int[5]~24_combout\,
	cout => \valor_int[5]~25\);

-- Location: IOIBUF_X10_Y21_N22
\ST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ST,
	o => \ST~input_o\);

-- Location: FF_X13_Y21_N21
\valor_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[5]~24_combout\,
	asdata => \ST~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(5));

-- Location: LCCOMB_X13_Y21_N22
\valor_int[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[6]~26_combout\ = (valor_int(6) & (\valor_int[5]~25\ $ (GND))) # (!valor_int(6) & (!\valor_int[5]~25\ & VCC))
-- \valor_int[6]~27\ = CARRY((valor_int(6) & !\valor_int[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int(6),
	datad => VCC,
	cin => \valor_int[5]~25\,
	combout => \valor_int[6]~26_combout\,
	cout => \valor_int[6]~27\);

-- Location: FF_X13_Y21_N23
\valor_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[6]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(6));

-- Location: LCCOMB_X13_Y21_N24
\valor_int[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[7]~28_combout\ = (valor_int(7) & (!\valor_int[6]~27\)) # (!valor_int(7) & ((\valor_int[6]~27\) # (GND)))
-- \valor_int[7]~29\ = CARRY((!\valor_int[6]~27\) # (!valor_int(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(7),
	datad => VCC,
	cin => \valor_int[6]~27\,
	combout => \valor_int[7]~28_combout\,
	cout => \valor_int[7]~29\);

-- Location: FF_X13_Y21_N25
\valor_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[7]~28_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(7));

-- Location: LCCOMB_X13_Y21_N26
\valor_int[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[8]~30_combout\ = (valor_int(8) & (\valor_int[7]~29\ $ (GND))) # (!valor_int(8) & (!\valor_int[7]~29\ & VCC))
-- \valor_int[8]~31\ = CARRY((valor_int(8) & !\valor_int[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(8),
	datad => VCC,
	cin => \valor_int[7]~29\,
	combout => \valor_int[8]~30_combout\,
	cout => \valor_int[8]~31\);

-- Location: FF_X13_Y21_N27
\valor_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[8]~30_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(8));

-- Location: LCCOMB_X13_Y21_N28
\valor_int[9]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[9]~32_combout\ = valor_int(9) $ (\valor_int[8]~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(9),
	cin => \valor_int[8]~31\,
	combout => \valor_int[9]~32_combout\);

-- Location: FF_X13_Y21_N29
\valor_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[9]~32_combout\,
	asdata => \ST~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(9));

-- Location: LCCOMB_X13_Y21_N4
\valor_int[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[0]~12_combout\ = (\ST~input_o\ & (!valor_int(2) & ((valor_int(0)) # (valor_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(0),
	datab => \ST~input_o\,
	datac => valor_int(2),
	datad => valor_int(1),
	combout => \valor_int[0]~12_combout\);

-- Location: LCCOMB_X13_Y21_N6
\valor_int[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[0]~13_combout\ = (valor_int(5) & (!valor_int(4) & (!valor_int(6) & !valor_int(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(5),
	datab => valor_int(4),
	datac => valor_int(6),
	datad => valor_int(3),
	combout => \valor_int[0]~13_combout\);

-- Location: LCCOMB_X13_Y21_N0
\valor_int[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[0]~14_combout\ = (!valor_int(7) & (!valor_int(8) & (\valor_int[0]~12_combout\ & \valor_int[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(7),
	datab => valor_int(8),
	datac => \valor_int[0]~12_combout\,
	datad => \valor_int[0]~13_combout\,
	combout => \valor_int[0]~14_combout\);

-- Location: LCCOMB_X13_Y21_N2
\valor_int[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[0]~15_combout\ = (!\valor_int[0]~14_combout\ & ((valor_int(9)) # (!\ST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(9),
	datac => \ST~input_o\,
	datad => \valor_int[0]~14_combout\,
	combout => \valor_int[0]~15_combout\);

-- Location: FF_X13_Y21_N11
\valor_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[0]~10_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(0));

-- Location: LCCOMB_X11_Y21_N6
\valor_int2[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[0]~10_combout\ = !valor_int2(0)
-- \valor_int2[0]~11\ = CARRY(!valor_int2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(0),
	combout => \valor_int2[0]~10_combout\,
	cout => \valor_int2[0]~11\);

-- Location: LCCOMB_X11_Y21_N8
\valor_int2[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[1]~16_combout\ = (valor_int2(1) & ((GND) # (!\valor_int2[0]~11\))) # (!valor_int2(1) & (\valor_int2[0]~11\ $ (GND)))
-- \valor_int2[1]~17\ = CARRY((valor_int2(1)) # (!\valor_int2[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(1),
	datad => VCC,
	cin => \valor_int2[0]~11\,
	combout => \valor_int2[1]~16_combout\,
	cout => \valor_int2[1]~17\);

-- Location: FF_X11_Y21_N9
\valor_int2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2[1]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(1));

-- Location: LCCOMB_X11_Y21_N10
\valor_int2[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[2]~18_combout\ = (valor_int2(2) & (\valor_int2[1]~17\ $ (GND))) # (!valor_int2(2) & (!\valor_int2[1]~17\ & VCC))
-- \valor_int2[2]~19\ = CARRY((valor_int2(2) & !\valor_int2[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(2),
	datad => VCC,
	cin => \valor_int2[1]~17\,
	combout => \valor_int2[2]~18_combout\,
	cout => \valor_int2[2]~19\);

-- Location: FF_X11_Y21_N11
\valor_int2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2[2]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(2));

-- Location: LCCOMB_X11_Y21_N12
\valor_int2[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[3]~20_combout\ = (valor_int2(3) & (!\valor_int2[2]~19\)) # (!valor_int2(3) & ((\valor_int2[2]~19\) # (GND)))
-- \valor_int2[3]~21\ = CARRY((!\valor_int2[2]~19\) # (!valor_int2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(3),
	datad => VCC,
	cin => \valor_int2[2]~19\,
	combout => \valor_int2[3]~20_combout\,
	cout => \valor_int2[3]~21\);

-- Location: FF_X11_Y21_N13
\valor_int2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2[3]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(3));

-- Location: LCCOMB_X11_Y21_N14
\valor_int2[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[4]~22_combout\ = (valor_int2(4) & (\valor_int2[3]~21\ & VCC)) # (!valor_int2(4) & (!\valor_int2[3]~21\))
-- \valor_int2[4]~23\ = CARRY((!valor_int2(4) & !\valor_int2[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(4),
	datad => VCC,
	cin => \valor_int2[3]~21\,
	combout => \valor_int2[4]~22_combout\,
	cout => \valor_int2[4]~23\);

-- Location: FF_X11_Y21_N15
\valor_int2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2[4]~22_combout\,
	asdata => \ST~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(4));

-- Location: LCCOMB_X11_Y21_N16
\valor_int2[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[5]~24_combout\ = (valor_int2(5) & ((GND) # (!\valor_int2[4]~23\))) # (!valor_int2(5) & (\valor_int2[4]~23\ $ (GND)))
-- \valor_int2[5]~25\ = CARRY((valor_int2(5)) # (!\valor_int2[4]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(5),
	datad => VCC,
	cin => \valor_int2[4]~23\,
	combout => \valor_int2[5]~24_combout\,
	cout => \valor_int2[5]~25\);

-- Location: FF_X11_Y21_N17
\valor_int2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2[5]~24_combout\,
	asdata => \ST~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(5));

-- Location: LCCOMB_X11_Y21_N18
\valor_int2[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[6]~26_combout\ = (valor_int2(6) & (\valor_int2[5]~25\ & VCC)) # (!valor_int2(6) & (!\valor_int2[5]~25\))
-- \valor_int2[6]~27\ = CARRY((!valor_int2(6) & !\valor_int2[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(6),
	datad => VCC,
	cin => \valor_int2[5]~25\,
	combout => \valor_int2[6]~26_combout\,
	cout => \valor_int2[6]~27\);

-- Location: FF_X11_Y21_N19
\valor_int2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2[6]~26_combout\,
	asdata => \ST~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(6));

-- Location: LCCOMB_X11_Y21_N20
\valor_int2[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[7]~28_combout\ = (valor_int2(7) & (!\valor_int2[6]~27\)) # (!valor_int2(7) & ((\valor_int2[6]~27\) # (GND)))
-- \valor_int2[7]~29\ = CARRY((!\valor_int2[6]~27\) # (!valor_int2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(7),
	datad => VCC,
	cin => \valor_int2[6]~27\,
	combout => \valor_int2[7]~28_combout\,
	cout => \valor_int2[7]~29\);

-- Location: FF_X11_Y21_N21
\valor_int2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2[7]~28_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(7));

-- Location: LCCOMB_X11_Y21_N22
\valor_int2[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[8]~30_combout\ = (valor_int2(8) & (\valor_int2[7]~29\ $ (GND))) # (!valor_int2(8) & (!\valor_int2[7]~29\ & VCC))
-- \valor_int2[8]~31\ = CARRY((valor_int2(8) & !\valor_int2[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(8),
	datad => VCC,
	cin => \valor_int2[7]~29\,
	combout => \valor_int2[8]~30_combout\,
	cout => \valor_int2[8]~31\);

-- Location: FF_X11_Y21_N23
\valor_int2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2[8]~30_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(8));

-- Location: LCCOMB_X11_Y21_N24
\valor_int2[9]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[9]~32_combout\ = \valor_int2[8]~31\ $ (valor_int2(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => valor_int2(9),
	cin => \valor_int2[8]~31\,
	combout => \valor_int2[9]~32_combout\);

-- Location: FF_X11_Y21_N25
\valor_int2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2[9]~32_combout\,
	asdata => \ST~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(9));

-- Location: LCCOMB_X11_Y21_N30
\valor_int2[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[0]~13_combout\ = (!valor_int2(3) & (valor_int2(5) & (valor_int2(4) & valor_int2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(3),
	datab => valor_int2(5),
	datac => valor_int2(4),
	datad => valor_int2(6),
	combout => \valor_int2[0]~13_combout\);

-- Location: LCCOMB_X11_Y21_N0
\valor_int2[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[0]~12_combout\ = (\ST~input_o\ & (!valor_int2(2) & ((valor_int2(0)) # (valor_int2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(0),
	datab => \ST~input_o\,
	datac => valor_int2(1),
	datad => valor_int2(2),
	combout => \valor_int2[0]~12_combout\);

-- Location: LCCOMB_X11_Y21_N28
\valor_int2[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[0]~14_combout\ = (!valor_int2(8) & (!valor_int2(7) & (\valor_int2[0]~13_combout\ & \valor_int2[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(8),
	datab => valor_int2(7),
	datac => \valor_int2[0]~13_combout\,
	datad => \valor_int2[0]~12_combout\,
	combout => \valor_int2[0]~14_combout\);

-- Location: LCCOMB_X11_Y21_N26
\valor_int2[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[0]~15_combout\ = (!\valor_int2[0]~14_combout\ & ((valor_int2(9)) # (!\ST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(9),
	datac => \ST~input_o\,
	datad => \valor_int2[0]~14_combout\,
	combout => \valor_int2[0]~15_combout\);

-- Location: FF_X11_Y21_N7
\valor_int2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2[0]~10_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \valor_int2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(0));

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
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_valor(0) <= \valor[0]~output_o\;

ww_valor(1) <= \valor[1]~output_o\;

ww_valor(2) <= \valor[2]~output_o\;

ww_valor(3) <= \valor[3]~output_o\;

ww_valor(4) <= \valor[4]~output_o\;

ww_valor(5) <= \valor[5]~output_o\;

ww_valor(6) <= \valor[6]~output_o\;

ww_valor(7) <= \valor[7]~output_o\;

ww_valor(8) <= \valor[8]~output_o\;

ww_valor(9) <= \valor[9]~output_o\;

ww_valor2(0) <= \valor2[0]~output_o\;

ww_valor2(1) <= \valor2[1]~output_o\;

ww_valor2(2) <= \valor2[2]~output_o\;

ww_valor2(3) <= \valor2[3]~output_o\;

ww_valor2(4) <= \valor2[4]~output_o\;

ww_valor2(5) <= \valor2[5]~output_o\;

ww_valor2(6) <= \valor2[6]~output_o\;

ww_valor2(7) <= \valor2[7]~output_o\;

ww_valor2(8) <= \valor2[8]~output_o\;

ww_valor2(9) <= \valor2[9]~output_o\;
END structure;


