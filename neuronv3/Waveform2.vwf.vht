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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/07/2018 15:29:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Neuron
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Neuron_vhd_vec_tst IS
END Neuron_vhd_vec_tst;
ARCHITECTURE Neuron_arch OF Neuron_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL DN : STD_LOGIC;
SIGNAL O : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
SIGNAL slv_Win : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL slv_Xin : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL start : STD_LOGIC;
COMPONENT Neuron
	PORT (
	clk : IN STD_LOGIC;
	DN : BUFFER STD_LOGIC;
	O : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	RST : IN STD_LOGIC;
	slv_Win : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	slv_Xin : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Neuron
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	DN => DN,
	O => O,
	RST => RST,
	slv_Win => slv_Win,
	slv_Xin => slv_Xin,
	start => start
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;
-- slv_Win[7]
t_prcs_slv_Win_7: PROCESS
BEGIN
	slv_Win(7) <= '0';
WAIT;
END PROCESS t_prcs_slv_Win_7;
-- slv_Win[6]
t_prcs_slv_Win_6: PROCESS
BEGIN
	slv_Win(6) <= '0';
WAIT;
END PROCESS t_prcs_slv_Win_6;
-- slv_Win[5]
t_prcs_slv_Win_5: PROCESS
BEGIN
	slv_Win(5) <= '0';
WAIT;
END PROCESS t_prcs_slv_Win_5;
-- slv_Win[4]
t_prcs_slv_Win_4: PROCESS
BEGIN
	slv_Win(4) <= '0';
WAIT;
END PROCESS t_prcs_slv_Win_4;
-- slv_Win[3]
t_prcs_slv_Win_3: PROCESS
BEGIN
	slv_Win(3) <= '0';
WAIT;
END PROCESS t_prcs_slv_Win_3;
-- slv_Win[2]
t_prcs_slv_Win_2: PROCESS
BEGIN
	slv_Win(2) <= '0';
WAIT;
END PROCESS t_prcs_slv_Win_2;
-- slv_Win[1]
t_prcs_slv_Win_1: PROCESS
BEGIN
	slv_Win(1) <= '0';
	WAIT FOR 20000 ps;
	slv_Win(1) <= '1';
	WAIT FOR 440000 ps;
	slv_Win(1) <= '0';
WAIT;
END PROCESS t_prcs_slv_Win_1;
-- slv_Win[0]
t_prcs_slv_Win_0: PROCESS
BEGIN
	slv_Win(0) <= '0';
	WAIT FOR 660000 ps;
	slv_Win(0) <= '1';
	WAIT FOR 260000 ps;
	slv_Win(0) <= '0';
WAIT;
END PROCESS t_prcs_slv_Win_0;
-- slv_Xin[7]
t_prcs_slv_Xin_7: PROCESS
BEGIN
	slv_Xin(7) <= '0';
WAIT;
END PROCESS t_prcs_slv_Xin_7;
-- slv_Xin[6]
t_prcs_slv_Xin_6: PROCESS
BEGIN
	slv_Xin(6) <= '0';
WAIT;
END PROCESS t_prcs_slv_Xin_6;
-- slv_Xin[5]
t_prcs_slv_Xin_5: PROCESS
BEGIN
	slv_Xin(5) <= '0';
WAIT;
END PROCESS t_prcs_slv_Xin_5;
-- slv_Xin[4]
t_prcs_slv_Xin_4: PROCESS
BEGIN
	slv_Xin(4) <= '0';
WAIT;
END PROCESS t_prcs_slv_Xin_4;
-- slv_Xin[3]
t_prcs_slv_Xin_3: PROCESS
BEGIN
	slv_Xin(3) <= '0';
WAIT;
END PROCESS t_prcs_slv_Xin_3;
-- slv_Xin[2]
t_prcs_slv_Xin_2: PROCESS
BEGIN
	slv_Xin(2) <= '0';
	WAIT FOR 40000 ps;
	slv_Xin(2) <= '1';
	WAIT FOR 320000 ps;
	slv_Xin(2) <= '0';
	WAIT FOR 140000 ps;
	slv_Xin(2) <= '1';
	WAIT FOR 300000 ps;
	slv_Xin(2) <= '0';
WAIT;
END PROCESS t_prcs_slv_Xin_2;
-- slv_Xin[1]
t_prcs_slv_Xin_1: PROCESS
BEGIN
	slv_Xin(1) <= '0';
	WAIT FOR 500000 ps;
	slv_Xin(1) <= '1';
	WAIT FOR 300000 ps;
	slv_Xin(1) <= '0';
WAIT;
END PROCESS t_prcs_slv_Xin_1;
-- slv_Xin[0]
t_prcs_slv_Xin_0: PROCESS
BEGIN
	slv_Xin(0) <= '0';
	WAIT FOR 500000 ps;
	slv_Xin(0) <= '1';
	WAIT FOR 300000 ps;
	slv_Xin(0) <= '0';
WAIT;
END PROCESS t_prcs_slv_Xin_0;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 80000 ps;
	start <= '1';
	WAIT FOR 680000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
END Neuron_arch;
