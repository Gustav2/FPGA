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

-- DATE "11/15/2023 12:33:04"

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

ENTITY 	Ex5 IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	cin : IN std_logic;
	cout : BUFFER std_logic;
	result : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Ex5;

-- Design Ports Information
-- cout	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Ex5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_result : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \u2|cout~combout\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \u4|cout~combout\ : std_logic;
SIGNAL \u1|result~combout\ : std_logic;
SIGNAL \u2|result~combout\ : std_logic;
SIGNAL \u3|result~combout\ : std_logic;
SIGNAL \u4|result~combout\ : std_logic;
SIGNAL \ALT_INV_x[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[3]~input_o\ : std_logic;
SIGNAL \u2|ALT_INV_cout~combout\ : std_logic;
SIGNAL \ALT_INV_x[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;
SIGNAL \ALT_INV_y[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[1]~input_o\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_cin <= cin;
cout <= ww_cout;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_x[3]~input_o\ <= NOT \x[3]~input_o\;
\ALT_INV_y[3]~input_o\ <= NOT \y[3]~input_o\;
\u2|ALT_INV_cout~combout\ <= NOT \u2|cout~combout\;
\ALT_INV_x[2]~input_o\ <= NOT \x[2]~input_o\;
\ALT_INV_y[2]~input_o\ <= NOT \y[2]~input_o\;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;
\ALT_INV_y[0]~input_o\ <= NOT \y[0]~input_o\;
\ALT_INV_x[0]~input_o\ <= NOT \x[0]~input_o\;
\ALT_INV_y[1]~input_o\ <= NOT \y[1]~input_o\;
\ALT_INV_x[1]~input_o\ <= NOT \x[1]~input_o\;

-- Location: IOOBUF_X0_Y19_N56
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|cout~combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOOBUF_X0_Y18_N79
\result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|result~combout\,
	devoe => ww_devoe,
	o => ww_result(0));

-- Location: IOOBUF_X0_Y18_N96
\result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|result~combout\,
	devoe => ww_devoe,
	o => ww_result(1));

-- Location: IOOBUF_X0_Y18_N62
\result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|result~combout\,
	devoe => ww_devoe,
	o => ww_result(2));

-- Location: IOOBUF_X0_Y18_N45
\result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|result~combout\,
	devoe => ww_devoe,
	o => ww_result(3));

-- Location: IOIBUF_X33_Y0_N75
\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LABCELL_X32_Y4_N0
\u2|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|cout~combout\ = ( \x[0]~input_o\ & ( \y[0]~input_o\ & ( (\y[1]~input_o\) # (\x[1]~input_o\) ) ) ) # ( !\x[0]~input_o\ & ( \y[0]~input_o\ & ( (!\cin~input_o\ & (\x[1]~input_o\ & \y[1]~input_o\)) # (\cin~input_o\ & ((\y[1]~input_o\) # (\x[1]~input_o\))) 
-- ) ) ) # ( \x[0]~input_o\ & ( !\y[0]~input_o\ & ( (!\cin~input_o\ & (\x[1]~input_o\ & \y[1]~input_o\)) # (\cin~input_o\ & ((\y[1]~input_o\) # (\x[1]~input_o\))) ) ) ) # ( !\x[0]~input_o\ & ( !\y[0]~input_o\ & ( (\x[1]~input_o\ & \y[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000101110001011100010111000101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datab => \ALT_INV_x[1]~input_o\,
	datac => \ALT_INV_y[1]~input_o\,
	datae => \ALT_INV_x[0]~input_o\,
	dataf => \ALT_INV_y[0]~input_o\,
	combout => \u2|cout~combout\);

-- Location: IOIBUF_X34_Y0_N35
\y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LABCELL_X32_Y4_N39
\u4|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|cout~combout\ = ( \x[3]~input_o\ & ( \y[3]~input_o\ ) ) # ( !\x[3]~input_o\ & ( \y[3]~input_o\ & ( (!\u2|cout~combout\ & (\y[2]~input_o\ & \x[2]~input_o\)) # (\u2|cout~combout\ & ((\x[2]~input_o\) # (\y[2]~input_o\))) ) ) ) # ( \x[3]~input_o\ & ( 
-- !\y[3]~input_o\ & ( (!\u2|cout~combout\ & (\y[2]~input_o\ & \x[2]~input_o\)) # (\u2|cout~combout\ & ((\x[2]~input_o\) # (\y[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100010001011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_cout~combout\,
	datab => \ALT_INV_y[2]~input_o\,
	datad => \ALT_INV_x[2]~input_o\,
	datae => \ALT_INV_x[3]~input_o\,
	dataf => \ALT_INV_y[3]~input_o\,
	combout => \u4|cout~combout\);

-- Location: LABCELL_X32_Y4_N42
\u1|result\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|result~combout\ = ( \y[0]~input_o\ & ( !\cin~input_o\ $ (\x[0]~input_o\) ) ) # ( !\y[0]~input_o\ & ( !\cin~input_o\ $ (!\x[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_x[0]~input_o\,
	dataf => \ALT_INV_y[0]~input_o\,
	combout => \u1|result~combout\);

-- Location: LABCELL_X32_Y4_N21
\u2|result\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|result~combout\ = ( \x[0]~input_o\ & ( \y[0]~input_o\ & ( !\y[1]~input_o\ $ (\x[1]~input_o\) ) ) ) # ( !\x[0]~input_o\ & ( \y[0]~input_o\ & ( !\y[1]~input_o\ $ (!\x[1]~input_o\ $ (\cin~input_o\)) ) ) ) # ( \x[0]~input_o\ & ( !\y[0]~input_o\ & ( 
-- !\y[1]~input_o\ $ (!\x[1]~input_o\ $ (\cin~input_o\)) ) ) ) # ( !\x[0]~input_o\ & ( !\y[0]~input_o\ & ( !\y[1]~input_o\ $ (!\x[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110101010010101011010101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[1]~input_o\,
	datac => \ALT_INV_x[1]~input_o\,
	datad => \ALT_INV_cin~input_o\,
	datae => \ALT_INV_x[0]~input_o\,
	dataf => \ALT_INV_y[0]~input_o\,
	combout => \u2|result~combout\);

-- Location: LABCELL_X32_Y4_N57
\u3|result\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|result~combout\ = ( \y[2]~input_o\ & ( !\x[2]~input_o\ $ (\u2|cout~combout\) ) ) # ( !\y[2]~input_o\ & ( !\x[2]~input_o\ $ (!\u2|cout~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010101010101101010101010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2]~input_o\,
	datad => \u2|ALT_INV_cout~combout\,
	datae => \ALT_INV_y[2]~input_o\,
	combout => \u3|result~combout\);

-- Location: LABCELL_X32_Y4_N30
\u4|result\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|result~combout\ = ( \x[3]~input_o\ & ( \y[3]~input_o\ & ( (!\x[2]~input_o\ & (\u2|cout~combout\ & \y[2]~input_o\)) # (\x[2]~input_o\ & ((\y[2]~input_o\) # (\u2|cout~combout\))) ) ) ) # ( !\x[3]~input_o\ & ( \y[3]~input_o\ & ( (!\x[2]~input_o\ & 
-- ((!\u2|cout~combout\) # (!\y[2]~input_o\))) # (\x[2]~input_o\ & (!\u2|cout~combout\ & !\y[2]~input_o\)) ) ) ) # ( \x[3]~input_o\ & ( !\y[3]~input_o\ & ( (!\x[2]~input_o\ & ((!\u2|cout~combout\) # (!\y[2]~input_o\))) # (\x[2]~input_o\ & (!\u2|cout~combout\ 
-- & !\y[2]~input_o\)) ) ) ) # ( !\x[3]~input_o\ & ( !\y[3]~input_o\ & ( (!\x[2]~input_o\ & (\u2|cout~combout\ & \y[2]~input_o\)) # (\x[2]~input_o\ & ((\y[2]~input_o\) # (\u2|cout~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111111110101010000011111010101000000000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2]~input_o\,
	datac => \u2|ALT_INV_cout~combout\,
	datad => \ALT_INV_y[2]~input_o\,
	datae => \ALT_INV_x[3]~input_o\,
	dataf => \ALT_INV_y[3]~input_o\,
	combout => \u4|result~combout\);

-- Location: MLABCELL_X42_Y43_N0
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


