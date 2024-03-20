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

-- DATE "03/08/2024 15:16:23"

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

ENTITY 	EXPARITH IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	btn_inc : IN std_logic;
	btn_dec : IN std_logic;
	valor : OUT std_logic_vector(9 DOWNTO 0);
	valor2 : OUT std_logic_vector(9 DOWNTO 0)
	);
END EXPARITH;

-- Design Ports Information
-- valor[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[7]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[8]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[2]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[4]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[5]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[6]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[7]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[8]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor2[9]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_inc	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_dec	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EXPARITH IS
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
SIGNAL ww_btn_inc : std_logic;
SIGNAL ww_btn_dec : std_logic;
SIGNAL ww_valor : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_valor2 : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
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
SIGNAL \btn_inc~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \valor_int~8_combout\ : std_logic;
SIGNAL \valor_int~9_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \btn_dec~input_o\ : std_logic;
SIGNAL \valor_int[0]~7_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \valor_int~10_combout\ : std_logic;
SIGNAL \valor_int~11_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \valor_int~12_combout\ : std_logic;
SIGNAL \valor_int~13_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \valor_int~15_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \valor_int~16_combout\ : std_logic;
SIGNAL \valor_int~26_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \valor_int~17_combout\ : std_logic;
SIGNAL \valor_int~27_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \valor_int[8]~20_combout\ : std_logic;
SIGNAL \valor_int[8]~21_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \valor_int[9]~22_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \valor_int[9]~23_combout\ : std_logic;
SIGNAL \valor_int[8]~24_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \valor_int~14_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \valor_int[7]~18_combout\ : std_logic;
SIGNAL \valor_int[7]~19_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \valor_int~6_combout\ : std_logic;
SIGNAL \valor_int~25_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \valor_int2[0]~4_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \valor_int2~5_combout\ : std_logic;
SIGNAL \valor_int2~6_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \valor_int2~7_combout\ : std_logic;
SIGNAL \valor_int2~8_combout\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~13_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \valor_int2~9_combout\ : std_logic;
SIGNAL \valor_int2~10_combout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \valor_int2~11_combout\ : std_logic;
SIGNAL \valor_int2~12_combout\ : std_logic;
SIGNAL \Add2~16\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~19_combout\ : std_logic;
SIGNAL \valor_int2[7]~16_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \LessThan5~4_combout\ : std_logic;
SIGNAL \valor_int2[7]~17_combout\ : std_logic;
SIGNAL \valor_int2[7]~18_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add2~20\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add2~27_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \Add2~21_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~29_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \valor_int2[6]~13_combout\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \valor_int2[6]~14_combout\ : std_logic;
SIGNAL \valor_int2[6]~15_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \valor_int2[0]~19_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \valor_int2~2_combout\ : std_logic;
SIGNAL \valor_int2~3_combout\ : std_logic;
SIGNAL valor_int : std_logic_vector(9 DOWNTO 0);
SIGNAL valor_int2 : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL ALT_INV_valor_int2 : std_logic_vector(7 DOWNTO 1);
SIGNAL ALT_INV_valor_int : std_logic_vector(7 DOWNTO 4);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_btn_inc <= btn_inc;
ww_btn_dec <= btn_dec;
valor <= ww_valor;
valor2 <= ww_valor2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
ALT_INV_valor_int2(7) <= NOT valor_int2(7);
ALT_INV_valor_int2(6) <= NOT valor_int2(6);
ALT_INV_valor_int2(1) <= NOT valor_int2(1);
ALT_INV_valor_int(7) <= NOT valor_int(7);
ALT_INV_valor_int(4) <= NOT valor_int(4);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y14_N24
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

-- Location: IOOBUF_X15_Y25_N16
\valor[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int(0),
	devoe => ww_devoe,
	o => \valor[0]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\valor[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int(1),
	devoe => ww_devoe,
	o => \valor[1]~output_o\);

-- Location: IOOBUF_X15_Y25_N9
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

-- Location: IOOBUF_X15_Y25_N23
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

-- Location: IOOBUF_X15_Y25_N30
\valor[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_valor_int(4),
	devoe => ww_devoe,
	o => \valor[4]~output_o\);

-- Location: IOOBUF_X15_Y25_N2
\valor[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int(5),
	devoe => ww_devoe,
	o => \valor[5]~output_o\);

-- Location: IOOBUF_X17_Y25_N9
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

-- Location: IOOBUF_X17_Y25_N30
\valor[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_valor_int(7),
	devoe => ww_devoe,
	o => \valor[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N16
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

-- Location: IOOBUF_X17_Y25_N23
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

-- Location: IOOBUF_X10_Y21_N16
\valor2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int2(0),
	devoe => ww_devoe,
	o => \valor2[0]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
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

-- Location: IOOBUF_X10_Y19_N23
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

-- Location: IOOBUF_X10_Y20_N9
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

-- Location: IOOBUF_X10_Y20_N16
\valor2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int2(4),
	devoe => ww_devoe,
	o => \valor2[4]~output_o\);

-- Location: IOOBUF_X10_Y20_N2
\valor2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => valor_int2(5),
	devoe => ww_devoe,
	o => \valor2[5]~output_o\);

-- Location: IOOBUF_X10_Y19_N16
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

-- Location: IOOBUF_X10_Y21_N23
\valor2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_valor_int2(7),
	devoe => ww_devoe,
	o => \valor2[7]~output_o\);

-- Location: IOOBUF_X10_Y19_N9
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

-- Location: IOOBUF_X10_Y21_N9
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

-- Location: IOIBUF_X11_Y25_N29
\btn_inc~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_inc,
	o => \btn_inc~input_o\);

-- Location: LCCOMB_X16_Y24_N6
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = valor_int(0) $ (VCC)
-- \Add1~1\ = CARRY(valor_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X16_Y24_N8
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (valor_int(1) & (\Add1~1\ & VCC)) # (!valor_int(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!valor_int(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X14_Y24_N10
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = valor_int(0) $ (VCC)
-- \Add0~1\ = CARRY(valor_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valor_int(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X14_Y24_N12
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (valor_int(1) & (!\Add0~1\)) # (!valor_int(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!valor_int(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X15_Y24_N10
\valor_int~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~8_combout\ = (\btn_inc~input_o\ & ((\Add0~2_combout\))) # (!\btn_inc~input_o\ & (\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datac => \Add1~2_combout\,
	datad => \Add0~2_combout\,
	combout => \valor_int~8_combout\);

-- Location: LCCOMB_X15_Y24_N6
\valor_int~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~9_combout\ = (\btn_inc~input_o\ & (((\valor_int~8_combout\) # (!\LessThan0~2_combout\)))) # (!\btn_inc~input_o\ & (\LessThan2~2_combout\ & ((\valor_int~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \LessThan2~2_combout\,
	datac => \LessThan0~2_combout\,
	datad => \valor_int~8_combout\,
	combout => \valor_int~9_combout\);

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

-- Location: IOIBUF_X10_Y22_N22
\btn_dec~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_dec,
	o => \btn_dec~input_o\);

-- Location: LCCOMB_X15_Y24_N4
\valor_int[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[0]~7_combout\ = (\btn_inc~input_o\) # ((\btn_dec~input_o\ & \LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datac => \btn_dec~input_o\,
	datad => \LessThan2~2_combout\,
	combout => \valor_int[0]~7_combout\);

-- Location: FF_X15_Y24_N7
\valor_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(1));

-- Location: LCCOMB_X16_Y24_N10
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (valor_int(2) & ((GND) # (!\Add1~3\))) # (!valor_int(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((valor_int(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X14_Y24_N14
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (valor_int(2) & (\Add0~3\ $ (GND))) # (!valor_int(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((valor_int(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X15_Y24_N16
\valor_int~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~10_combout\ = (\btn_inc~input_o\ & ((\Add0~4_combout\))) # (!\btn_inc~input_o\ & (\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datac => \Add1~4_combout\,
	datad => \Add0~4_combout\,
	combout => \valor_int~10_combout\);

-- Location: LCCOMB_X15_Y24_N12
\valor_int~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~11_combout\ = (\btn_inc~input_o\ & (((\valor_int~10_combout\) # (!\LessThan0~2_combout\)))) # (!\btn_inc~input_o\ & (\LessThan2~2_combout\ & ((\valor_int~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \LessThan2~2_combout\,
	datac => \LessThan0~2_combout\,
	datad => \valor_int~10_combout\,
	combout => \valor_int~11_combout\);

-- Location: FF_X15_Y24_N13
\valor_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(2));

-- Location: LCCOMB_X16_Y24_N12
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (valor_int(3) & (\Add1~5\ & VCC)) # (!valor_int(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!valor_int(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X14_Y24_N16
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (valor_int(3) & (!\Add0~5\)) # (!valor_int(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!valor_int(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X16_Y24_N4
\valor_int~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~12_combout\ = (\btn_inc~input_o\ & ((\Add0~6_combout\))) # (!\btn_inc~input_o\ & (\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datac => \btn_inc~input_o\,
	datad => \Add0~6_combout\,
	combout => \valor_int~12_combout\);

-- Location: LCCOMB_X15_Y24_N22
\valor_int~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~13_combout\ = (\btn_inc~input_o\ & (((\valor_int~12_combout\) # (!\LessThan0~2_combout\)))) # (!\btn_inc~input_o\ & (\LessThan2~2_combout\ & ((\valor_int~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \LessThan2~2_combout\,
	datac => \LessThan0~2_combout\,
	datad => \valor_int~12_combout\,
	combout => \valor_int~13_combout\);

-- Location: FF_X15_Y24_N23
\valor_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(3));

-- Location: LCCOMB_X16_Y24_N14
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (valor_int(4) & (\Add1~7\ $ (GND))) # (!valor_int(4) & ((GND) # (!\Add1~7\)))
-- \Add1~9\ = CARRY((!\Add1~7\) # (!valor_int(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X14_Y24_N18
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (valor_int(4) & (!\Add0~7\ & VCC)) # (!valor_int(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((!valor_int(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X15_Y24_N8
\valor_int~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~15_combout\ = (\valor_int~14_combout\ & ((\btn_inc~input_o\ & ((!\Add0~8_combout\))) # (!\btn_inc~input_o\ & (!\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_int~14_combout\,
	datab => \btn_inc~input_o\,
	datac => \Add1~8_combout\,
	datad => \Add0~8_combout\,
	combout => \valor_int~15_combout\);

-- Location: FF_X15_Y24_N9
\valor_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(4));

-- Location: LCCOMB_X14_Y24_N20
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (valor_int(5) & (!\Add0~9\)) # (!valor_int(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!valor_int(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X16_Y24_N16
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (valor_int(5) & (\Add1~9\ & VCC)) # (!valor_int(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!valor_int(5) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X15_Y24_N24
\valor_int~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~16_combout\ = (\btn_inc~input_o\ & (\Add0~10_combout\ & (\LessThan0~2_combout\))) # (!\btn_inc~input_o\ & (((\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \Add0~10_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add1~10_combout\,
	combout => \valor_int~16_combout\);

-- Location: LCCOMB_X15_Y24_N14
\valor_int~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~26_combout\ = (\valor_int~16_combout\ & ((\LessThan2~2_combout\) # (\btn_inc~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~2_combout\,
	datac => \btn_inc~input_o\,
	datad => \valor_int~16_combout\,
	combout => \valor_int~26_combout\);

-- Location: FF_X15_Y24_N15
\valor_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(5));

-- Location: LCCOMB_X16_Y24_N18
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (valor_int(6) & ((GND) # (!\Add1~11\))) # (!valor_int(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((valor_int(6)) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X14_Y24_N22
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (valor_int(6) & (\Add0~11\ $ (GND))) # (!valor_int(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((valor_int(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X14_Y24_N6
\valor_int~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~17_combout\ = (\btn_inc~input_o\ & ((\Add0~12_combout\) # (!\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datac => \Add0~12_combout\,
	datad => \LessThan0~2_combout\,
	combout => \valor_int~17_combout\);

-- Location: LCCOMB_X14_Y24_N8
\valor_int~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~27_combout\ = (\valor_int~17_combout\) # ((!\btn_inc~input_o\ & (\LessThan2~2_combout\ & \Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \LessThan2~2_combout\,
	datac => \Add1~12_combout\,
	datad => \valor_int~17_combout\,
	combout => \valor_int~27_combout\);

-- Location: FF_X14_Y24_N9
\valor_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(6));

-- Location: LCCOMB_X14_Y24_N24
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (valor_int(7) & ((\Add0~13\) # (GND))) # (!valor_int(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((valor_int(7)) # (!\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X14_Y24_N26
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (valor_int(8) & (\Add0~15\ $ (GND))) # (!valor_int(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((valor_int(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X16_Y24_N20
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (valor_int(7) & (!\Add1~13\)) # (!valor_int(7) & (\Add1~13\ & VCC))
-- \Add1~15\ = CARRY((valor_int(7) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X16_Y24_N22
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (valor_int(8) & ((GND) # (!\Add1~15\))) # (!valor_int(8) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((valor_int(8)) # (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X16_Y24_N2
\valor_int[8]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[8]~20_combout\ = (\LessThan2~2_combout\ & ((\btn_dec~input_o\ & ((\Add1~16_combout\))) # (!\btn_dec~input_o\ & (valor_int(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_dec~input_o\,
	datab => valor_int(8),
	datac => \Add1~16_combout\,
	datad => \LessThan2~2_combout\,
	combout => \valor_int[8]~20_combout\);

-- Location: LCCOMB_X16_Y24_N0
\valor_int[8]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[8]~21_combout\ = (\btn_inc~input_o\ & (\LessThan0~2_combout\ & (\Add0~16_combout\))) # (!\btn_inc~input_o\ & (((\valor_int[8]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \LessThan0~2_combout\,
	datac => \Add0~16_combout\,
	datad => \valor_int[8]~20_combout\,
	combout => \valor_int[8]~21_combout\);

-- Location: FF_X16_Y24_N1
\valor_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[8]~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(8));

-- Location: LCCOMB_X14_Y24_N28
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = valor_int(9) $ (\Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X14_Y24_N4
\valor_int[9]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[9]~22_combout\ = (\btn_inc~input_o\ & ((\Add0~18_combout\) # (!\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~2_combout\,
	datac => \btn_inc~input_o\,
	datad => \Add0~18_combout\,
	combout => \valor_int[9]~22_combout\);

-- Location: LCCOMB_X16_Y24_N24
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = valor_int(9) $ (!\Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(9),
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X14_Y24_N30
\valor_int[9]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[9]~23_combout\ = (\valor_int[9]~22_combout\) # ((!\btn_inc~input_o\ & (\LessThan2~2_combout\ & \Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \LessThan2~2_combout\,
	datac => \valor_int[9]~22_combout\,
	datad => \Add1~18_combout\,
	combout => \valor_int[9]~23_combout\);

-- Location: LCCOMB_X14_Y24_N2
\valor_int[8]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[8]~24_combout\ = (\btn_inc~input_o\) # (\btn_dec~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datac => \btn_dec~input_o\,
	combout => \valor_int[8]~24_combout\);

-- Location: FF_X14_Y24_N31
\valor_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[9]~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(9));

-- Location: LCCOMB_X16_Y24_N30
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!valor_int(8) & ((valor_int(7)) # (!valor_int(6))))) # (!valor_int(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(6),
	datab => valor_int(7),
	datac => valor_int(9),
	datad => valor_int(8),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y24_N28
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((valor_int(4)) # (!valor_int(1))) # (!valor_int(3))) # (!valor_int(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(2),
	datab => valor_int(3),
	datac => valor_int(1),
	datad => valor_int(4),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y24_N26
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~0_combout\) # ((!valor_int(5) & (!valor_int(8) & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(5),
	datab => valor_int(8),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X15_Y24_N26
\valor_int~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~14_combout\ = (\btn_inc~input_o\ & (\LessThan0~2_combout\)) # (!\btn_inc~input_o\ & ((\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan2~2_combout\,
	combout => \valor_int~14_combout\);

-- Location: LCCOMB_X15_Y24_N2
\valor_int[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[7]~18_combout\ = (\btn_inc~input_o\ & (((\Add0~14_combout\)))) # (!\btn_inc~input_o\ & (\valor_int[0]~7_combout\ & (\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \valor_int[0]~7_combout\,
	datac => \Add1~14_combout\,
	datad => \Add0~14_combout\,
	combout => \valor_int[7]~18_combout\);

-- Location: LCCOMB_X15_Y24_N20
\valor_int[7]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int[7]~19_combout\ = (!\valor_int[7]~18_combout\ & ((\valor_int[0]~7_combout\ & (\valor_int~14_combout\)) # (!\valor_int[0]~7_combout\ & ((valor_int(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_int~14_combout\,
	datab => \valor_int[0]~7_combout\,
	datac => valor_int(7),
	datad => \valor_int[7]~18_combout\,
	combout => \valor_int[7]~19_combout\);

-- Location: FF_X15_Y24_N21
\valor_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int[7]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(7));

-- Location: LCCOMB_X15_Y24_N30
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (valor_int(1)) # ((valor_int(0)) # ((valor_int(3)) # (valor_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(1),
	datab => valor_int(0),
	datac => valor_int(3),
	datad => valor_int(2),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X15_Y24_N28
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (valor_int(6)) # ((valor_int(5)) # ((\LessThan2~0_combout\ & !valor_int(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(6),
	datab => valor_int(5),
	datac => \LessThan2~0_combout\,
	datad => valor_int(4),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X15_Y24_N18
\LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (valor_int(9)) # ((valor_int(8)) # ((!valor_int(7) & \LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int(7),
	datab => valor_int(9),
	datac => valor_int(8),
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X14_Y24_N0
\valor_int~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~6_combout\ = (\btn_inc~input_o\ & (\Add0~0_combout\ & ((\LessThan0~2_combout\)))) # (!\btn_inc~input_o\ & (((\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~0_combout\,
	datac => \btn_inc~input_o\,
	datad => \LessThan0~2_combout\,
	combout => \valor_int~6_combout\);

-- Location: LCCOMB_X15_Y24_N0
\valor_int~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int~25_combout\ = (\valor_int~6_combout\ & ((\btn_inc~input_o\) # (\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \LessThan2~2_combout\,
	datac => \valor_int~6_combout\,
	combout => \valor_int~25_combout\);

-- Location: FF_X15_Y24_N1
\valor_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int(0));

-- Location: LCCOMB_X14_Y20_N4
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = valor_int2(0) $ (VCC)
-- \Add2~3\ = CARRY(valor_int2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(0),
	datad => VCC,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X12_Y20_N30
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (valor_int2(7) & (valor_int2(6) & (!valor_int2(5) & !valor_int2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(7),
	datab => valor_int2(6),
	datac => valor_int2(5),
	datad => valor_int2(4),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X11_Y20_N30
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\btn_inc~input_o\ & (((\LessThan3~0_combout\) # (!valor_int2(8))) # (!valor_int2(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => valor_int2(9),
	datac => \LessThan3~0_combout\,
	datad => valor_int2(8),
	combout => \Add2~4_combout\);

-- Location: LCCOMB_X14_Y20_N6
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (valor_int2(1) & ((\Add2~3\) # (GND))) # (!valor_int2(1) & (!\Add2~3\))
-- \Add2~7\ = CARRY((valor_int2(1)) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(1),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X12_Y20_N0
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = valor_int2(0) $ (VCC)
-- \Add3~1\ = CARRY(valor_int2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X12_Y20_N2
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (valor_int2(1) & (!\Add3~1\)) # (!valor_int2(1) & (\Add3~1\ & VCC))
-- \Add3~3\ = CARRY((valor_int2(1) & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X13_Y20_N18
\Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = (!\btn_inc~input_o\ & \Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn_inc~input_o\,
	datad => \Add3~2_combout\,
	combout => \Add2~5_combout\);

-- Location: LCCOMB_X13_Y20_N30
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\valor_int2[0]~19_combout\ & (!\Add2~5_combout\ & ((!\Add2~4_combout\) # (!\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \valor_int2[0]~19_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~5_combout\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X13_Y20_N8
\valor_int2[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[0]~4_combout\ = (\btn_inc~input_o\) # ((\btn_dec~input_o\ & ((\LessThan5~2_combout\) # (\LessThan5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_dec~input_o\,
	datab => \btn_inc~input_o\,
	datac => \LessThan5~2_combout\,
	datad => \LessThan5~3_combout\,
	combout => \valor_int2[0]~4_combout\);

-- Location: FF_X13_Y20_N31
\valor_int2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(1));

-- Location: LCCOMB_X14_Y20_N8
\Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = (valor_int2(2) & (\Add2~7\ $ (GND))) # (!valor_int2(2) & (!\Add2~7\ & VCC))
-- \Add2~10\ = CARRY((valor_int2(2) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(2),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~9_combout\,
	cout => \Add2~10\);

-- Location: LCCOMB_X12_Y20_N4
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (valor_int2(2) & ((GND) # (!\Add3~3\))) # (!valor_int2(2) & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((valor_int2(2)) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X13_Y20_N16
\valor_int2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2~5_combout\ = (!\btn_inc~input_o\ & \Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_inc~input_o\,
	datac => \Add3~4_combout\,
	combout => \valor_int2~5_combout\);

-- Location: LCCOMB_X13_Y20_N0
\valor_int2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2~6_combout\ = (\valor_int2[0]~19_combout\ & ((\valor_int2~5_combout\) # ((\Add2~4_combout\ & \Add2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \valor_int2[0]~19_combout\,
	datac => \Add2~9_combout\,
	datad => \valor_int2~5_combout\,
	combout => \valor_int2~6_combout\);

-- Location: FF_X13_Y20_N1
\valor_int2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(2));

-- Location: LCCOMB_X14_Y20_N10
\Add2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~11_combout\ = (valor_int2(3) & (!\Add2~10\)) # (!valor_int2(3) & ((\Add2~10\) # (GND)))
-- \Add2~12\ = CARRY((!\Add2~10\) # (!valor_int2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(3),
	datad => VCC,
	cin => \Add2~10\,
	combout => \Add2~11_combout\,
	cout => \Add2~12\);

-- Location: LCCOMB_X12_Y20_N6
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (valor_int2(3) & (\Add3~5\ & VCC)) # (!valor_int2(3) & (!\Add3~5\))
-- \Add3~7\ = CARRY((!valor_int2(3) & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X13_Y20_N10
\valor_int2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2~7_combout\ = (!\btn_inc~input_o\ & \Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_inc~input_o\,
	datac => \Add3~6_combout\,
	combout => \valor_int2~7_combout\);

-- Location: LCCOMB_X14_Y20_N28
\valor_int2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2~8_combout\ = (\valor_int2[0]~19_combout\ & ((\valor_int2~7_combout\) # ((\Add2~11_combout\ & \Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_int2[0]~19_combout\,
	datab => \Add2~11_combout\,
	datac => \Add2~4_combout\,
	datad => \valor_int2~7_combout\,
	combout => \valor_int2~8_combout\);

-- Location: FF_X14_Y20_N29
\valor_int2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(3));

-- Location: LCCOMB_X14_Y20_N12
\Add2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~13_combout\ = (valor_int2(4) & (\Add2~12\ $ (GND))) # (!valor_int2(4) & (!\Add2~12\ & VCC))
-- \Add2~14\ = CARRY((valor_int2(4) & !\Add2~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(4),
	datad => VCC,
	cin => \Add2~12\,
	combout => \Add2~13_combout\,
	cout => \Add2~14\);

-- Location: LCCOMB_X12_Y20_N8
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (valor_int2(4) & ((GND) # (!\Add3~7\))) # (!valor_int2(4) & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((valor_int2(4)) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X13_Y20_N20
\valor_int2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2~9_combout\ = (\btn_inc~input_o\ & (((\Add2~13_combout\)) # (!\LessThan3~1_combout\))) # (!\btn_inc~input_o\ & (((\Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \LessThan3~1_combout\,
	datac => \Add2~13_combout\,
	datad => \Add3~8_combout\,
	combout => \valor_int2~9_combout\);

-- Location: LCCOMB_X13_Y20_N2
\valor_int2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2~10_combout\ = (\valor_int2[0]~19_combout\ & \valor_int2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \valor_int2[0]~19_combout\,
	datad => \valor_int2~9_combout\,
	combout => \valor_int2~10_combout\);

-- Location: FF_X13_Y20_N3
\valor_int2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(4));

-- Location: LCCOMB_X14_Y20_N14
\Add2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = (valor_int2(5) & (!\Add2~14\)) # (!valor_int2(5) & ((\Add2~14\) # (GND)))
-- \Add2~16\ = CARRY((!\Add2~14\) # (!valor_int2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(5),
	datad => VCC,
	cin => \Add2~14\,
	combout => \Add2~15_combout\,
	cout => \Add2~16\);

-- Location: LCCOMB_X12_Y20_N10
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (valor_int2(5) & (\Add3~9\ & VCC)) # (!valor_int2(5) & (!\Add3~9\))
-- \Add3~11\ = CARRY((!valor_int2(5) & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X12_Y20_N26
\valor_int2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2~11_combout\ = (!\btn_inc~input_o\ & \Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_inc~input_o\,
	datad => \Add3~10_combout\,
	combout => \valor_int2~11_combout\);

-- Location: LCCOMB_X14_Y20_N26
\valor_int2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2~12_combout\ = (\valor_int2[0]~19_combout\ & ((\valor_int2~11_combout\) # ((\Add2~15_combout\ & \Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_int2[0]~19_combout\,
	datab => \Add2~15_combout\,
	datac => \Add2~4_combout\,
	datad => \valor_int2~11_combout\,
	combout => \valor_int2~12_combout\);

-- Location: FF_X14_Y20_N27
\valor_int2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(5));

-- Location: LCCOMB_X14_Y20_N16
\Add2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~17_combout\ = (valor_int2(6) & (!\Add2~16\ & VCC)) # (!valor_int2(6) & (\Add2~16\ $ (GND)))
-- \Add2~18\ = CARRY((!valor_int2(6) & !\Add2~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(6),
	datad => VCC,
	cin => \Add2~16\,
	combout => \Add2~17_combout\,
	cout => \Add2~18\);

-- Location: LCCOMB_X14_Y20_N18
\Add2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~19_combout\ = (valor_int2(7) & ((\Add2~18\) # (GND))) # (!valor_int2(7) & (!\Add2~18\))
-- \Add2~20\ = CARRY((valor_int2(7)) # (!\Add2~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(7),
	datad => VCC,
	cin => \Add2~18\,
	combout => \Add2~19_combout\,
	cout => \Add2~20\);

-- Location: LCCOMB_X11_Y20_N12
\valor_int2[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[7]~16_combout\ = ((!\Add2~19_combout\) # (!\btn_inc~input_o\)) # (!\LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan3~1_combout\,
	datac => \btn_inc~input_o\,
	datad => \Add2~19_combout\,
	combout => \valor_int2[7]~16_combout\);

-- Location: LCCOMB_X12_Y20_N12
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (valor_int2(6) & (\Add3~11\ $ (GND))) # (!valor_int2(6) & ((GND) # (!\Add3~11\)))
-- \Add3~13\ = CARRY((!\Add3~11\) # (!valor_int2(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X12_Y20_N14
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (valor_int2(7) & (!\Add3~13\)) # (!valor_int2(7) & (\Add3~13\ & VCC))
-- \Add3~15\ = CARRY((valor_int2(7) & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X12_Y20_N28
\LessThan5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~4_combout\ = (valor_int2(8)) # ((valor_int2(9)) # (\LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(8),
	datac => valor_int2(9),
	datad => \LessThan5~2_combout\,
	combout => \LessThan5~4_combout\);

-- Location: LCCOMB_X11_Y20_N18
\valor_int2[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[7]~17_combout\ = (\btn_inc~input_o\) # ((\btn_dec~input_o\ & (!\Add3~14_combout\ & \LessThan5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \btn_dec~input_o\,
	datac => \Add3~14_combout\,
	datad => \LessThan5~4_combout\,
	combout => \valor_int2[7]~17_combout\);

-- Location: LCCOMB_X11_Y20_N16
\valor_int2[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[7]~18_combout\ = (\valor_int2[7]~16_combout\ & ((\valor_int2[7]~17_combout\) # ((!\valor_int2[0]~4_combout\ & valor_int2(7))))) # (!\valor_int2[7]~16_combout\ & (!\valor_int2[0]~4_combout\ & (valor_int2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_int2[7]~16_combout\,
	datab => \valor_int2[0]~4_combout\,
	datac => valor_int2(7),
	datad => \valor_int2[7]~17_combout\,
	combout => \valor_int2[7]~18_combout\);

-- Location: FF_X11_Y20_N17
\valor_int2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2[7]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(7));

-- Location: LCCOMB_X12_Y20_N16
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (valor_int2(8) & ((GND) # (!\Add3~15\))) # (!valor_int2(8) & (\Add3~15\ $ (GND)))
-- \Add3~17\ = CARRY((valor_int2(8)) # (!\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X12_Y20_N18
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = valor_int2(9) $ (!\Add3~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(9),
	cin => \Add3~17\,
	combout => \Add3~18_combout\);

-- Location: LCCOMB_X14_Y20_N20
\Add2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~21_combout\ = (valor_int2(8) & (\Add2~20\ $ (GND))) # (!valor_int2(8) & (!\Add2~20\ & VCC))
-- \Add2~22\ = CARRY((valor_int2(8) & !\Add2~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(8),
	datad => VCC,
	cin => \Add2~20\,
	combout => \Add2~21_combout\,
	cout => \Add2~22\);

-- Location: LCCOMB_X14_Y20_N22
\Add2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~25_combout\ = \Add2~22\ $ (valor_int2(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => valor_int2(9),
	cin => \Add2~22\,
	combout => \Add2~25_combout\);

-- Location: LCCOMB_X14_Y20_N2
\Add2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~27_combout\ = (\btn_inc~input_o\ & ((\Add2~25_combout\) # (!\LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_inc~input_o\,
	datac => \Add2~25_combout\,
	datad => \LessThan3~1_combout\,
	combout => \Add2~27_combout\);

-- Location: LCCOMB_X14_Y20_N0
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\Add2~27_combout\) # ((!\btn_inc~input_o\ & (\Add3~18_combout\ & \LessThan5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \Add3~18_combout\,
	datac => \LessThan5~4_combout\,
	datad => \Add2~27_combout\,
	combout => \Add2~28_combout\);

-- Location: FF_X14_Y20_N1
\valor_int2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(9));

-- Location: LCCOMB_X12_Y20_N24
\LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = ((\LessThan3~0_combout\) # (!valor_int2(9))) # (!valor_int2(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(8),
	datac => valor_int2(9),
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X12_Y20_N22
\Add2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~23_combout\ = (\btn_dec~input_o\ & (\Add3~16_combout\ & ((\LessThan5~2_combout\) # (\LessThan5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_dec~input_o\,
	datab => \LessThan5~2_combout\,
	datac => \LessThan5~3_combout\,
	datad => \Add3~16_combout\,
	combout => \Add2~23_combout\);

-- Location: LCCOMB_X11_Y20_N20
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\btn_inc~input_o\ & (((\Add2~21_combout\)) # (!\LessThan3~1_combout\))) # (!\btn_inc~input_o\ & (((\Add2~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \LessThan3~1_combout\,
	datac => \Add2~21_combout\,
	datad => \Add2~23_combout\,
	combout => \Add2~24_combout\);

-- Location: LCCOMB_X11_Y20_N6
\Add2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~29_combout\ = (\Add2~24_combout\) # ((!\btn_inc~input_o\ & (!\btn_dec~input_o\ & valor_int2(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datab => \btn_dec~input_o\,
	datac => valor_int2(8),
	datad => \Add2~24_combout\,
	combout => \Add2~29_combout\);

-- Location: FF_X11_Y20_N7
\valor_int2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(8));

-- Location: LCCOMB_X12_Y20_N20
\LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (valor_int2(8)) # (valor_int2(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(8),
	datac => valor_int2(9),
	combout => \LessThan5~3_combout\);

-- Location: LCCOMB_X13_Y20_N6
\valor_int2[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[6]~13_combout\ = (!\btn_inc~input_o\ & (!\Add3~12_combout\ & ((\LessThan5~2_combout\) # (\LessThan5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => \LessThan5~3_combout\,
	datac => \btn_inc~input_o\,
	datad => \Add3~12_combout\,
	combout => \valor_int2[6]~13_combout\);

-- Location: LCCOMB_X13_Y20_N24
\valor_int2[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[6]~14_combout\ = (\btn_inc~input_o\ & ((!\Add2~17_combout\) # (!\LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan3~1_combout\,
	datac => \btn_inc~input_o\,
	datad => \Add2~17_combout\,
	combout => \valor_int2[6]~14_combout\);

-- Location: LCCOMB_X13_Y20_N12
\valor_int2[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[6]~15_combout\ = (\valor_int2[0]~4_combout\ & ((\valor_int2[6]~13_combout\) # ((\valor_int2[6]~14_combout\)))) # (!\valor_int2[0]~4_combout\ & (((valor_int2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \valor_int2[6]~13_combout\,
	datab => \valor_int2[0]~4_combout\,
	datac => valor_int2(6),
	datad => \valor_int2[6]~14_combout\,
	combout => \valor_int2[6]~15_combout\);

-- Location: FF_X13_Y20_N13
\valor_int2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2[6]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => valor_int2(6));

-- Location: LCCOMB_X13_Y20_N22
\LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (valor_int2(4)) # ((valor_int2(5)) # ((!valor_int2(1) & valor_int2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(1),
	datab => valor_int2(4),
	datac => valor_int2(0),
	datad => valor_int2(5),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X13_Y20_N28
\LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (valor_int2(2)) # (valor_int2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valor_int2(2),
	datad => valor_int2(3),
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X13_Y20_N26
\LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (!valor_int2(6) & (!valor_int2(7) & ((\LessThan5~0_combout\) # (\LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valor_int2(6),
	datab => valor_int2(7),
	datac => \LessThan5~0_combout\,
	datad => \LessThan5~1_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X13_Y20_N14
\valor_int2[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2[0]~19_combout\ = (\LessThan5~2_combout\) # ((valor_int2(9)) # ((\btn_inc~input_o\) # (valor_int2(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~2_combout\,
	datab => valor_int2(9),
	datac => \btn_inc~input_o\,
	datad => valor_int2(8),
	combout => \valor_int2[0]~19_combout\);

-- Location: LCCOMB_X11_Y20_N28
\valor_int2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2~2_combout\ = (!\btn_inc~input_o\ & \Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_inc~input_o\,
	datac => \Add3~0_combout\,
	combout => \valor_int2~2_combout\);

-- Location: LCCOMB_X13_Y20_N4
\valor_int2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \valor_int2~3_combout\ = (\valor_int2[0]~19_combout\ & ((\valor_int2~2_combout\) # ((\Add2~2_combout\ & \Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \valor_int2[0]~19_combout\,
	datac => \Add2~4_combout\,
	datad => \valor_int2~2_combout\,
	combout => \valor_int2~3_combout\);

-- Location: FF_X13_Y20_N5
\valor_int2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valor_int2~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \valor_int2[0]~4_combout\,
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


