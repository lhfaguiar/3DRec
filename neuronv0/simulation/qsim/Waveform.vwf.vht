-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/04/2018 14:59:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          neuronio
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY neuronio_vhd_vec_tst IS
END neuronio_vhd_vec_tst;
ARCHITECTURE neuronio_arch OF neuronio_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL SAI : STD_LOGIC;
COMPONENT neuronio
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	SAI : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : neuronio
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	SAI => SAI
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '1';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 4
	LOOP
		A <= '0';
		WAIT FOR 100000 ps;
		A <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		B <= '0';
		WAIT FOR 200000 ps;
		B <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;
END neuronio_arch;
