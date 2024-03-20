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

-- DATE "02/22/2024 23:28:38"

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

ENTITY 	BCD_8BITS IS
    PORT (
	DATO : IN std_logic_vector(7 DOWNTO 0);
	S1 : IN std_logic;
	S2 : IN std_logic;
	SALIDA : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END BCD_8BITS;

-- Design Ports Information
-- SALIDA[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[7]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[8]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[9]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[11]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[12]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIDA[13]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD_8BITS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DATO : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_SALIDA : std_logic_vector(13 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SALIDA[0]~output_o\ : std_logic;
SIGNAL \SALIDA[1]~output_o\ : std_logic;
SIGNAL \SALIDA[2]~output_o\ : std_logic;
SIGNAL \SALIDA[3]~output_o\ : std_logic;
SIGNAL \SALIDA[4]~output_o\ : std_logic;
SIGNAL \SALIDA[5]~output_o\ : std_logic;
SIGNAL \SALIDA[6]~output_o\ : std_logic;
SIGNAL \SALIDA[7]~output_o\ : std_logic;
SIGNAL \SALIDA[8]~output_o\ : std_logic;
SIGNAL \SALIDA[9]~output_o\ : std_logic;
SIGNAL \SALIDA[10]~output_o\ : std_logic;
SIGNAL \SALIDA[11]~output_o\ : std_logic;
SIGNAL \SALIDA[12]~output_o\ : std_logic;
SIGNAL \SALIDA[13]~output_o\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \DATO[1]~input_o\ : std_logic;
SIGNAL \DATO[0]~input_o\ : std_logic;
SIGNAL \DATO[2]~input_o\ : std_logic;
SIGNAL \DATO[3]~input_o\ : std_logic;
SIGNAL \I0|Mux3~0_combout\ : std_logic;
SIGNAL \SIG2[0]~feeder_combout\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \I0|Mux2~0_combout\ : std_logic;
SIGNAL \I2|I0|I1|Cout~0_combout\ : std_logic;
SIGNAL \I2|I0|I1|HA1|s~0_combout\ : std_logic;
SIGNAL \I0|Mux1~0_combout\ : std_logic;
SIGNAL \SIG2[2]~feeder_combout\ : std_logic;
SIGNAL \I2|CS4~0_combout\ : std_logic;
SIGNAL \I0|Mux0~0_combout\ : std_logic;
SIGNAL \I2|I0|I2|Cout~0_combout\ : std_logic;
SIGNAL \I2|CS4~1_combout\ : std_logic;
SIGNAL \I2|I0|I3|Cout~0_combout\ : std_logic;
SIGNAL \I2|I1|s~combout\ : std_logic;
SIGNAL \I2|I0|I0|HA0|s~combout\ : std_logic;
SIGNAL \I2|I0|I2|HA1|s~0_combout\ : std_logic;
SIGNAL \I2|I2|HA1|s~0_combout\ : std_logic;
SIGNAL \I4|Mux6~0_combout\ : std_logic;
SIGNAL \I4|Mux5~0_combout\ : std_logic;
SIGNAL \I4|Mux4~0_combout\ : std_logic;
SIGNAL \I4|Mux3~0_combout\ : std_logic;
SIGNAL \I4|Mux2~0_combout\ : std_logic;
SIGNAL \I4|Mux1~0_combout\ : std_logic;
SIGNAL \I4|Mux0~0_combout\ : std_logic;
SIGNAL \DATO[5]~input_o\ : std_logic;
SIGNAL \DATO[6]~input_o\ : std_logic;
SIGNAL \DATO[4]~input_o\ : std_logic;
SIGNAL \DATO[7]~input_o\ : std_logic;
SIGNAL \I1|Mux3~0_combout\ : std_logic;
SIGNAL \SIG2[4]~feeder_combout\ : std_logic;
SIGNAL \I3|I0|I0|HA1|s~combout\ : std_logic;
SIGNAL \I3|I0|I0|Cout~0_combout\ : std_logic;
SIGNAL \I1|Mux2~0_combout\ : std_logic;
SIGNAL \SIG2[5]~feeder_combout\ : std_logic;
SIGNAL \I3|I0|I1|Cout~0_combout\ : std_logic;
SIGNAL \I1|Mux1~0_combout\ : std_logic;
SIGNAL \I3|I0|I2|Cout~0_combout\ : std_logic;
SIGNAL \I3|I0|I1|HA1|s~0_combout\ : std_logic;
SIGNAL \I3|I2|Cout~0_combout\ : std_logic;
SIGNAL \I1|Mux0~0_combout\ : std_logic;
SIGNAL \SIG2[7]~feeder_combout\ : std_logic;
SIGNAL \I3|I0|I2|HA1|s~0_combout\ : std_logic;
SIGNAL \I3|CS4~0_combout\ : std_logic;
SIGNAL \I3|I2|HA1|s~0_combout\ : std_logic;
SIGNAL \I3|I1|s~combout\ : std_logic;
SIGNAL \I5|Mux6~0_combout\ : std_logic;
SIGNAL \I5|Mux5~0_combout\ : std_logic;
SIGNAL \I5|Mux4~0_combout\ : std_logic;
SIGNAL \I5|Mux3~0_combout\ : std_logic;
SIGNAL \I5|Mux2~0_combout\ : std_logic;
SIGNAL \I5|Mux1~0_combout\ : std_logic;
SIGNAL \I5|Mux0~0_combout\ : std_logic;
SIGNAL \I2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL SIG2 : std_logic_vector(7 DOWNTO 0);
SIGNAL SIG1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \I3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \I4|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_DATO <= DATO;
ww_S1 <= S1;
ww_S2 <= S2;
SALIDA <= ww_SALIDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\I5|ALT_INV_Mux0~0_combout\ <= NOT \I5|Mux0~0_combout\;
\I4|ALT_INV_Mux0~0_combout\ <= NOT \I4|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
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

-- Location: IOOBUF_X58_Y54_N16
\SALIDA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\SALIDA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\SALIDA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\SALIDA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\SALIDA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\SALIDA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\SALIDA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\SALIDA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[7]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\SALIDA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[8]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\SALIDA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[9]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\SALIDA[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[10]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\SALIDA[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[11]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\SALIDA[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[12]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\SALIDA[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SALIDA[13]~output_o\);

-- Location: IOIBUF_X69_Y54_N1
\S2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\DATO[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATO(1),
	o => \DATO[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\DATO[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATO(0),
	o => \DATO[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\DATO[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATO(2),
	o => \DATO[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\DATO[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATO(3),
	o => \DATO[3]~input_o\);

-- Location: LCCOMB_X57_Y52_N24
\I0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Mux3~0_combout\ = (\DATO[0]~input_o\ & (((!\DATO[1]~input_o\ & !\DATO[2]~input_o\)) # (!\DATO[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATO[1]~input_o\,
	datab => \DATO[0]~input_o\,
	datac => \DATO[2]~input_o\,
	datad => \DATO[3]~input_o\,
	combout => \I0|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y52_N0
\SIG2[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SIG2[0]~feeder_combout\ = \I0|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I0|Mux3~0_combout\,
	combout => \SIG2[0]~feeder_combout\);

-- Location: FF_X69_Y52_N1
\SIG2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S2~input_o\,
	d => \SIG2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG2(0));

-- Location: IOIBUF_X56_Y54_N1
\S1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: LCCOMB_X57_Y52_N0
\I0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Mux2~0_combout\ = (\DATO[1]~input_o\ & !\DATO[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATO[1]~input_o\,
	datad => \DATO[3]~input_o\,
	combout => \I0|Mux2~0_combout\);

-- Location: FF_X57_Y52_N1
\SIG1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S1~input_o\,
	d => \I0|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG1(1));

-- Location: FF_X69_Y52_N31
\SIG2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S2~input_o\,
	asdata => \I0|Mux2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG2(1));

-- Location: FF_X57_Y52_N25
\SIG1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S1~input_o\,
	d => \I0|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG1(0));

-- Location: LCCOMB_X57_Y52_N26
\I2|I0|I1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|I1|Cout~0_combout\ = (SIG1(1) & ((SIG2(1)) # ((SIG2(0) & SIG1(0))))) # (!SIG1(1) & (SIG2(0) & (SIG2(1) & SIG1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SIG2(0),
	datab => SIG1(1),
	datac => SIG2(1),
	datad => SIG1(0),
	combout => \I2|I0|I1|Cout~0_combout\);

-- Location: LCCOMB_X57_Y52_N8
\I2|I0|I1|HA1|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|I1|HA1|s~0_combout\ = SIG1(1) $ (SIG2(1) $ (((SIG2(0) & SIG1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SIG2(0),
	datab => SIG1(1),
	datac => SIG2(1),
	datad => SIG1(0),
	combout => \I2|I0|I1|HA1|s~0_combout\);

-- Location: LCCOMB_X57_Y52_N6
\I0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Mux1~0_combout\ = (\DATO[2]~input_o\ & !\DATO[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATO[2]~input_o\,
	datad => \DATO[3]~input_o\,
	combout => \I0|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y52_N28
\SIG2[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SIG2[2]~feeder_combout\ = \I0|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I0|Mux1~0_combout\,
	combout => \SIG2[2]~feeder_combout\);

-- Location: FF_X69_Y52_N29
\SIG2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S2~input_o\,
	d => \SIG2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG2(2));

-- Location: FF_X57_Y52_N7
\SIG1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S1~input_o\,
	d => \I0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG1(2));

-- Location: LCCOMB_X57_Y52_N10
\I2|CS4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|CS4~0_combout\ = (\I2|I0|I1|HA1|s~0_combout\) # (\I2|I0|I1|Cout~0_combout\ $ (SIG2(2) $ (SIG1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|I1|Cout~0_combout\,
	datab => \I2|I0|I1|HA1|s~0_combout\,
	datac => SIG2(2),
	datad => SIG1(2),
	combout => \I2|CS4~0_combout\);

-- Location: LCCOMB_X57_Y52_N20
\I0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Mux0~0_combout\ = (!\DATO[1]~input_o\ & (!\DATO[2]~input_o\ & \DATO[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATO[1]~input_o\,
	datac => \DATO[2]~input_o\,
	datad => \DATO[3]~input_o\,
	combout => \I0|Mux0~0_combout\);

-- Location: FF_X57_Y52_N21
\SIG1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S1~input_o\,
	d => \I0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG1(3));

-- Location: FF_X69_Y52_N3
\SIG2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S2~input_o\,
	asdata => \I0|Mux0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG2(3));

-- Location: LCCOMB_X57_Y52_N28
\I2|I0|I2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|I2|Cout~0_combout\ = (\I2|I0|I1|Cout~0_combout\ & ((SIG2(2)) # (SIG1(2)))) # (!\I2|I0|I1|Cout~0_combout\ & (SIG2(2) & SIG1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|I1|Cout~0_combout\,
	datac => SIG2(2),
	datad => SIG1(2),
	combout => \I2|I0|I2|Cout~0_combout\);

-- Location: LCCOMB_X57_Y52_N4
\I2|S[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|S\(3) = (\I2|CS4~0_combout\ & ((SIG1(3) & (SIG2(3) $ (\I2|I0|I2|Cout~0_combout\))) # (!SIG1(3) & (SIG2(3) & \I2|I0|I2|Cout~0_combout\)))) # (!\I2|CS4~0_combout\ & (SIG1(3) $ (SIG2(3) $ (\I2|I0|I2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|CS4~0_combout\,
	datab => SIG1(3),
	datac => SIG2(3),
	datad => \I2|I0|I2|Cout~0_combout\,
	combout => \I2|S\(3));

-- Location: LCCOMB_X57_Y52_N12
\I2|CS4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|CS4~1_combout\ = (\I2|CS4~0_combout\ & (SIG1(3) $ (SIG2(3) $ (\I2|I0|I2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|CS4~0_combout\,
	datab => SIG1(3),
	datac => SIG2(3),
	datad => \I2|I0|I2|Cout~0_combout\,
	combout => \I2|CS4~1_combout\);

-- Location: LCCOMB_X57_Y52_N22
\I2|I0|I3|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|I3|Cout~0_combout\ = (SIG1(3) & ((SIG2(3)) # (\I2|I0|I2|Cout~0_combout\))) # (!SIG1(3) & (SIG2(3) & \I2|I0|I2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SIG1(3),
	datac => SIG2(3),
	datad => \I2|I0|I2|Cout~0_combout\,
	combout => \I2|I0|I3|Cout~0_combout\);

-- Location: LCCOMB_X57_Y52_N14
\I2|I1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I1|s~combout\ = \I2|I0|I1|HA1|s~0_combout\ $ (((\I2|CS4~1_combout\) # (\I2|I0|I3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|CS4~1_combout\,
	datab => \I2|I0|I1|HA1|s~0_combout\,
	datac => \I2|I0|I3|Cout~0_combout\,
	combout => \I2|I1|s~combout\);

-- Location: LCCOMB_X57_Y52_N2
\I2|I0|I0|HA0|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|I0|HA0|s~combout\ = SIG1(0) $ (SIG2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SIG1(0),
	datad => SIG2(0),
	combout => \I2|I0|I0|HA0|s~combout\);

-- Location: LCCOMB_X57_Y52_N16
\I2|I0|I2|HA1|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I0|I2|HA1|s~0_combout\ = \I2|I0|I1|Cout~0_combout\ $ (SIG2(2) $ (SIG1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|I0|I1|Cout~0_combout\,
	datac => SIG2(2),
	datad => SIG1(2),
	combout => \I2|I0|I2|HA1|s~0_combout\);

-- Location: LCCOMB_X57_Y52_N18
\I2|I2|HA1|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I2|I2|HA1|s~0_combout\ = \I2|I0|I2|HA1|s~0_combout\ $ (((!\I2|I0|I1|HA1|s~0_combout\ & ((\I2|CS4~1_combout\) # (\I2|I0|I3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|CS4~1_combout\,
	datab => \I2|I0|I1|HA1|s~0_combout\,
	datac => \I2|I0|I3|Cout~0_combout\,
	datad => \I2|I0|I2|HA1|s~0_combout\,
	combout => \I2|I2|HA1|s~0_combout\);

-- Location: LCCOMB_X61_Y52_N8
\I4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Mux6~0_combout\ = (\I2|I1|s~combout\ & (\I2|S\(3))) # (!\I2|I1|s~combout\ & (\I2|I2|HA1|s~0_combout\ $ (((!\I2|S\(3) & \I2|I0|I0|HA0|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|S\(3),
	datab => \I2|I1|s~combout\,
	datac => \I2|I0|I0|HA0|s~combout\,
	datad => \I2|I2|HA1|s~0_combout\,
	combout => \I4|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y52_N26
\I4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Mux5~0_combout\ = (\I2|S\(3) & ((\I2|I1|s~combout\) # ((\I2|I2|HA1|s~0_combout\)))) # (!\I2|S\(3) & (\I2|I2|HA1|s~0_combout\ & (\I2|I1|s~combout\ $ (\I2|I0|I0|HA0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|S\(3),
	datab => \I2|I1|s~combout\,
	datac => \I2|I0|I0|HA0|s~combout\,
	datad => \I2|I2|HA1|s~0_combout\,
	combout => \I4|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y52_N28
\I4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Mux4~0_combout\ = (\I2|I2|HA1|s~0_combout\ & (\I2|S\(3))) # (!\I2|I2|HA1|s~0_combout\ & (\I2|I1|s~combout\ & ((\I2|S\(3)) # (!\I2|I0|I0|HA0|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|S\(3),
	datab => \I2|I1|s~combout\,
	datac => \I2|I0|I0|HA0|s~combout\,
	datad => \I2|I2|HA1|s~0_combout\,
	combout => \I4|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y52_N30
\I4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Mux3~0_combout\ = (\I2|I1|s~combout\ & ((\I2|S\(3)) # ((\I2|I0|I0|HA0|s~combout\ & \I2|I2|HA1|s~0_combout\)))) # (!\I2|I1|s~combout\ & (\I2|I2|HA1|s~0_combout\ $ (((!\I2|S\(3) & \I2|I0|I0|HA0|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|S\(3),
	datab => \I2|I1|s~combout\,
	datac => \I2|I0|I0|HA0|s~combout\,
	datad => \I2|I2|HA1|s~0_combout\,
	combout => \I4|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y52_N0
\I4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Mux2~0_combout\ = (\I2|I0|I0|HA0|s~combout\) # ((\I2|I1|s~combout\ & (\I2|S\(3))) # (!\I2|I1|s~combout\ & ((\I2|I2|HA1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|S\(3),
	datab => \I2|I1|s~combout\,
	datac => \I2|I0|I0|HA0|s~combout\,
	datad => \I2|I2|HA1|s~0_combout\,
	combout => \I4|Mux2~0_combout\);

-- Location: LCCOMB_X61_Y52_N10
\I4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Mux1~0_combout\ = (\I2|I0|I0|HA0|s~combout\ & ((\I2|I1|s~combout\) # (\I2|S\(3) $ (!\I2|I2|HA1|s~0_combout\)))) # (!\I2|I0|I0|HA0|s~combout\ & ((\I2|I2|HA1|s~0_combout\ & (\I2|S\(3))) # (!\I2|I2|HA1|s~0_combout\ & ((\I2|I1|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|S\(3),
	datab => \I2|I1|s~combout\,
	datac => \I2|I0|I0|HA0|s~combout\,
	datad => \I2|I2|HA1|s~0_combout\,
	combout => \I4|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y52_N12
\I4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I4|Mux0~0_combout\ = (\I2|I1|s~combout\ & (!\I2|S\(3) & ((!\I2|I2|HA1|s~0_combout\) # (!\I2|I0|I0|HA0|s~combout\)))) # (!\I2|I1|s~combout\ & (\I2|S\(3) $ (((\I2|I2|HA1|s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2|S\(3),
	datab => \I2|I1|s~combout\,
	datac => \I2|I0|I0|HA0|s~combout\,
	datad => \I2|I2|HA1|s~0_combout\,
	combout => \I4|Mux0~0_combout\);

-- Location: IOIBUF_X49_Y54_N1
\DATO[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATO(5),
	o => \DATO[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\DATO[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATO(6),
	o => \DATO[6]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\DATO[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATO(4),
	o => \DATO[4]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\DATO[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATO(7),
	o => \DATO[7]~input_o\);

-- Location: LCCOMB_X57_Y53_N8
\I1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Mux3~0_combout\ = (\DATO[4]~input_o\ & (((!\DATO[5]~input_o\ & !\DATO[6]~input_o\)) # (!\DATO[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATO[5]~input_o\,
	datab => \DATO[6]~input_o\,
	datac => \DATO[4]~input_o\,
	datad => \DATO[7]~input_o\,
	combout => \I1|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y53_N24
\SIG2[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SIG2[4]~feeder_combout\ = \I1|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I1|Mux3~0_combout\,
	combout => \SIG2[4]~feeder_combout\);

-- Location: FF_X69_Y53_N25
\SIG2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S2~input_o\,
	d => \SIG2[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG2(4));

-- Location: FF_X57_Y53_N9
\SIG1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S1~input_o\,
	d => \I1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG1(4));

-- Location: LCCOMB_X57_Y53_N2
\I3|I0|I0|HA1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|I0|I0|HA1|s~combout\ = SIG2(4) $ (SIG1(4) $ (((\I2|I0|I3|Cout~0_combout\) # (\I2|CS4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SIG2(4),
	datab => \I2|I0|I3|Cout~0_combout\,
	datac => SIG1(4),
	datad => \I2|CS4~1_combout\,
	combout => \I3|I0|I0|HA1|s~combout\);

-- Location: LCCOMB_X57_Y53_N6
\I3|I0|I0|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|I0|I0|Cout~0_combout\ = (SIG2(4) & ((\I2|I0|I3|Cout~0_combout\) # ((SIG1(4)) # (\I2|CS4~1_combout\)))) # (!SIG2(4) & (SIG1(4) & ((\I2|I0|I3|Cout~0_combout\) # (\I2|CS4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SIG2(4),
	datab => \I2|I0|I3|Cout~0_combout\,
	datac => SIG1(4),
	datad => \I2|CS4~1_combout\,
	combout => \I3|I0|I0|Cout~0_combout\);

-- Location: LCCOMB_X57_Y53_N28
\I1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Mux2~0_combout\ = (\DATO[5]~input_o\ & !\DATO[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATO[5]~input_o\,
	datad => \DATO[7]~input_o\,
	combout => \I1|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y53_N26
\SIG2[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SIG2[5]~feeder_combout\ = \I1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I1|Mux2~0_combout\,
	combout => \SIG2[5]~feeder_combout\);

-- Location: FF_X69_Y53_N27
\SIG2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S2~input_o\,
	d => \SIG2[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG2(5));

-- Location: FF_X57_Y53_N29
\SIG1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S1~input_o\,
	d => \I1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG1(5));

-- Location: LCCOMB_X57_Y53_N22
\I3|I0|I1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|I0|I1|Cout~0_combout\ = (\I3|I0|I0|Cout~0_combout\ & ((SIG2(5)) # (SIG1(5)))) # (!\I3|I0|I0|Cout~0_combout\ & (SIG2(5) & SIG1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I0|Cout~0_combout\,
	datac => SIG2(5),
	datad => SIG1(5),
	combout => \I3|I0|I1|Cout~0_combout\);

-- Location: LCCOMB_X57_Y53_N12
\I1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Mux1~0_combout\ = (\DATO[6]~input_o\ & !\DATO[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATO[6]~input_o\,
	datad => \DATO[7]~input_o\,
	combout => \I1|Mux1~0_combout\);

-- Location: FF_X69_Y53_N29
\SIG2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S2~input_o\,
	asdata => \I1|Mux1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG2(6));

-- Location: FF_X57_Y53_N13
\SIG1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S1~input_o\,
	d => \I1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG1(6));

-- Location: LCCOMB_X57_Y53_N24
\I3|I0|I2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|I0|I2|Cout~0_combout\ = (\I3|I0|I1|Cout~0_combout\ & ((SIG2(6)) # (SIG1(6)))) # (!\I3|I0|I1|Cout~0_combout\ & (SIG2(6) & SIG1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I1|Cout~0_combout\,
	datab => SIG2(6),
	datad => SIG1(6),
	combout => \I3|I0|I2|Cout~0_combout\);

-- Location: LCCOMB_X57_Y53_N0
\I3|I0|I1|HA1|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|I0|I1|HA1|s~0_combout\ = \I3|I0|I0|Cout~0_combout\ $ (SIG2(5) $ (SIG1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I0|Cout~0_combout\,
	datac => SIG2(5),
	datad => SIG1(5),
	combout => \I3|I0|I1|HA1|s~0_combout\);

-- Location: LCCOMB_X57_Y53_N18
\I3|I2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|I2|Cout~0_combout\ = (\I3|I0|I1|HA1|s~0_combout\) # (SIG1(6) $ (\I3|I0|I1|Cout~0_combout\ $ (SIG2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SIG1(6),
	datab => \I3|I0|I1|HA1|s~0_combout\,
	datac => \I3|I0|I1|Cout~0_combout\,
	datad => SIG2(6),
	combout => \I3|I2|Cout~0_combout\);

-- Location: LCCOMB_X57_Y53_N26
\I1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I1|Mux0~0_combout\ = (!\DATO[5]~input_o\ & (!\DATO[6]~input_o\ & \DATO[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATO[5]~input_o\,
	datab => \DATO[6]~input_o\,
	datad => \DATO[7]~input_o\,
	combout => \I1|Mux0~0_combout\);

-- Location: FF_X57_Y53_N11
\SIG1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S1~input_o\,
	asdata => \I1|Mux0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG1(7));

-- Location: LCCOMB_X69_Y53_N30
\SIG2[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SIG2[7]~feeder_combout\ = \I1|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I1|Mux0~0_combout\,
	combout => \SIG2[7]~feeder_combout\);

-- Location: FF_X69_Y53_N31
\SIG2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \S2~input_o\,
	d => \SIG2[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SIG2(7));

-- Location: LCCOMB_X57_Y53_N10
\I3|S[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|S\(3) = (\I3|I0|I2|Cout~0_combout\ & (\I3|I2|Cout~0_combout\ $ (SIG1(7) $ (!SIG2(7))))) # (!\I3|I0|I2|Cout~0_combout\ & ((\I3|I2|Cout~0_combout\ & (SIG1(7) & SIG2(7))) # (!\I3|I2|Cout~0_combout\ & (SIG1(7) $ (SIG2(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I2|Cout~0_combout\,
	datab => \I3|I2|Cout~0_combout\,
	datac => SIG1(7),
	datad => SIG2(7),
	combout => \I3|S\(3));

-- Location: LCCOMB_X57_Y53_N30
\I3|I0|I2|HA1|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|I0|I2|HA1|s~0_combout\ = SIG2(6) $ (((\I3|I0|I0|Cout~0_combout\ & ((SIG2(5)) # (SIG1(5)))) # (!\I3|I0|I0|Cout~0_combout\ & (SIG2(5) & SIG1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I0|Cout~0_combout\,
	datab => SIG2(6),
	datac => SIG2(5),
	datad => SIG1(5),
	combout => \I3|I0|I2|HA1|s~0_combout\);

-- Location: LCCOMB_X57_Y53_N4
\I3|CS4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|CS4~0_combout\ = (SIG1(7) & ((\I3|I2|Cout~0_combout\) # ((\I3|I0|I2|Cout~0_combout\) # (SIG2(7))))) # (!SIG1(7) & ((\I3|I2|Cout~0_combout\ & ((\I3|I0|I2|Cout~0_combout\) # (SIG2(7)))) # (!\I3|I2|Cout~0_combout\ & (\I3|I0|I2|Cout~0_combout\ & 
-- SIG2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SIG1(7),
	datab => \I3|I2|Cout~0_combout\,
	datac => \I3|I0|I2|Cout~0_combout\,
	datad => SIG2(7),
	combout => \I3|CS4~0_combout\);

-- Location: LCCOMB_X57_Y53_N16
\I3|I2|HA1|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|I2|HA1|s~0_combout\ = \I3|I0|I2|HA1|s~0_combout\ $ (SIG1(6) $ (((!\I3|I0|I1|HA1|s~0_combout\ & \I3|CS4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I2|HA1|s~0_combout\,
	datab => \I3|I0|I1|HA1|s~0_combout\,
	datac => \I3|CS4~0_combout\,
	datad => SIG1(6),
	combout => \I3|I2|HA1|s~0_combout\);

-- Location: LCCOMB_X57_Y53_N20
\I3|I1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I3|I1|s~combout\ = \I3|I0|I0|Cout~0_combout\ $ (\I3|CS4~0_combout\ $ (SIG2(5) $ (SIG1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I0|Cout~0_combout\,
	datab => \I3|CS4~0_combout\,
	datac => SIG2(5),
	datad => SIG1(5),
	combout => \I3|I1|s~combout\);

-- Location: LCCOMB_X65_Y53_N16
\I5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|Mux6~0_combout\ = (\I3|I1|s~combout\ & (((\I3|S\(3))))) # (!\I3|I1|s~combout\ & (\I3|I2|HA1|s~0_combout\ $ (((\I3|I0|I0|HA1|s~combout\ & !\I3|S\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I0|HA1|s~combout\,
	datab => \I3|S\(3),
	datac => \I3|I2|HA1|s~0_combout\,
	datad => \I3|I1|s~combout\,
	combout => \I5|Mux6~0_combout\);

-- Location: LCCOMB_X65_Y53_N10
\I5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|Mux5~0_combout\ = (\I3|S\(3) & (((\I3|I2|HA1|s~0_combout\) # (\I3|I1|s~combout\)))) # (!\I3|S\(3) & (\I3|I2|HA1|s~0_combout\ & (\I3|I0|I0|HA1|s~combout\ $ (\I3|I1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I0|HA1|s~combout\,
	datab => \I3|S\(3),
	datac => \I3|I2|HA1|s~0_combout\,
	datad => \I3|I1|s~combout\,
	combout => \I5|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y53_N20
\I5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|Mux4~0_combout\ = (\I3|I2|HA1|s~0_combout\ & (((\I3|S\(3))))) # (!\I3|I2|HA1|s~0_combout\ & (\I3|I1|s~combout\ & ((\I3|S\(3)) # (!\I3|I0|I0|HA1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I0|HA1|s~combout\,
	datab => \I3|S\(3),
	datac => \I3|I2|HA1|s~0_combout\,
	datad => \I3|I1|s~combout\,
	combout => \I5|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y53_N22
\I5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|Mux3~0_combout\ = (\I3|I1|s~combout\ & ((\I3|S\(3)) # ((\I3|I0|I0|HA1|s~combout\ & \I3|I2|HA1|s~0_combout\)))) # (!\I3|I1|s~combout\ & (\I3|I2|HA1|s~0_combout\ $ (((\I3|I0|I0|HA1|s~combout\ & !\I3|S\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I0|HA1|s~combout\,
	datab => \I3|S\(3),
	datac => \I3|I2|HA1|s~0_combout\,
	datad => \I3|I1|s~combout\,
	combout => \I5|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y53_N24
\I5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|Mux2~0_combout\ = (\I3|I0|I0|HA1|s~combout\) # ((\I3|I1|s~combout\ & (\I3|S\(3))) # (!\I3|I1|s~combout\ & ((\I3|I2|HA1|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I0|HA1|s~combout\,
	datab => \I3|S\(3),
	datac => \I3|I2|HA1|s~0_combout\,
	datad => \I3|I1|s~combout\,
	combout => \I5|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y53_N26
\I5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|Mux1~0_combout\ = (\I3|I0|I0|HA1|s~combout\ & ((\I3|I1|s~combout\) # (\I3|S\(3) $ (!\I3|I2|HA1|s~0_combout\)))) # (!\I3|I0|I0|HA1|s~combout\ & ((\I3|I2|HA1|s~0_combout\ & (\I3|S\(3))) # (!\I3|I2|HA1|s~0_combout\ & ((\I3|I1|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I0|HA1|s~combout\,
	datab => \I3|S\(3),
	datac => \I3|I2|HA1|s~0_combout\,
	datad => \I3|I1|s~combout\,
	combout => \I5|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y53_N28
\I5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I5|Mux0~0_combout\ = (\I3|I2|HA1|s~0_combout\ & (!\I3|S\(3) & ((!\I3|I1|s~combout\) # (!\I3|I0|I0|HA1|s~combout\)))) # (!\I3|I2|HA1|s~0_combout\ & ((\I3|S\(3) $ (\I3|I1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3|I0|I0|HA1|s~combout\,
	datab => \I3|S\(3),
	datac => \I3|I2|HA1|s~0_combout\,
	datad => \I3|I1|s~combout\,
	combout => \I5|Mux0~0_combout\);

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

ww_SALIDA(0) <= \SALIDA[0]~output_o\;

ww_SALIDA(1) <= \SALIDA[1]~output_o\;

ww_SALIDA(2) <= \SALIDA[2]~output_o\;

ww_SALIDA(3) <= \SALIDA[3]~output_o\;

ww_SALIDA(4) <= \SALIDA[4]~output_o\;

ww_SALIDA(5) <= \SALIDA[5]~output_o\;

ww_SALIDA(6) <= \SALIDA[6]~output_o\;

ww_SALIDA(7) <= \SALIDA[7]~output_o\;

ww_SALIDA(8) <= \SALIDA[8]~output_o\;

ww_SALIDA(9) <= \SALIDA[9]~output_o\;

ww_SALIDA(10) <= \SALIDA[10]~output_o\;

ww_SALIDA(11) <= \SALIDA[11]~output_o\;

ww_SALIDA(12) <= \SALIDA[12]~output_o\;

ww_SALIDA(13) <= \SALIDA[13]~output_o\;
END structure;


