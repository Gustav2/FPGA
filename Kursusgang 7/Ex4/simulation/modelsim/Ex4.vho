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

-- DATE "01/07/2024 15:38:43"

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
	x : IN std_logic;
	y : IN std_logic;
	cin : IN std_logic;
	cout : BUFFER std_logic;
	result : BUFFER std_logic
	);
END Ex4;

-- Design Ports Information
-- cout	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_result : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;
SIGNAL \result~0_combout\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;
SIGNAL \ALT_INV_y~input_o\ : std_logic;
SIGNAL \ALT_INV_x~input_o\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_cin <= cin;
cout <= ww_cout;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;
\ALT_INV_y~input_o\ <= NOT \y~input_o\;
\ALT_INV_x~input_o\ <= NOT \x~input_o\;

-- Location: IOOBUF_X0_Y18_N96
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cout~0_combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOOBUF_X0_Y18_N79
\result~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \result~0_combout\,
	devoe => ww_devoe,
	o => ww_result);

-- Location: IOIBUF_X33_Y0_N41
\x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\y~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: MLABCELL_X28_Y4_N30
\cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cout~0_combout\ = ( \y~input_o\ & ( \cin~input_o\ ) ) # ( !\y~input_o\ & ( \cin~input_o\ & ( \x~input_o\ ) ) ) # ( \y~input_o\ & ( !\cin~input_o\ & ( \x~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x~input_o\,
	datae => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \cout~0_combout\);

-- Location: MLABCELL_X28_Y4_N9
\result~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \result~0_combout\ = ( \y~input_o\ & ( \cin~input_o\ & ( \x~input_o\ ) ) ) # ( !\y~input_o\ & ( \cin~input_o\ & ( !\x~input_o\ ) ) ) # ( \y~input_o\ & ( !\cin~input_o\ & ( !\x~input_o\ ) ) ) # ( !\y~input_o\ & ( !\cin~input_o\ & ( \x~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~input_o\,
	datae => \ALT_INV_y~input_o\,
	dataf => \ALT_INV_cin~input_o\,
	combout => \result~0_combout\);

-- Location: LABCELL_X31_Y8_N3
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


