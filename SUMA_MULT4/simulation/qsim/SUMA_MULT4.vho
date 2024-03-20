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

-- DATE "02/23/2024 09:20:16"

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

ENTITY 	SUMA_MULT4 IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	M : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END SUMA_MULT4;

-- Design Ports Information
-- M[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[7]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[8]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SUMA_MULT4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_M : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \M[0]~output_o\ : std_logic;
SIGNAL \M[1]~output_o\ : std_logic;
SIGNAL \M[2]~output_o\ : std_logic;
SIGNAL \M[3]~output_o\ : std_logic;
SIGNAL \M[4]~output_o\ : std_logic;
SIGNAL \M[5]~output_o\ : std_logic;
SIGNAL \M[6]~output_o\ : std_logic;
SIGNAL \M[7]~output_o\ : std_logic;
SIGNAL \M[8]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \I0|COEF[0]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \I1|I0|s~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \I1|I1|HA1|s~4_combout\ : std_logic;
SIGNAL \I1|I1|HA1|s~5_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \I1|I6|s~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \I0|COEF[9]~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \I0|COEF[3]~2_combout\ : std_logic;
SIGNAL \I1|I1|Cout~3_combout\ : std_logic;
SIGNAL \I1|I1|Cout~9_combout\ : std_logic;
SIGNAL \I1|I2|HA1|s~combout\ : std_logic;
SIGNAL \I0|COEF[8]~1_combout\ : std_logic;
SIGNAL \I1|I7|HA1|s~combout\ : std_logic;
SIGNAL \I1|I11|HA1|s~combout\ : std_logic;
SIGNAL \I1|I11|HA0|Cout~combout\ : std_logic;
SIGNAL \I1|I2|Cout~0_combout\ : std_logic;
SIGNAL \I0|COEF[10]~5_combout\ : std_logic;
SIGNAL \I1|I5|HA1|s~0_combout\ : std_logic;
SIGNAL \I1|I7|Cout~0_combout\ : std_logic;
SIGNAL \I1|I8|HA1|s~combout\ : std_logic;
SIGNAL \I1|I11|HA1|Cout~combout\ : std_logic;
SIGNAL \I0|COEF[13]~4_combout\ : std_logic;
SIGNAL \I1|I12|HA1|s~combout\ : std_logic;
SIGNAL \I0|COEF[14]~6_combout\ : std_logic;
SIGNAL \I1|I9|HA0|s~combout\ : std_logic;
SIGNAL \I1|I8|Cout~0_combout\ : std_logic;
SIGNAL \I1|I12|Cout~0_combout\ : std_logic;
SIGNAL \I1|I13|HA1|s~combout\ : std_logic;
SIGNAL \I1|I13|Cout~0_combout\ : std_logic;
SIGNAL \I0|COEF[15]~7_combout\ : std_logic;
SIGNAL \I1|I9|Cout~8_combout\ : std_logic;
SIGNAL \I1|I14|HA1|s~combout\ : std_logic;
SIGNAL \I1|I14|Cout~0_combout\ : std_logic;
SIGNAL \I1|I3|Cout~0_combout\ : std_logic;
SIGNAL \I0|COEF[11]~8_combout\ : std_logic;
SIGNAL \I1|I10|Cout~0_combout\ : std_logic;
SIGNAL \I1|I15|HA1|s~combout\ : std_logic;
SIGNAL \I1|I15|Cout~0_combout\ : std_logic;
SIGNAL \I1|I14|HA1|ALT_INV_s~combout\ : std_logic;
SIGNAL \I1|I13|HA1|ALT_INV_s~combout\ : std_logic;
SIGNAL \I1|I12|HA1|ALT_INV_s~combout\ : std_logic;
SIGNAL \I1|I11|HA1|ALT_INV_s~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
M <= ww_M;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\I1|I14|HA1|ALT_INV_s~combout\ <= NOT \I1|I14|HA1|s~combout\;
\I1|I13|HA1|ALT_INV_s~combout\ <= NOT \I1|I13|HA1|s~combout\;
\I1|I12|HA1|ALT_INV_s~combout\ <= NOT \I1|I12|HA1|s~combout\;
\I1|I11|HA1|ALT_INV_s~combout\ <= NOT \I1|I11|HA1|s~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y14_N16
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

-- Location: IOOBUF_X15_Y25_N9
\M[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|COEF[0]~0_combout\,
	devoe => ww_devoe,
	o => \M[0]~output_o\);

-- Location: IOOBUF_X10_Y22_N9
\M[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|I0|s~combout\,
	devoe => ww_devoe,
	o => \M[1]~output_o\);

-- Location: IOOBUF_X13_Y25_N16
\M[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|I6|s~combout\,
	devoe => ww_devoe,
	o => \M[2]~output_o\);

-- Location: IOOBUF_X17_Y25_N9
\M[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|I11|HA1|ALT_INV_s~combout\,
	devoe => ww_devoe,
	o => \M[3]~output_o\);

-- Location: IOOBUF_X17_Y25_N30
\M[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|I12|HA1|ALT_INV_s~combout\,
	devoe => ww_devoe,
	o => \M[4]~output_o\);

-- Location: IOOBUF_X15_Y25_N30
\M[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|I13|HA1|ALT_INV_s~combout\,
	devoe => ww_devoe,
	o => \M[5]~output_o\);

-- Location: IOOBUF_X13_Y25_N2
\M[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|I14|HA1|ALT_INV_s~combout\,
	devoe => ww_devoe,
	o => \M[6]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\M[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|I15|HA1|s~combout\,
	devoe => ww_devoe,
	o => \M[7]~output_o\);

-- Location: IOOBUF_X19_Y25_N23
\M[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I1|I15|Cout~0_combout\,
	devoe => ww_devoe,
	o => \M[8]~output_o\);

-- Location: IOIBUF_X15_Y25_N15
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X31_Y21_N15
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X16_Y24_N24
\I0|COEF[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|COEF[0]~0_combout\ = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \I0|COEF[0]~0_combout\);

-- Location: IOIBUF_X15_Y25_N22
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X17_Y25_N1
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X16_Y23_N8
\I1|I0|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I0|s~combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ $ (((\A[0]~input_o\ & \B[1]~input_o\))))) # (!\B[0]~input_o\ & (((\A[0]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \I1|I0|s~combout\);

-- Location: IOIBUF_X10_Y21_N8
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X16_Y23_N20
\I1|I1|HA1|s~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I1|HA1|s~4_combout\ = \A[2]~input_o\ $ (((\A[1]~input_o\ & (!\A[0]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \I1|I1|HA1|s~4_combout\);

-- Location: LCCOMB_X16_Y23_N6
\I1|I1|HA1|s~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I1|HA1|s~5_combout\ = (\B[0]~input_o\ & (\I1|I1|HA1|s~4_combout\)) # (!\B[0]~input_o\ & (((\A[1]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \I1|I1|HA1|s~4_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \I1|I1|HA1|s~5_combout\);

-- Location: IOIBUF_X10_Y20_N8
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X16_Y23_N4
\I1|I6|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I6|s~combout\ = \I1|I1|HA1|s~5_combout\ $ (((\B[2]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I1|HA1|s~5_combout\,
	datab => \B[2]~input_o\,
	datac => \A[0]~input_o\,
	combout => \I1|I6|s~combout\);

-- Location: IOIBUF_X15_Y25_N1
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X16_Y23_N22
\I0|COEF[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|COEF[9]~3_combout\ = (\B[2]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \I0|COEF[9]~3_combout\);

-- Location: IOIBUF_X13_Y25_N22
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X15_Y23_N8
\I0|COEF[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|COEF[3]~2_combout\ = (\B[0]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	combout => \I0|COEF[3]~2_combout\);

-- Location: LCCOMB_X16_Y23_N14
\I1|I1|Cout~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I1|Cout~3_combout\ = (\A[2]~input_o\) # (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \A[0]~input_o\,
	combout => \I1|I1|Cout~3_combout\);

-- Location: LCCOMB_X16_Y23_N16
\I1|I1|Cout~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I1|Cout~9_combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ & (\I1|I1|Cout~3_combout\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \I1|I1|Cout~3_combout\,
	datad => \B[1]~input_o\,
	combout => \I1|I1|Cout~9_combout\);

-- Location: LCCOMB_X16_Y23_N28
\I1|I2|HA1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I2|HA1|s~combout\ = \I0|COEF[3]~2_combout\ $ (\I1|I1|Cout~9_combout\ $ (((\A[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|COEF[3]~2_combout\,
	datab => \I1|I1|Cout~9_combout\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \I1|I2|HA1|s~combout\);

-- Location: LCCOMB_X16_Y23_N26
\I0|COEF[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|COEF[8]~1_combout\ = (\A[0]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[2]~input_o\,
	combout => \I0|COEF[8]~1_combout\);

-- Location: LCCOMB_X16_Y23_N0
\I1|I7|HA1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I7|HA1|s~combout\ = \I0|COEF[9]~3_combout\ $ (\I1|I2|HA1|s~combout\ $ (((\I0|COEF[8]~1_combout\ & \I1|I1|HA1|s~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|COEF[9]~3_combout\,
	datab => \I1|I2|HA1|s~combout\,
	datac => \I0|COEF[8]~1_combout\,
	datad => \I1|I1|HA1|s~5_combout\,
	combout => \I1|I7|HA1|s~combout\);

-- Location: LCCOMB_X16_Y24_N2
\I1|I11|HA1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I11|HA1|s~combout\ = \I1|I7|HA1|s~combout\ $ (((!\A[0]~input_o\) # (!\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \I1|I7|HA1|s~combout\,
	combout => \I1|I11|HA1|s~combout\);

-- Location: LCCOMB_X16_Y24_N6
\I1|I11|HA0|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I11|HA0|Cout~combout\ = (\B[3]~input_o\ & (!\A[0]~input_o\ & \I1|I7|HA1|s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \I1|I7|HA1|s~combout\,
	combout => \I1|I11|HA0|Cout~combout\);

-- Location: LCCOMB_X16_Y23_N30
\I1|I2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I2|Cout~0_combout\ = (\I0|COEF[3]~2_combout\ & ((\I1|I1|Cout~9_combout\) # ((\A[2]~input_o\ & \B[1]~input_o\)))) # (!\I0|COEF[3]~2_combout\ & (\I1|I1|Cout~9_combout\ & (\A[2]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|COEF[3]~2_combout\,
	datab => \I1|I1|Cout~9_combout\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \I1|I2|Cout~0_combout\);

-- Location: LCCOMB_X16_Y23_N24
\I0|COEF[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|COEF[10]~5_combout\ = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \I0|COEF[10]~5_combout\);

-- Location: LCCOMB_X16_Y23_N12
\I1|I5|HA1|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I5|HA1|s~0_combout\ = (\A[3]~input_o\ & (\B[0]~input_o\ $ (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \I1|I5|HA1|s~0_combout\);

-- Location: LCCOMB_X16_Y23_N2
\I1|I7|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I7|Cout~0_combout\ = (\I0|COEF[9]~3_combout\ & ((\I1|I2|HA1|s~combout\) # ((\I0|COEF[8]~1_combout\ & \I1|I1|HA1|s~5_combout\)))) # (!\I0|COEF[9]~3_combout\ & (\I1|I2|HA1|s~combout\ & (\I0|COEF[8]~1_combout\ & \I1|I1|HA1|s~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|COEF[9]~3_combout\,
	datab => \I1|I2|HA1|s~combout\,
	datac => \I0|COEF[8]~1_combout\,
	datad => \I1|I1|HA1|s~5_combout\,
	combout => \I1|I7|Cout~0_combout\);

-- Location: LCCOMB_X15_Y23_N2
\I1|I8|HA1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I8|HA1|s~combout\ = \I1|I2|Cout~0_combout\ $ (\I0|COEF[10]~5_combout\ $ (\I1|I5|HA1|s~0_combout\ $ (\I1|I7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|Cout~0_combout\,
	datab => \I0|COEF[10]~5_combout\,
	datac => \I1|I5|HA1|s~0_combout\,
	datad => \I1|I7|Cout~0_combout\,
	combout => \I1|I8|HA1|s~combout\);

-- Location: LCCOMB_X16_Y24_N8
\I1|I11|HA1|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I11|HA1|Cout~combout\ = (\B[3]~input_o\ & (\A[0]~input_o\ $ (!\I1|I7|HA1|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \I1|I7|HA1|s~combout\,
	combout => \I1|I11|HA1|Cout~combout\);

-- Location: LCCOMB_X16_Y24_N28
\I0|COEF[13]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|COEF[13]~4_combout\ = (\A[1]~input_o\) # (!\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[1]~input_o\,
	combout => \I0|COEF[13]~4_combout\);

-- Location: LCCOMB_X16_Y24_N26
\I1|I12|HA1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I12|HA1|s~combout\ = \I1|I8|HA1|s~combout\ $ (\I0|COEF[13]~4_combout\ $ (((\I1|I11|HA0|Cout~combout\) # (\I1|I11|HA1|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I11|HA0|Cout~combout\,
	datab => \I1|I8|HA1|s~combout\,
	datac => \I1|I11|HA1|Cout~combout\,
	datad => \I0|COEF[13]~4_combout\,
	combout => \I1|I12|HA1|s~combout\);

-- Location: LCCOMB_X15_Y23_N12
\I0|COEF[14]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|COEF[14]~6_combout\ = (\A[2]~input_o\) # (!\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \I0|COEF[14]~6_combout\);

-- Location: LCCOMB_X16_Y23_N18
\I1|I9|HA0|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I9|HA0|s~combout\ = (\A[3]~input_o\ & (\B[2]~input_o\ $ (((\B[0]~input_o\) # (\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \I1|I9|HA0|s~combout\);

-- Location: LCCOMB_X15_Y23_N6
\I1|I8|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I8|Cout~0_combout\ = (\I0|COEF[10]~5_combout\ & ((\I1|I7|Cout~0_combout\) # (\I1|I2|Cout~0_combout\ $ (\I1|I5|HA1|s~0_combout\)))) # (!\I0|COEF[10]~5_combout\ & (\I1|I7|Cout~0_combout\ & (\I1|I2|Cout~0_combout\ $ (\I1|I5|HA1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I2|Cout~0_combout\,
	datab => \I0|COEF[10]~5_combout\,
	datac => \I1|I5|HA1|s~0_combout\,
	datad => \I1|I7|Cout~0_combout\,
	combout => \I1|I8|Cout~0_combout\);

-- Location: LCCOMB_X16_Y24_N20
\I1|I12|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I12|Cout~0_combout\ = (\I1|I8|HA1|s~combout\ & ((\I1|I11|HA0|Cout~combout\) # ((\I1|I11|HA1|Cout~combout\) # (!\I0|COEF[13]~4_combout\)))) # (!\I1|I8|HA1|s~combout\ & (!\I0|COEF[13]~4_combout\ & ((\I1|I11|HA0|Cout~combout\) # 
-- (\I1|I11|HA1|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I11|HA0|Cout~combout\,
	datab => \I1|I8|HA1|s~combout\,
	datac => \I1|I11|HA1|Cout~combout\,
	datad => \I0|COEF[13]~4_combout\,
	combout => \I1|I12|Cout~0_combout\);

-- Location: LCCOMB_X15_Y23_N0
\I1|I13|HA1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I13|HA1|s~combout\ = \I0|COEF[14]~6_combout\ $ (\I1|I9|HA0|s~combout\ $ (\I1|I8|Cout~0_combout\ $ (\I1|I12|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|COEF[14]~6_combout\,
	datab => \I1|I9|HA0|s~combout\,
	datac => \I1|I8|Cout~0_combout\,
	datad => \I1|I12|Cout~0_combout\,
	combout => \I1|I13|HA1|s~combout\);

-- Location: LCCOMB_X15_Y23_N20
\I1|I13|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I13|Cout~0_combout\ = (\I0|COEF[14]~6_combout\ & (\I1|I12|Cout~0_combout\ & (\I1|I9|HA0|s~combout\ $ (\I1|I8|Cout~0_combout\)))) # (!\I0|COEF[14]~6_combout\ & ((\I1|I12|Cout~0_combout\) # (\I1|I9|HA0|s~combout\ $ (\I1|I8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|COEF[14]~6_combout\,
	datab => \I1|I9|HA0|s~combout\,
	datac => \I1|I8|Cout~0_combout\,
	datad => \I1|I12|Cout~0_combout\,
	combout => \I1|I13|Cout~0_combout\);

-- Location: LCCOMB_X15_Y23_N18
\I0|COEF[15]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|COEF[15]~7_combout\ = (\A[3]~input_o\) # (!\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \I0|COEF[15]~7_combout\);

-- Location: LCCOMB_X16_Y23_N10
\I1|I9|Cout~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I9|Cout~8_combout\ = (\B[2]~input_o\ & (\A[3]~input_o\ & ((\B[0]~input_o\) # (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \I1|I9|Cout~8_combout\);

-- Location: LCCOMB_X15_Y23_N26
\I1|I14|HA1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I14|HA1|s~combout\ = \I1|I13|Cout~0_combout\ $ (\I0|COEF[15]~7_combout\ $ (\I1|I9|Cout~8_combout\ $ (\I1|I9|HA0|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I13|Cout~0_combout\,
	datab => \I0|COEF[15]~7_combout\,
	datac => \I1|I9|Cout~8_combout\,
	datad => \I1|I9|HA0|s~combout\,
	combout => \I1|I14|HA1|s~combout\);

-- Location: LCCOMB_X15_Y23_N22
\I1|I14|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I14|Cout~0_combout\ = (\I1|I13|Cout~0_combout\ & ((\I1|I9|Cout~8_combout\ $ (\I1|I9|HA0|s~combout\)) # (!\I0|COEF[15]~7_combout\))) # (!\I1|I13|Cout~0_combout\ & (!\I0|COEF[15]~7_combout\ & (\I1|I9|Cout~8_combout\ $ (\I1|I9|HA0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I13|Cout~0_combout\,
	datab => \I0|COEF[15]~7_combout\,
	datac => \I1|I9|Cout~8_combout\,
	datad => \I1|I9|HA0|s~combout\,
	combout => \I1|I14|Cout~0_combout\);

-- Location: LCCOMB_X15_Y23_N30
\I1|I3|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I3|Cout~0_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \I1|I3|Cout~0_combout\);

-- Location: LCCOMB_X15_Y23_N24
\I0|COEF[11]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|COEF[11]~8_combout\ = (\A[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \I0|COEF[11]~8_combout\);

-- Location: LCCOMB_X15_Y23_N28
\I1|I10|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I10|Cout~0_combout\ = (\I0|COEF[11]~8_combout\ & ((\I1|I3|Cout~0_combout\) # ((\I1|I5|HA1|s~0_combout\) # (\I1|I8|Cout~0_combout\)))) # (!\I0|COEF[11]~8_combout\ & (\I1|I8|Cout~0_combout\ & (\I1|I3|Cout~0_combout\ $ (\I1|I5|HA1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I3|Cout~0_combout\,
	datab => \I0|COEF[11]~8_combout\,
	datac => \I1|I5|HA1|s~0_combout\,
	datad => \I1|I8|Cout~0_combout\,
	combout => \I1|I10|Cout~0_combout\);

-- Location: LCCOMB_X15_Y23_N16
\I1|I15|HA1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I15|HA1|s~combout\ = \I1|I14|Cout~0_combout\ $ (\I1|I10|Cout~0_combout\ $ (\I1|I3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I14|Cout~0_combout\,
	datab => \I1|I10|Cout~0_combout\,
	datac => \I1|I3|Cout~0_combout\,
	combout => \I1|I15|HA1|s~combout\);

-- Location: LCCOMB_X15_Y23_N10
\I1|I15|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|I15|Cout~0_combout\ = (\I1|I14|Cout~0_combout\ & ((\I1|I10|Cout~0_combout\) # (\I1|I3|Cout~0_combout\))) # (!\I1|I14|Cout~0_combout\ & (\I1|I10|Cout~0_combout\ & \I1|I3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1|I14|Cout~0_combout\,
	datab => \I1|I10|Cout~0_combout\,
	datac => \I1|I3|Cout~0_combout\,
	combout => \I1|I15|Cout~0_combout\);

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

ww_M(0) <= \M[0]~output_o\;

ww_M(1) <= \M[1]~output_o\;

ww_M(2) <= \M[2]~output_o\;

ww_M(3) <= \M[3]~output_o\;

ww_M(4) <= \M[4]~output_o\;

ww_M(5) <= \M[5]~output_o\;

ww_M(6) <= \M[6]~output_o\;

ww_M(7) <= \M[7]~output_o\;

ww_M(8) <= \M[8]~output_o\;
END structure;


