-- megafunction wizard: %LPM_MUX%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_mux 

-- ============================================================
-- File Name: lpm_mux11.vhd
-- Megafunction Name(s):
-- 			lpm_mux
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 9.0 Build 132 02/25/2009 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2009 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.lpm_components.all;

ENTITY lpm_mux11 IS
	PORT
	(
		data0		: IN STD_LOGIC ;
		data1		: IN STD_LOGIC ;
		data2		: IN STD_LOGIC ;
		data3		: IN STD_LOGIC ;
		sel		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		result		: OUT STD_LOGIC 
	);
END lpm_mux11;


ARCHITECTURE SYN OF lpm_mux11 IS

--	type STD_LOGIC_2D is array (NATURAL RANGE <>, NATURAL RANGE <>) of STD_LOGIC;

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC ;
	SIGNAL sub_wire3	: STD_LOGIC_2D (3 DOWNTO 0, 0 DOWNTO 0);
	SIGNAL sub_wire4	: STD_LOGIC ;
	SIGNAL sub_wire5	: STD_LOGIC ;
	SIGNAL sub_wire6	: STD_LOGIC ;

BEGIN
	sub_wire6    <= data0;
	sub_wire5    <= data1;
	sub_wire4    <= data2;
	sub_wire1    <= sub_wire0(0);
	result    <= sub_wire1;
	sub_wire2    <= data3;
	sub_wire3(3, 0)    <= sub_wire2;
	sub_wire3(2, 0)    <= sub_wire4;
	sub_wire3(1, 0)    <= sub_wire5;
	sub_wire3(0, 0)    <= sub_wire6;

	lpm_mux_component : lpm_mux
	GENERIC MAP (
		lpm_size => 4,
		lpm_type => "LPM_MUX",
		lpm_width => 1,
		lpm_widths => 2
	)
	PORT MAP (
		sel => sel,
		data => sub_wire3,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix II"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: CONSTANT: LPM_SIZE NUMERIC "4"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "1"
-- Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "2"
-- Retrieval info: USED_PORT: data0 0 0 0 0 INPUT NODEFVAL data0
-- Retrieval info: USED_PORT: data1 0 0 0 0 INPUT NODEFVAL data1
-- Retrieval info: USED_PORT: data2 0 0 0 0 INPUT NODEFVAL data2
-- Retrieval info: USED_PORT: data3 0 0 0 0 INPUT NODEFVAL data3
-- Retrieval info: USED_PORT: result 0 0 0 0 OUTPUT NODEFVAL result
-- Retrieval info: USED_PORT: sel 0 0 2 0 INPUT NODEFVAL sel[1..0]
-- Retrieval info: CONNECT: result 0 0 0 0 @result 0 0 1 0
-- Retrieval info: CONNECT: @data 1 3 1 0 data3 0 0 0 0
-- Retrieval info: CONNECT: @data 1 2 1 0 data2 0 0 0 0
-- Retrieval info: CONNECT: @data 1 1 1 0 data1 0 0 0 0
-- Retrieval info: CONNECT: @data 1 0 1 0 data0 0 0 0 0
-- Retrieval info: CONNECT: @sel 0 0 2 0 sel 0 0 2 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux11.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux11.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux11.cmp FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux11.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_mux11_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
