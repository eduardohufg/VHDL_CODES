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

-- DATE "03/07/2024 09:57:13"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
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

ENTITY 	VGA IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	START : IN std_logic;
	HSYNC : BUFFER std_logic;
	VSYNC : BUFFER std_logic;
	R : BUFFER std_logic_vector(3 DOWNTO 0);
	G : BUFFER std_logic_vector(3 DOWNTO 0);
	B : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END VGA;

-- Design Ports Information
-- HSYNC	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VSYNC	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_HSYNC : std_logic;
SIGNAL ww_VSYNC : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \I1|ov~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I0|I0|q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HSYNC~output_o\ : std_logic;
SIGNAL \VSYNC~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \G[0]~output_o\ : std_logic;
SIGNAL \G[1]~output_o\ : std_logic;
SIGNAL \G[2]~output_o\ : std_logic;
SIGNAL \G[3]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \I0|I0|q~0_combout\ : std_logic;
SIGNAL \I0|I0|q~feeder_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \I0|I0|q~q\ : std_logic;
SIGNAL \I0|I0|q~clkctrl_outclk\ : std_logic;
SIGNAL \I1|Q[0]~11_combout\ : std_logic;
SIGNAL \I1|Q[1]~5_combout\ : std_logic;
SIGNAL \I1|Q[2]~4_combout\ : std_logic;
SIGNAL \I1|Q[3]~3_combout\ : std_logic;
SIGNAL \I4|Equal3~0_combout\ : std_logic;
SIGNAL \I1|Q[4]~9_combout\ : std_logic;
SIGNAL \I1|Q~2_combout\ : std_logic;
SIGNAL \I1|Q[6]~6_combout\ : std_logic;
SIGNAL \I4|Equal3~1_combout\ : std_logic;
SIGNAL \I1|I0|I6|Cout~combout\ : std_logic;
SIGNAL \I1|Q[7]~8_combout\ : std_logic;
SIGNAL \I1|I0|I9|s~0_combout\ : std_logic;
SIGNAL \I1|Q~7_combout\ : std_logic;
SIGNAL \I1|I0|I9|s~combout\ : std_logic;
SIGNAL \I1|Q~10_combout\ : std_logic;
SIGNAL \I4|Equal2~0_combout\ : std_logic;
SIGNAL \I4|Equal3~2_combout\ : std_logic;
SIGNAL \I4|Equal0~0_combout\ : std_logic;
SIGNAL \I4|Equal2~1_combout\ : std_logic;
SIGNAL \I4|Equal1~0_combout\ : std_logic;
SIGNAL \I4|Equal1~1_combout\ : std_logic;
SIGNAL \I4|Equal0~1_combout\ : std_logic;
SIGNAL \I4|Equal0~2_combout\ : std_logic;
SIGNAL \I4|Selector2~0_combout\ : std_logic;
SIGNAL \I4|EDO.S2~q\ : std_logic;
SIGNAL \I4|Selector3~0_combout\ : std_logic;
SIGNAL \I4|EDO.S3~q\ : std_logic;
SIGNAL \I4|Selector4~0_combout\ : std_logic;
SIGNAL \I4|EDO.S4~q\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \I4|Selector0~0_combout\ : std_logic;
SIGNAL \I4|EDO.IDLE~q\ : std_logic;
SIGNAL \I4|Selector1~0_combout\ : std_logic;
SIGNAL \I4|EDO.S1~q\ : std_logic;
SIGNAL \I4|HSYNC~0_combout\ : std_logic;
SIGNAL \I3|Selector0~0_combout\ : std_logic;
SIGNAL \I1|ov~q\ : std_logic;
SIGNAL \I1|ov~clkctrl_outclk\ : std_logic;
SIGNAL \I2|I0|Q[0]~10_combout\ : std_logic;
SIGNAL \I2|I0|Q[1]~5_combout\ : std_logic;
SIGNAL \I2|I0|Q[2]~8_combout\ : std_logic;
SIGNAL \I2|I0|Q[3]~7_combout\ : std_logic;
SIGNAL \I2|I0|I0|I3|Cout~combout\ : std_logic;
SIGNAL \I2|I0|Q[4]~4_combout\ : std_logic;
SIGNAL \I2|I0|Q[5]~9_combout\ : std_logic;
SIGNAL \I2|I0|Q[6]~3_combout\ : std_logic;
SIGNAL \I2|I0|Q[7]~1_combout\ : std_logic;
SIGNAL \I2|I0|Q[7]~2_combout\ : std_logic;
SIGNAL \I2|I0|I0|I6|Cout~combout\ : std_logic;
SIGNAL \I2|I0|Q[8]~0_combout\ : std_logic;
SIGNAL \I3|Equal0~0_combout\ : std_logic;
SIGNAL \I2|I0|Q[9]~6_combout\ : std_logic;
SIGNAL \I2|R~0_combout\ : std_logic;
SIGNAL \I3|Equal3~0_combout\ : std_logic;
SIGNAL \I2|R~1_combout\ : std_logic;
SIGNAL \I3|Equal3~1_combout\ : std_logic;
SIGNAL \I3|Equal0~1_combout\ : std_logic;
SIGNAL \I3|Equal1~0_combout\ : std_logic;
SIGNAL \I3|Equal0~2_combout\ : std_logic;
SIGNAL \I3|Selector2~0_combout\ : std_logic;
SIGNAL \I3|EDO.S2~q\ : std_logic;
SIGNAL \I3|Equal2~0_combout\ : std_logic;
SIGNAL \I3|Equal2~1_combout\ : std_logic;
SIGNAL \I3|Selector3~0_combout\ : std_logic;
SIGNAL \I3|EDO.S3~q\ : std_logic;
SIGNAL \I3|Selector4~0_combout\ : std_logic;
SIGNAL \I3|Selector4~1_combout\ : std_logic;
SIGNAL \I3|EDO.S4~q\ : std_logic;
SIGNAL \I3|Selector0~1_combout\ : std_logic;
SIGNAL \I3|EDO.IDLE~q\ : std_logic;
SIGNAL \I3|Selector1~0_combout\ : std_logic;
SIGNAL \I3|EDO.S1~q\ : std_logic;
SIGNAL \I3|VSYNC~0_combout\ : std_logic;
SIGNAL \I4|Selector6~0_combout\ : std_logic;
SIGNAL \I1|Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \I2|I0|Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \I4|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I2|ALT_INV_R~1_combout\ : std_logic;
SIGNAL \I3|ALT_INV_VSYNC~0_combout\ : std_logic;
SIGNAL \I4|ALT_INV_HSYNC~0_combout\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_START <= START;
HSYNC <= ww_HSYNC;
VSYNC <= ww_VSYNC;
R <= ww_R;
G <= ww_G;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\I1|ov~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \I1|ov~q\);

\I0|I0|q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \I0|I0|q~q\);
\I2|ALT_INV_R~1_combout\ <= NOT \I2|R~1_combout\;
\I3|ALT_INV_VSYNC~0_combout\ <= NOT \I3|VSYNC~0_combout\;
\I4|ALT_INV_HSYNC~0_combout\ <= NOT \I4|HSYNC~0_combout\;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X0_Y18_N2
\HSYNC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|ALT_INV_HSYNC~0_combout\,
	devoe => ww_devoe,
	o => \HSYNC~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\VSYNC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I3|ALT_INV_VSYNC~0_combout\,
	devoe => ww_devoe,
	o => \VSYNC~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|R\(0),
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|R\(0),
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|R\(0),
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|R\(0),
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\G[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\G[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\G[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\G[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: LCCOMB_X44_Y44_N2
\I0|I0|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|q~0_combout\ = !\I0|I0|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|I0|q~q\,
	combout => \I0|I0|q~0_combout\);

-- Location: LCCOMB_X44_Y44_N16
\I0|I0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|q~feeder_combout\ = \I0|I0|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I0|I0|q~0_combout\,
	combout => \I0|I0|q~feeder_combout\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: FF_X44_Y44_N17
\I0|I0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \I0|I0|q~feeder_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|I0|q~q\);

-- Location: CLKCTRL_G10
\I0|I0|q~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \I0|I0|q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \I0|I0|q~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y50_N6
\I1|Q[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[0]~11_combout\ = !\I1|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I1|Q\(0),
	combout => \I1|Q[0]~11_combout\);

-- Location: FF_X46_Y50_N7
\I1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I1|Q[0]~11_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(0));

-- Location: LCCOMB_X46_Y50_N8
\I1|Q[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[1]~5_combout\ = \I1|Q\(1) $ (\I1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I1|Q\(1),
	datad => \I1|Q\(0),
	combout => \I1|Q[1]~5_combout\);

-- Location: FF_X46_Y50_N9
\I1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I1|Q[1]~5_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(1));

-- Location: LCCOMB_X46_Y50_N10
\I1|Q[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[2]~4_combout\ = \I1|Q\(2) $ (((\I1|Q\(0) & \I1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I1|Q\(0),
	datac => \I1|Q\(2),
	datad => \I1|Q\(1),
	combout => \I1|Q[2]~4_combout\);

-- Location: FF_X46_Y50_N11
\I1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I1|Q[2]~4_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(2));

-- Location: LCCOMB_X46_Y50_N4
\I1|Q[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[3]~3_combout\ = \I1|Q\(3) $ (((\I1|Q\(1) & (\I1|Q\(2) & \I1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(1),
	datab => \I1|Q\(2),
	datac => \I1|Q\(3),
	datad => \I1|Q\(0),
	combout => \I1|Q[3]~3_combout\);

-- Location: FF_X46_Y50_N5
\I1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I1|Q[3]~3_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(3));

-- Location: LCCOMB_X46_Y50_N30
\I4|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Equal3~0_combout\ = (\I1|Q\(0) & (\I1|Q\(2) & (\I1|Q\(3) & \I1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(0),
	datab => \I1|Q\(2),
	datac => \I1|Q\(3),
	datad => \I1|Q\(1),
	combout => \I4|Equal3~0_combout\);

-- Location: LCCOMB_X45_Y50_N20
\I1|Q[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[4]~9_combout\ = \I1|Q\(4) $ (\I4|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I1|Q\(4),
	datad => \I4|Equal3~0_combout\,
	combout => \I1|Q[4]~9_combout\);

-- Location: FF_X45_Y50_N21
\I1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I1|Q[4]~9_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(4));

-- Location: LCCOMB_X45_Y50_N12
\I1|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q~2_combout\ = (!\I4|Equal3~2_combout\ & (\I1|Q\(5) $ (((\I4|Equal3~0_combout\ & \I1|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4|Equal3~0_combout\,
	datab => \I1|Q\(4),
	datac => \I1|Q\(5),
	datad => \I4|Equal3~2_combout\,
	combout => \I1|Q~2_combout\);

-- Location: FF_X45_Y50_N13
\I1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I1|Q~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(5));

-- Location: LCCOMB_X45_Y50_N4
\I1|Q[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[6]~6_combout\ = \I1|Q\(6) $ (((\I1|Q\(4) & (\I1|Q\(5) & \I4|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(4),
	datab => \I1|Q\(5),
	datac => \I1|Q\(6),
	datad => \I4|Equal3~0_combout\,
	combout => \I1|Q[6]~6_combout\);

-- Location: FF_X45_Y50_N5
\I1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I1|Q[6]~6_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(6));

-- Location: LCCOMB_X45_Y50_N6
\I4|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Equal3~1_combout\ = (!\I1|Q\(5) & (!\I1|Q\(6) & \I1|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(5),
	datac => \I1|Q\(6),
	datad => \I1|Q\(4),
	combout => \I4|Equal3~1_combout\);

-- Location: LCCOMB_X46_Y50_N16
\I1|I0|I6|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I0|I6|Cout~combout\ = (\I1|Q\(5) & (\I1|Q\(6) & (\I4|Equal3~0_combout\ & \I1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(5),
	datab => \I1|Q\(6),
	datac => \I4|Equal3~0_combout\,
	datad => \I1|Q\(4),
	combout => \I1|I0|I6|Cout~combout\);

-- Location: LCCOMB_X45_Y50_N2
\I1|Q[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q[7]~8_combout\ = \I1|Q\(7) $ (\I1|I0|I6|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I1|Q\(7),
	datad => \I1|I0|I6|Cout~combout\,
	combout => \I1|Q[7]~8_combout\);

-- Location: FF_X45_Y50_N3
\I1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I1|Q[7]~8_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(7));

-- Location: LCCOMB_X45_Y50_N10
\I1|I0|I9|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I0|I9|s~0_combout\ = (((!\I1|Q\(4)) # (!\I1|Q\(6))) # (!\I1|Q\(7))) # (!\I1|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(5),
	datab => \I1|Q\(7),
	datac => \I1|Q\(6),
	datad => \I1|Q\(4),
	combout => \I1|I0|I9|s~0_combout\);

-- Location: LCCOMB_X45_Y50_N30
\I1|Q~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q~7_combout\ = (!\I4|Equal3~2_combout\ & (\I1|Q\(8) $ (((\I1|Q\(7) & \I1|I0|I6|Cout~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(7),
	datab => \I1|I0|I6|Cout~combout\,
	datac => \I1|Q\(8),
	datad => \I4|Equal3~2_combout\,
	combout => \I1|Q~7_combout\);

-- Location: FF_X45_Y50_N31
\I1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I1|Q~7_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(8));

-- Location: LCCOMB_X45_Y50_N22
\I1|I0|I9|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I0|I9|s~combout\ = \I1|Q\(9) $ (((!\I1|I0|I9|s~0_combout\ & (\I1|Q\(8) & \I4|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I0|I9|s~0_combout\,
	datab => \I1|Q\(8),
	datac => \I1|Q\(9),
	datad => \I4|Equal3~0_combout\,
	combout => \I1|I0|I9|s~combout\);

-- Location: LCCOMB_X45_Y50_N14
\I1|Q~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Q~10_combout\ = (\I1|I0|I9|s~combout\ & (((!\I4|Equal3~0_combout\) # (!\I4|Equal2~0_combout\)) # (!\I4|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4|Equal3~1_combout\,
	datab => \I4|Equal2~0_combout\,
	datac => \I1|I0|I9|s~combout\,
	datad => \I4|Equal3~0_combout\,
	combout => \I1|Q~10_combout\);

-- Location: FF_X45_Y50_N15
\I1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I1|Q~10_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|Q\(9));

-- Location: LCCOMB_X45_Y50_N24
\I4|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Equal2~0_combout\ = (\I1|Q\(9) & (\I1|Q\(8) & !\I1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I1|Q\(9),
	datac => \I1|Q\(8),
	datad => \I1|Q\(7),
	combout => \I4|Equal2~0_combout\);

-- Location: LCCOMB_X45_Y50_N16
\I4|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Equal3~2_combout\ = (\I4|Equal2~0_combout\ & (\I4|Equal3~0_combout\ & \I4|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I4|Equal2~0_combout\,
	datac => \I4|Equal3~0_combout\,
	datad => \I4|Equal3~1_combout\,
	combout => \I4|Equal3~2_combout\);

-- Location: LCCOMB_X46_Y50_N12
\I4|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Equal0~0_combout\ = (!\I1|Q\(2) & (!\I1|Q\(1) & (!\I1|Q\(3) & !\I1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(2),
	datab => \I1|Q\(1),
	datac => \I1|Q\(3),
	datad => \I1|Q\(0),
	combout => \I4|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y50_N26
\I4|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Equal2~1_combout\ = (\I4|Equal0~0_combout\ & (\I4|Equal3~1_combout\ & \I4|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4|Equal0~0_combout\,
	datac => \I4|Equal3~1_combout\,
	datad => \I4|Equal2~0_combout\,
	combout => \I4|Equal2~1_combout\);

-- Location: LCCOMB_X45_Y50_N8
\I4|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Equal1~0_combout\ = (!\I1|Q\(9) & (!\I1|Q\(8) & \I1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I1|Q\(9),
	datac => \I1|Q\(8),
	datad => \I1|Q\(7),
	combout => \I4|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y50_N0
\I4|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Equal1~1_combout\ = (\I4|Equal0~0_combout\ & (\I4|Equal3~1_combout\ & \I4|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4|Equal0~0_combout\,
	datac => \I4|Equal3~1_combout\,
	datad => \I4|Equal1~0_combout\,
	combout => \I4|Equal1~1_combout\);

-- Location: LCCOMB_X45_Y50_N26
\I4|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Equal0~1_combout\ = (!\I1|Q\(8) & (!\I1|Q\(7) & (\I1|Q\(6) & !\I1|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(8),
	datab => \I1|Q\(7),
	datac => \I1|Q\(6),
	datad => \I1|Q\(9),
	combout => \I4|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y50_N18
\I4|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Equal0~2_combout\ = (!\I1|Q\(4) & (\I1|Q\(5) & (\I4|Equal0~1_combout\ & \I4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|Q\(4),
	datab => \I1|Q\(5),
	datac => \I4|Equal0~1_combout\,
	datad => \I4|Equal0~0_combout\,
	combout => \I4|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y50_N18
\I4|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Selector2~0_combout\ = (\I4|EDO.S1~q\ & ((\I4|Equal0~2_combout\) # ((!\I4|Equal1~1_combout\ & \I4|EDO.S2~q\)))) # (!\I4|EDO.S1~q\ & (!\I4|Equal1~1_combout\ & (\I4|EDO.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4|EDO.S1~q\,
	datab => \I4|Equal1~1_combout\,
	datac => \I4|EDO.S2~q\,
	datad => \I4|Equal0~2_combout\,
	combout => \I4|Selector2~0_combout\);

-- Location: FF_X46_Y50_N19
\I4|EDO.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I4|Selector2~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I4|EDO.S2~q\);

-- Location: LCCOMB_X46_Y50_N28
\I4|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Selector3~0_combout\ = (\I4|EDO.S2~q\ & ((\I4|Equal1~1_combout\) # ((\I4|EDO.S3~q\ & !\I4|Equal2~1_combout\)))) # (!\I4|EDO.S2~q\ & (\I4|EDO.S3~q\ & (!\I4|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4|EDO.S2~q\,
	datab => \I4|EDO.S3~q\,
	datac => \I4|Equal2~1_combout\,
	datad => \I4|Equal1~1_combout\,
	combout => \I4|Selector3~0_combout\);

-- Location: FF_X46_Y50_N23
\I4|EDO.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	asdata => \I4|Selector3~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I4|EDO.S3~q\);

-- Location: LCCOMB_X46_Y50_N2
\I4|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Selector4~0_combout\ = (\I4|Equal3~2_combout\ & (\I4|Equal2~1_combout\ & ((\I4|EDO.S3~q\)))) # (!\I4|Equal3~2_combout\ & ((\I4|EDO.S4~q\) # ((\I4|Equal2~1_combout\ & \I4|EDO.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4|Equal3~2_combout\,
	datab => \I4|Equal2~1_combout\,
	datac => \I4|EDO.S4~q\,
	datad => \I4|EDO.S3~q\,
	combout => \I4|Selector4~0_combout\);

-- Location: FF_X46_Y50_N3
\I4|EDO.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I4|Selector4~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I4|EDO.S4~q\);

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: LCCOMB_X45_Y50_N28
\I4|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Selector0~0_combout\ = (\I4|EDO.S4~q\ & (!\I4|Equal3~2_combout\ & ((\START~input_o\) # (\I4|EDO.IDLE~q\)))) # (!\I4|EDO.S4~q\ & ((\START~input_o\) # ((\I4|EDO.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4|EDO.S4~q\,
	datab => \START~input_o\,
	datac => \I4|EDO.IDLE~q\,
	datad => \I4|Equal3~2_combout\,
	combout => \I4|Selector0~0_combout\);

-- Location: FF_X45_Y50_N29
\I4|EDO.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I4|Selector0~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I4|EDO.IDLE~q\);

-- Location: LCCOMB_X45_Y50_N0
\I4|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Selector1~0_combout\ = (\I4|EDO.IDLE~q\ & (((\I4|EDO.S1~q\ & !\I4|Equal0~2_combout\)))) # (!\I4|EDO.IDLE~q\ & ((\START~input_o\) # ((\I4|EDO.S1~q\ & !\I4|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4|EDO.IDLE~q\,
	datab => \START~input_o\,
	datac => \I4|EDO.S1~q\,
	datad => \I4|Equal0~2_combout\,
	combout => \I4|Selector1~0_combout\);

-- Location: FF_X45_Y50_N1
\I4|EDO.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I4|Selector1~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I4|EDO.S1~q\);

-- Location: LCCOMB_X46_Y50_N22
\I4|HSYNC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|HSYNC~0_combout\ = (\I4|EDO.S1~q\) # (!\I4|EDO.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4|EDO.S1~q\,
	datad => \I4|EDO.IDLE~q\,
	combout => \I4|HSYNC~0_combout\);

-- Location: LCCOMB_X45_Y44_N30
\I3|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Selector0~0_combout\ = (!\START~input_o\ & !\I3|EDO.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datac => \I3|EDO.IDLE~q\,
	combout => \I3|Selector0~0_combout\);

-- Location: FF_X45_Y50_N17
\I1|ov\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I4|Equal3~2_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I1|ov~q\);

-- Location: CLKCTRL_G13
\I1|ov~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \I1|ov~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \I1|ov~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y44_N22
\I2|I0|Q[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|Q[0]~10_combout\ = !\I2|I0|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2|I0|Q\(0),
	combout => \I2|I0|Q[0]~10_combout\);

-- Location: LCCOMB_X46_Y44_N30
\I2|I0|Q[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|Q[1]~5_combout\ = \I2|I0|Q\(1) $ (\I2|I0|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2|I0|Q\(1),
	datad => \I2|I0|Q\(0),
	combout => \I2|I0|Q[1]~5_combout\);

-- Location: FF_X46_Y44_N31
\I2|I0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I1|ov~clkctrl_outclk\,
	d => \I2|I0|Q[1]~5_combout\,
	clrn => \I2|ALT_INV_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2|I0|Q\(1));

-- Location: LCCOMB_X46_Y44_N8
\I2|I0|Q[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|Q[2]~8_combout\ = \I2|I0|Q\(2) $ (((\I2|I0|Q\(1) & \I2|I0|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2|I0|Q\(1),
	datac => \I2|I0|Q\(2),
	datad => \I2|I0|Q\(0),
	combout => \I2|I0|Q[2]~8_combout\);

-- Location: FF_X46_Y44_N9
\I2|I0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I1|ov~clkctrl_outclk\,
	d => \I2|I0|Q[2]~8_combout\,
	clrn => \I2|ALT_INV_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2|I0|Q\(2));

-- Location: LCCOMB_X46_Y44_N10
\I2|I0|Q[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|Q[3]~7_combout\ = \I2|I0|Q\(3) $ (((\I2|I0|Q\(2) & (\I2|I0|Q\(1) & \I2|I0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(2),
	datab => \I2|I0|Q\(1),
	datac => \I2|I0|Q\(3),
	datad => \I2|I0|Q\(0),
	combout => \I2|I0|Q[3]~7_combout\);

-- Location: FF_X46_Y44_N11
\I2|I0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I1|ov~clkctrl_outclk\,
	d => \I2|I0|Q[3]~7_combout\,
	clrn => \I2|ALT_INV_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2|I0|Q\(3));

-- Location: LCCOMB_X46_Y44_N28
\I2|I0|I0|I3|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|I0|I3|Cout~combout\ = (\I2|I0|Q\(0) & (\I2|I0|Q\(2) & (\I2|I0|Q\(1) & \I2|I0|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(0),
	datab => \I2|I0|Q\(2),
	datac => \I2|I0|Q\(1),
	datad => \I2|I0|Q\(3),
	combout => \I2|I0|I0|I3|Cout~combout\);

-- Location: LCCOMB_X46_Y44_N26
\I2|I0|Q[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|Q[4]~4_combout\ = \I2|I0|Q\(4) $ (\I2|I0|I0|I3|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2|I0|Q\(4),
	datad => \I2|I0|I0|I3|Cout~combout\,
	combout => \I2|I0|Q[4]~4_combout\);

-- Location: FF_X46_Y44_N27
\I2|I0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I1|ov~clkctrl_outclk\,
	d => \I2|I0|Q[4]~4_combout\,
	clrn => \I2|ALT_INV_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2|I0|Q\(4));

-- Location: LCCOMB_X46_Y44_N16
\I2|I0|Q[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|Q[5]~9_combout\ = \I2|I0|Q\(5) $ (((\I2|I0|Q\(4) & \I2|I0|I0|I3|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2|I0|Q\(4),
	datac => \I2|I0|Q\(5),
	datad => \I2|I0|I0|I3|Cout~combout\,
	combout => \I2|I0|Q[5]~9_combout\);

-- Location: FF_X46_Y44_N17
\I2|I0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I1|ov~clkctrl_outclk\,
	d => \I2|I0|Q[5]~9_combout\,
	clrn => \I2|ALT_INV_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2|I0|Q\(5));

-- Location: LCCOMB_X46_Y44_N0
\I2|I0|Q[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|Q[6]~3_combout\ = \I2|I0|Q\(6) $ (((\I2|I0|Q\(5) & (\I2|I0|Q\(4) & \I2|I0|I0|I3|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(5),
	datab => \I2|I0|Q\(4),
	datac => \I2|I0|Q\(6),
	datad => \I2|I0|I0|I3|Cout~combout\,
	combout => \I2|I0|Q[6]~3_combout\);

-- Location: FF_X46_Y44_N1
\I2|I0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I1|ov~clkctrl_outclk\,
	d => \I2|I0|Q[6]~3_combout\,
	clrn => \I2|ALT_INV_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2|I0|Q\(6));

-- Location: LCCOMB_X45_Y44_N14
\I2|I0|Q[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|Q[7]~1_combout\ = (!\I2|I0|Q\(5)) # (!\I2|I0|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2|I0|Q\(6),
	datad => \I2|I0|Q\(5),
	combout => \I2|I0|Q[7]~1_combout\);

-- Location: LCCOMB_X46_Y44_N2
\I2|I0|Q[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|Q[7]~2_combout\ = \I2|I0|Q\(7) $ (((\I2|I0|Q\(4) & (\I2|I0|I0|I3|Cout~combout\ & !\I2|I0|Q[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(4),
	datab => \I2|I0|I0|I3|Cout~combout\,
	datac => \I2|I0|Q\(7),
	datad => \I2|I0|Q[7]~1_combout\,
	combout => \I2|I0|Q[7]~2_combout\);

-- Location: FF_X46_Y44_N3
\I2|I0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I1|ov~clkctrl_outclk\,
	d => \I2|I0|Q[7]~2_combout\,
	clrn => \I2|ALT_INV_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2|I0|Q\(7));

-- Location: LCCOMB_X46_Y44_N18
\I2|I0|I0|I6|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|I0|I6|Cout~combout\ = (\I2|I0|Q\(5) & (\I2|I0|Q\(4) & (\I2|I0|Q\(6) & \I2|I0|I0|I3|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(5),
	datab => \I2|I0|Q\(4),
	datac => \I2|I0|Q\(6),
	datad => \I2|I0|I0|I3|Cout~combout\,
	combout => \I2|I0|I0|I6|Cout~combout\);

-- Location: LCCOMB_X46_Y44_N24
\I2|I0|Q[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|Q[8]~0_combout\ = \I2|I0|Q\(8) $ (((\I2|I0|Q\(7) & \I2|I0|I0|I6|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2|I0|Q\(7),
	datac => \I2|I0|Q\(8),
	datad => \I2|I0|I0|I6|Cout~combout\,
	combout => \I2|I0|Q[8]~0_combout\);

-- Location: FF_X46_Y44_N25
\I2|I0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I1|ov~clkctrl_outclk\,
	d => \I2|I0|Q[8]~0_combout\,
	clrn => \I2|ALT_INV_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2|I0|Q\(8));

-- Location: LCCOMB_X46_Y44_N12
\I3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Equal0~0_combout\ = (!\I2|I0|Q\(6) & (!\I2|I0|Q\(8) & (!\I2|I0|Q\(4) & !\I2|I0|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(6),
	datab => \I2|I0|Q\(8),
	datac => \I2|I0|Q\(4),
	datad => \I2|I0|Q\(7),
	combout => \I3|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y44_N20
\I2|I0|Q[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|Q[9]~6_combout\ = \I2|I0|Q\(9) $ (((\I2|I0|Q\(8) & (\I2|I0|Q\(7) & \I2|I0|I0|I6|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(8),
	datab => \I2|I0|Q\(7),
	datac => \I2|I0|Q\(9),
	datad => \I2|I0|I0|I6|Cout~combout\,
	combout => \I2|I0|Q[9]~6_combout\);

-- Location: FF_X46_Y44_N21
\I2|I0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I1|ov~clkctrl_outclk\,
	d => \I2|I0|Q[9]~6_combout\,
	clrn => \I2|ALT_INV_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2|I0|Q\(9));

-- Location: LCCOMB_X46_Y44_N4
\I2|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|R~0_combout\ = (\I2|I0|Q\(9) & (\I2|I0|Q\(0) & !\I2|I0|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2|I0|Q\(9),
	datac => \I2|I0|Q\(0),
	datad => \I2|I0|Q\(5),
	combout => \I2|R~0_combout\);

-- Location: LCCOMB_X46_Y44_N6
\I3|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Equal3~0_combout\ = (\I2|I0|Q\(2) & (!\I2|I0|Q\(1) & \I2|I0|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2|I0|Q\(2),
	datac => \I2|I0|Q\(1),
	datad => \I2|I0|Q\(3),
	combout => \I3|Equal3~0_combout\);

-- Location: LCCOMB_X46_Y44_N14
\I2|R~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|R~1_combout\ = (\RST~input_o\) # ((\I3|Equal0~0_combout\ & (\I2|R~0_combout\ & \I3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|Equal0~0_combout\,
	datab => \RST~input_o\,
	datac => \I2|R~0_combout\,
	datad => \I3|Equal3~0_combout\,
	combout => \I2|R~1_combout\);

-- Location: FF_X46_Y44_N23
\I2|I0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I1|ov~clkctrl_outclk\,
	d => \I2|I0|Q[0]~10_combout\,
	clrn => \I2|ALT_INV_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2|I0|Q\(0));

-- Location: LCCOMB_X45_Y44_N0
\I3|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Equal3~1_combout\ = (\I2|I0|Q\(9) & (!\I2|I0|Q\(5) & (\I3|Equal0~0_combout\ & \I3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(9),
	datab => \I2|I0|Q\(5),
	datac => \I3|Equal0~0_combout\,
	datad => \I3|Equal3~0_combout\,
	combout => \I3|Equal3~1_combout\);

-- Location: LCCOMB_X45_Y44_N20
\I3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Equal0~1_combout\ = (\I2|I0|Q\(1) & (!\I2|I0|Q\(2) & (!\I2|I0|Q\(9) & !\I2|I0|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(1),
	datab => \I2|I0|Q\(2),
	datac => \I2|I0|Q\(9),
	datad => \I2|I0|Q\(3),
	combout => \I3|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y44_N6
\I3|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Equal1~0_combout\ = (\I2|I0|Q\(0) & (\I2|I0|Q\(5) & (\I3|Equal0~0_combout\ & \I3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(0),
	datab => \I2|I0|Q\(5),
	datac => \I3|Equal0~0_combout\,
	datad => \I3|Equal0~1_combout\,
	combout => \I3|Equal1~0_combout\);

-- Location: LCCOMB_X45_Y44_N26
\I3|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Equal0~2_combout\ = (!\I2|I0|Q\(0) & (!\I2|I0|Q\(5) & (\I3|Equal0~0_combout\ & \I3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(0),
	datab => \I2|I0|Q\(5),
	datac => \I3|Equal0~0_combout\,
	datad => \I3|Equal0~1_combout\,
	combout => \I3|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y44_N22
\I3|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Selector2~0_combout\ = (\I3|Equal1~0_combout\ & (\I3|EDO.S1~q\ & ((\I3|Equal0~2_combout\)))) # (!\I3|Equal1~0_combout\ & ((\I3|EDO.S2~q\) # ((\I3|EDO.S1~q\ & \I3|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|Equal1~0_combout\,
	datab => \I3|EDO.S1~q\,
	datac => \I3|EDO.S2~q\,
	datad => \I3|Equal0~2_combout\,
	combout => \I3|Selector2~0_combout\);

-- Location: FF_X45_Y44_N23
\I3|EDO.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I3|Selector2~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I3|EDO.S2~q\);

-- Location: LCCOMB_X45_Y44_N24
\I3|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Equal2~0_combout\ = (\I2|I0|Q\(1) & (!\I2|I0|Q\(3) & (!\I2|I0|Q\(2) & \I2|I0|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(1),
	datab => \I2|I0|Q\(3),
	datac => \I2|I0|Q\(2),
	datad => \I2|I0|Q\(0),
	combout => \I3|Equal2~0_combout\);

-- Location: LCCOMB_X45_Y44_N10
\I3|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Equal2~1_combout\ = (\I2|I0|Q\(9) & (!\I2|I0|Q\(5) & (\I3|Equal0~0_combout\ & \I3|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(9),
	datab => \I2|I0|Q\(5),
	datac => \I3|Equal0~0_combout\,
	datad => \I3|Equal2~0_combout\,
	combout => \I3|Equal2~1_combout\);

-- Location: LCCOMB_X45_Y44_N16
\I3|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Selector3~0_combout\ = (\I3|Equal1~0_combout\ & ((\I3|EDO.S2~q\) # ((\I3|EDO.S3~q\ & !\I3|Equal2~1_combout\)))) # (!\I3|Equal1~0_combout\ & (((\I3|EDO.S3~q\ & !\I3|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|Equal1~0_combout\,
	datab => \I3|EDO.S2~q\,
	datac => \I3|EDO.S3~q\,
	datad => \I3|Equal2~1_combout\,
	combout => \I3|Selector3~0_combout\);

-- Location: FF_X45_Y44_N17
\I3|EDO.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~q\,
	d => \I3|Selector3~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I3|EDO.S3~q\);

-- Location: LCCOMB_X45_Y44_N12
\I3|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Selector4~0_combout\ = (\I3|EDO.S4~q\ & ((\I2|I0|Q\(0)) # (!\I3|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|Q\(0),
	datab => \I3|EDO.S4~q\,
	datad => \I3|Equal3~1_combout\,
	combout => \I3|Selector4~0_combout\);

-- Location: LCCOMB_X45_Y44_N28
\I3|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Selector4~1_combout\ = (\I3|Selector4~0_combout\) # ((\I3|EDO.S3~q\ & \I3|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|EDO.S3~q\,
	datac => \I3|Equal2~1_combout\,
	datad => \I3|Selector4~0_combout\,
	combout => \I3|Selector4~1_combout\);

-- Location: FF_X45_Y44_N29
\I3|EDO.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I3|Selector4~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I3|EDO.S4~q\);

-- Location: LCCOMB_X45_Y44_N4
\I3|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Selector0~1_combout\ = (!\I3|Selector0~0_combout\ & ((\I2|I0|Q\(0)) # ((!\I3|EDO.S4~q\) # (!\I3|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|Selector0~0_combout\,
	datab => \I2|I0|Q\(0),
	datac => \I3|Equal3~1_combout\,
	datad => \I3|EDO.S4~q\,
	combout => \I3|Selector0~1_combout\);

-- Location: FF_X45_Y44_N5
\I3|EDO.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I3|Selector0~1_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I3|EDO.IDLE~q\);

-- Location: LCCOMB_X45_Y44_N8
\I3|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|Selector1~0_combout\ = (\START~input_o\ & (((\I3|EDO.S1~q\ & !\I3|Equal0~2_combout\)) # (!\I3|EDO.IDLE~q\))) # (!\START~input_o\ & (((\I3|EDO.S1~q\ & !\I3|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \I3|EDO.IDLE~q\,
	datac => \I3|EDO.S1~q\,
	datad => \I3|Equal0~2_combout\,
	combout => \I3|Selector1~0_combout\);

-- Location: FF_X45_Y44_N9
\I3|EDO.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \I0|I0|q~clkctrl_outclk\,
	d => \I3|Selector1~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I3|EDO.S1~q\);

-- Location: LCCOMB_X45_Y44_N18
\I3|VSYNC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|VSYNC~0_combout\ = (\I3|EDO.S1~q\) # (!\I3|EDO.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I3|EDO.S1~q\,
	datad => \I3|EDO.IDLE~q\,
	combout => \I3|VSYNC~0_combout\);

-- Location: LCCOMB_X46_Y50_N14
\I4|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Selector6~0_combout\ = (\I3|EDO.S3~q\) # (!\I4|EDO.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I4|EDO.S3~q\,
	datad => \I3|EDO.S3~q\,
	combout => \I4|Selector6~0_combout\);

-- Location: LCCOMB_X46_Y50_N24
\I4|R[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|R\(0) = (\I4|Selector6~0_combout\ & ((\I4|EDO.S2~q\))) # (!\I4|Selector6~0_combout\ & (\I4|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I4|R\(0),
	datac => \I4|Selector6~0_combout\,
	datad => \I4|EDO.S2~q\,
	combout => \I4|R\(0));

-- Location: UNVM_X0_Y40_N40
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

-- Location: ADCBLOCK_X43_Y52_N0
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

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
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
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HSYNC <= \HSYNC~output_o\;

ww_VSYNC <= \VSYNC~output_o\;

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_G(0) <= \G[0]~output_o\;

ww_G(1) <= \G[1]~output_o\;

ww_G(2) <= \G[2]~output_o\;

ww_G(3) <= \G[3]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;
END structure;


