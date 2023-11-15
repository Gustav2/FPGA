-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "11/15/2023 11:25:22"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Ex4 IS
    PORT (
	switches : IN std_logic_vector(7 DOWNTO 0);
	LEDs : OUT std_logic_vector(7 DOWNTO 0)
	);
END Ex4;

-- Design Ports Information
-- switches[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[7]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[7]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[4]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Ex4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switches : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDs : std_logic_vector(7 DOWNTO 0);
SIGNAL \switches[2]~input_o\ : std_logic;
SIGNAL \switches[3]~input_o\ : std_logic;
SIGNAL \switches[6]~input_o\ : std_logic;
SIGNAL \switches[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \switches[4]~input_o\ : std_logic;
SIGNAL \switches[0]~input_o\ : std_logic;
SIGNAL \result~0_combout\ : std_logic;
SIGNAL \switches[1]~input_o\ : std_logic;
SIGNAL \switches[5]~input_o\ : std_logic;
SIGNAL \result~1_combout\ : std_logic;
SIGNAL \ALT_INV_switches[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_switches[5]~input_o\ : std_logic;

BEGIN

ww_switches <= switches;
LEDs <= ww_LEDs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_switches[0]~input_o\ <= NOT \switches[0]~input_o\;
\ALT_INV_switches[4]~input_o\ <= NOT \switches[4]~input_o\;
\ALT_INV_switches[1]~input_o\ <= NOT \switches[1]~input_o\;
\ALT_INV_switches[5]~input_o\ <= NOT \switches[5]~input_o\;

-- Location: IOOBUF_X54_Y16_N5
\LEDs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDs(0));

-- Location: IOOBUF_X54_Y14_N96
\LEDs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDs(1));

-- Location: IOOBUF_X52_Y0_N19
\LEDs[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDs(2));

-- Location: IOOBUF_X18_Y0_N36
\LEDs[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDs(3));

-- Location: IOOBUF_X48_Y45_N2
\LEDs[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDs(4));

-- Location: IOOBUF_X8_Y45_N59
\LEDs[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDs(5));

-- Location: IOOBUF_X32_Y45_N59
\LEDs[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDs(6));

-- Location: IOOBUF_X0_Y21_N5
\LEDs[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDs(7));

-- Location: IOIBUF_X54_Y14_N78
\switches[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(4),
	o => \switches[4]~input_o\);

-- Location: IOIBUF_X54_Y15_N55
\switches[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(0),
	o => \switches[0]~input_o\);

-- Location: LABCELL_X53_Y14_N0
\result~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~0_combout\ = ( \switches[0]~input_o\ & ( !\switches[4]~input_o\ ) ) # ( !\switches[0]~input_o\ & ( \switches[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switches[4]~input_o\,
	dataf => \ALT_INV_switches[0]~input_o\,
	combout => \result~0_combout\);

-- Location: IOIBUF_X54_Y14_N61
\switches[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(1),
	o => \switches[1]~input_o\);

-- Location: IOIBUF_X54_Y14_N44
\switches[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(5),
	o => \switches[5]~input_o\);

-- Location: LABCELL_X53_Y14_N9
\result~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~1_combout\ = ( \switches[5]~input_o\ & ( \switches[0]~input_o\ & ( !\switches[4]~input_o\ $ (\switches[1]~input_o\) ) ) ) # ( !\switches[5]~input_o\ & ( \switches[0]~input_o\ & ( !\switches[4]~input_o\ $ (!\switches[1]~input_o\) ) ) ) # ( 
-- \switches[5]~input_o\ & ( !\switches[0]~input_o\ & ( !\switches[1]~input_o\ ) ) ) # ( !\switches[5]~input_o\ & ( !\switches[0]~input_o\ & ( \switches[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switches[4]~input_o\,
	datac => \ALT_INV_switches[1]~input_o\,
	datae => \ALT_INV_switches[5]~input_o\,
	dataf => \ALT_INV_switches[0]~input_o\,
	combout => \result~1_combout\);

-- Location: IOIBUF_X16_Y0_N41
\switches[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(2),
	o => \switches[2]~input_o\);

-- Location: IOIBUF_X50_Y45_N35
\switches[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(3),
	o => \switches[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\switches[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(6),
	o => \switches[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N92
\switches[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(7),
	o => \switches[7]~input_o\);

-- Location: LABCELL_X20_Y16_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


