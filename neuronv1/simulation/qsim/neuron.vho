-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/20/2018 09:36:10"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Neuron IS
    PORT (
	slv_Xin : IN std_logic_vector(7 DOWNTO 0);
	slv_Win : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	RST : IN std_logic;
	O : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Neuron;

-- Design Ports Information
-- O[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[10]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[11]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[13]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[14]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[15]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[2]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Neuron IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_slv_Xin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_slv_Win : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_O : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult_Accum|Mult0~mac_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult_Accum|Mult0~mac_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult_Accum|Mult0~mac_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult_Accum|Mult0~mac_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult_Accum|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult_Accum|Mult0~8\ : std_logic;
SIGNAL \Mult_Accum|Mult0~9\ : std_logic;
SIGNAL \Mult_Accum|Mult0~10\ : std_logic;
SIGNAL \Mult_Accum|Mult0~11\ : std_logic;
SIGNAL \Mult_Accum|Mult0~12\ : std_logic;
SIGNAL \Mult_Accum|Mult0~13\ : std_logic;
SIGNAL \Mult_Accum|Mult0~14\ : std_logic;
SIGNAL \Mult_Accum|Mult0~15\ : std_logic;
SIGNAL \Mult_Accum|Mult0~16\ : std_logic;
SIGNAL \Mult_Accum|Mult0~17\ : std_logic;
SIGNAL \Mult_Accum|Mult0~18\ : std_logic;
SIGNAL \Mult_Accum|Mult0~19\ : std_logic;
SIGNAL \Mult_Accum|Mult0~20\ : std_logic;
SIGNAL \Mult_Accum|Mult0~21\ : std_logic;
SIGNAL \Mult_Accum|Mult0~22\ : std_logic;
SIGNAL \Mult_Accum|Mult0~23\ : std_logic;
SIGNAL \Mult_Accum|Mult0~24\ : std_logic;
SIGNAL \Mult_Accum|Mult0~25\ : std_logic;
SIGNAL \Mult_Accum|Mult0~26\ : std_logic;
SIGNAL \Mult_Accum|Mult0~27\ : std_logic;
SIGNAL \Mult_Accum|Mult0~28\ : std_logic;
SIGNAL \Mult_Accum|Mult0~29\ : std_logic;
SIGNAL \Mult_Accum|Mult0~30\ : std_logic;
SIGNAL \Mult_Accum|Mult0~31\ : std_logic;
SIGNAL \Mult_Accum|Mult0~32\ : std_logic;
SIGNAL \Mult_Accum|Mult0~33\ : std_logic;
SIGNAL \Mult_Accum|Mult0~34\ : std_logic;
SIGNAL \Mult_Accum|Mult0~35\ : std_logic;
SIGNAL \Mult_Accum|Mult0~36\ : std_logic;
SIGNAL \Mult_Accum|Mult0~37\ : std_logic;
SIGNAL \Mult_Accum|Mult0~38\ : std_logic;
SIGNAL \Mult_Accum|Mult0~39\ : std_logic;
SIGNAL \Mult_Accum|Mult0~40\ : std_logic;
SIGNAL \Mult_Accum|Mult0~41\ : std_logic;
SIGNAL \Mult_Accum|Mult0~42\ : std_logic;
SIGNAL \Mult_Accum|Mult0~43\ : std_logic;
SIGNAL \Mult_Accum|Mult0~44\ : std_logic;
SIGNAL \Mult_Accum|Mult0~45\ : std_logic;
SIGNAL \Mult_Accum|Mult0~46\ : std_logic;
SIGNAL \Mult_Accum|Mult0~47\ : std_logic;
SIGNAL \Mult_Accum|Mult0~48\ : std_logic;
SIGNAL \Mult_Accum|Mult0~49\ : std_logic;
SIGNAL \Mult_Accum|Mult0~50\ : std_logic;
SIGNAL \Mult_Accum|Mult0~51\ : std_logic;
SIGNAL \Mult_Accum|Mult0~52\ : std_logic;
SIGNAL \Mult_Accum|Mult0~53\ : std_logic;
SIGNAL \Mult_Accum|Mult0~54\ : std_logic;
SIGNAL \Mult_Accum|Mult0~55\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \slv_Xin[0]~input_o\ : std_logic;
SIGNAL \slv_Xin[1]~input_o\ : std_logic;
SIGNAL \slv_Xin[2]~input_o\ : std_logic;
SIGNAL \slv_Xin[3]~input_o\ : std_logic;
SIGNAL \slv_Xin[4]~input_o\ : std_logic;
SIGNAL \slv_Xin[5]~input_o\ : std_logic;
SIGNAL \slv_Xin[6]~input_o\ : std_logic;
SIGNAL \slv_Xin[7]~input_o\ : std_logic;
SIGNAL \slv_Win[0]~input_o\ : std_logic;
SIGNAL \slv_Win[1]~input_o\ : std_logic;
SIGNAL \slv_Win[2]~input_o\ : std_logic;
SIGNAL \slv_Win[3]~input_o\ : std_logic;
SIGNAL \slv_Win[4]~input_o\ : std_logic;
SIGNAL \slv_Win[5]~input_o\ : std_logic;
SIGNAL \slv_Win[6]~input_o\ : std_logic;
SIGNAL \slv_Win[7]~input_o\ : std_logic;
SIGNAL \Mult_Accum|Add0~1_sumout\ : std_logic;
SIGNAL \Mult_Accum|prod[15]~_wirecell_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \Mult_Accum|Add0~2\ : std_logic;
SIGNAL \Mult_Accum|Add0~9_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~10\ : std_logic;
SIGNAL \Mult_Accum|Add0~13_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~14\ : std_logic;
SIGNAL \Mult_Accum|Add0~17_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~18\ : std_logic;
SIGNAL \Mult_Accum|Add0~21_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~22\ : std_logic;
SIGNAL \Mult_Accum|Add0~25_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~26\ : std_logic;
SIGNAL \Mult_Accum|Add0~29_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~30\ : std_logic;
SIGNAL \Mult_Accum|Add0~33_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~34\ : std_logic;
SIGNAL \Mult_Accum|Add0~37_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~38\ : std_logic;
SIGNAL \Mult_Accum|Add0~41_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~42\ : std_logic;
SIGNAL \Mult_Accum|Add0~45_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~46\ : std_logic;
SIGNAL \Mult_Accum|Add0~49_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~50\ : std_logic;
SIGNAL \Mult_Accum|Add0~53_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~54\ : std_logic;
SIGNAL \Mult_Accum|Add0~57_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~58\ : std_logic;
SIGNAL \Mult_Accum|Add0~61_sumout\ : std_logic;
SIGNAL \Mult_Accum|Add0~62\ : std_logic;
SIGNAL \Mult_Accum|Add0~5_sumout\ : std_logic;
SIGNAL \Mult_Accum|add_truncate~0_combout\ : std_logic;
SIGNAL \Activation|O[0]~0_combout\ : std_logic;
SIGNAL \Activation|O[1]~1_combout\ : std_logic;
SIGNAL \Activation|O[2]~2_combout\ : std_logic;
SIGNAL \Activation|O[3]~3_combout\ : std_logic;
SIGNAL \Activation|O[4]~4_combout\ : std_logic;
SIGNAL \Activation|O[5]~5_combout\ : std_logic;
SIGNAL \Activation|O[6]~6_combout\ : std_logic;
SIGNAL \Activation|O[7]~7_combout\ : std_logic;
SIGNAL \Activation|O[8]~8_combout\ : std_logic;
SIGNAL \Activation|O[9]~9_combout\ : std_logic;
SIGNAL \Activation|O[10]~10_combout\ : std_logic;
SIGNAL \Activation|O[11]~11_combout\ : std_logic;
SIGNAL \Activation|O[12]~12_combout\ : std_logic;
SIGNAL \Activation|O[13]~13_combout\ : std_logic;
SIGNAL \Activation|O[14]~14_combout\ : std_logic;
SIGNAL \Mult_Accum|prod\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult_Accum|reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult_Accum|ALT_INV_prod\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult_Accum|ALT_INV_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \Mult_Accum|ALT_INV_Add0~5_sumout\ : std_logic;

BEGIN

ww_slv_Xin <= slv_Xin;
ww_slv_Win <= slv_Win;
ww_clk <= clk;
ww_RST <= RST;
O <= ww_O;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult_Accum|Mult0~mac_AX_bus\ <= (\slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[6]~input_o\ & \slv_Xin[5]~input_o\ & \slv_Xin[4]~input_o\ & \slv_Xin[3]~input_o\ & \slv_Xin[2]~input_o\ & \slv_Xin[1]~input_o\ & \slv_Xin[0]~input_o\);

\Mult_Accum|Mult0~mac_AY_bus\ <= (\slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[6]~input_o\ & \slv_Win[5]~input_o\ & \slv_Win[4]~input_o\ & \slv_Win[3]~input_o\ & \slv_Win[2]~input_o\ & \slv_Win[1]~input_o\ & \slv_Win[0]~input_o\);

\Mult_Accum|Mult0~mac_BX_bus\ <= (\slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\);

\Mult_Accum|Mult0~mac_BY_bus\ <= (\slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\);

\Mult_Accum|prod\(0) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(0);
\Mult_Accum|prod\(1) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(1);
\Mult_Accum|prod\(2) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(2);
\Mult_Accum|prod\(3) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(3);
\Mult_Accum|prod\(4) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(4);
\Mult_Accum|prod\(5) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(5);
\Mult_Accum|prod\(6) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(6);
\Mult_Accum|prod\(7) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(7);
\Mult_Accum|prod\(8) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(8);
\Mult_Accum|prod\(9) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(9);
\Mult_Accum|prod\(10) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(10);
\Mult_Accum|prod\(11) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(11);
\Mult_Accum|prod\(12) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(12);
\Mult_Accum|prod\(13) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(13);
\Mult_Accum|prod\(14) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(14);
\Mult_Accum|prod\(15) <= \Mult_Accum|Mult0~mac_RESULTA_bus\(15);
\Mult_Accum|Mult0~8\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(16);
\Mult_Accum|Mult0~9\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(17);
\Mult_Accum|Mult0~10\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(18);
\Mult_Accum|Mult0~11\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(19);
\Mult_Accum|Mult0~12\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(20);
\Mult_Accum|Mult0~13\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(21);
\Mult_Accum|Mult0~14\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(22);
\Mult_Accum|Mult0~15\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(23);
\Mult_Accum|Mult0~16\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(24);
\Mult_Accum|Mult0~17\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(25);
\Mult_Accum|Mult0~18\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(26);
\Mult_Accum|Mult0~19\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(27);
\Mult_Accum|Mult0~20\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(28);
\Mult_Accum|Mult0~21\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(29);
\Mult_Accum|Mult0~22\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(30);
\Mult_Accum|Mult0~23\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(31);
\Mult_Accum|Mult0~24\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(32);
\Mult_Accum|Mult0~25\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(33);
\Mult_Accum|Mult0~26\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(34);
\Mult_Accum|Mult0~27\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(35);
\Mult_Accum|Mult0~28\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(36);
\Mult_Accum|Mult0~29\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(37);
\Mult_Accum|Mult0~30\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(38);
\Mult_Accum|Mult0~31\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(39);
\Mult_Accum|Mult0~32\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(40);
\Mult_Accum|Mult0~33\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(41);
\Mult_Accum|Mult0~34\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(42);
\Mult_Accum|Mult0~35\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(43);
\Mult_Accum|Mult0~36\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(44);
\Mult_Accum|Mult0~37\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(45);
\Mult_Accum|Mult0~38\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(46);
\Mult_Accum|Mult0~39\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(47);
\Mult_Accum|Mult0~40\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(48);
\Mult_Accum|Mult0~41\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(49);
\Mult_Accum|Mult0~42\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(50);
\Mult_Accum|Mult0~43\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(51);
\Mult_Accum|Mult0~44\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(52);
\Mult_Accum|Mult0~45\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(53);
\Mult_Accum|Mult0~46\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(54);
\Mult_Accum|Mult0~47\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(55);
\Mult_Accum|Mult0~48\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(56);
\Mult_Accum|Mult0~49\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(57);
\Mult_Accum|Mult0~50\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(58);
\Mult_Accum|Mult0~51\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(59);
\Mult_Accum|Mult0~52\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(60);
\Mult_Accum|Mult0~53\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(61);
\Mult_Accum|Mult0~54\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(62);
\Mult_Accum|Mult0~55\ <= \Mult_Accum|Mult0~mac_RESULTA_bus\(63);
\Mult_Accum|ALT_INV_prod\(15) <= NOT \Mult_Accum|prod\(15);
\Mult_Accum|ALT_INV_prod\(14) <= NOT \Mult_Accum|prod\(14);
\Mult_Accum|ALT_INV_prod\(13) <= NOT \Mult_Accum|prod\(13);
\Mult_Accum|ALT_INV_prod\(12) <= NOT \Mult_Accum|prod\(12);
\Mult_Accum|ALT_INV_prod\(11) <= NOT \Mult_Accum|prod\(11);
\Mult_Accum|ALT_INV_prod\(10) <= NOT \Mult_Accum|prod\(10);
\Mult_Accum|ALT_INV_prod\(9) <= NOT \Mult_Accum|prod\(9);
\Mult_Accum|ALT_INV_prod\(8) <= NOT \Mult_Accum|prod\(8);
\Mult_Accum|ALT_INV_prod\(7) <= NOT \Mult_Accum|prod\(7);
\Mult_Accum|ALT_INV_prod\(6) <= NOT \Mult_Accum|prod\(6);
\Mult_Accum|ALT_INV_prod\(5) <= NOT \Mult_Accum|prod\(5);
\Mult_Accum|ALT_INV_prod\(4) <= NOT \Mult_Accum|prod\(4);
\Mult_Accum|ALT_INV_prod\(3) <= NOT \Mult_Accum|prod\(3);
\Mult_Accum|ALT_INV_prod\(2) <= NOT \Mult_Accum|prod\(2);
\Mult_Accum|ALT_INV_prod\(1) <= NOT \Mult_Accum|prod\(1);
\Mult_Accum|ALT_INV_prod\(0) <= NOT \Mult_Accum|prod\(0);
\Mult_Accum|ALT_INV_reg\(14) <= NOT \Mult_Accum|reg\(14);
\Mult_Accum|ALT_INV_reg\(13) <= NOT \Mult_Accum|reg\(13);
\Mult_Accum|ALT_INV_reg\(12) <= NOT \Mult_Accum|reg\(12);
\Mult_Accum|ALT_INV_reg\(11) <= NOT \Mult_Accum|reg\(11);
\Mult_Accum|ALT_INV_reg\(10) <= NOT \Mult_Accum|reg\(10);
\Mult_Accum|ALT_INV_reg\(9) <= NOT \Mult_Accum|reg\(9);
\Mult_Accum|ALT_INV_reg\(8) <= NOT \Mult_Accum|reg\(8);
\Mult_Accum|ALT_INV_reg\(7) <= NOT \Mult_Accum|reg\(7);
\Mult_Accum|ALT_INV_reg\(6) <= NOT \Mult_Accum|reg\(6);
\Mult_Accum|ALT_INV_reg\(5) <= NOT \Mult_Accum|reg\(5);
\Mult_Accum|ALT_INV_reg\(4) <= NOT \Mult_Accum|reg\(4);
\Mult_Accum|ALT_INV_reg\(3) <= NOT \Mult_Accum|reg\(3);
\Mult_Accum|ALT_INV_reg\(2) <= NOT \Mult_Accum|reg\(2);
\Mult_Accum|ALT_INV_reg\(1) <= NOT \Mult_Accum|reg\(1);
\Mult_Accum|ALT_INV_reg\(15) <= NOT \Mult_Accum|reg\(15);
\Mult_Accum|ALT_INV_reg\(0) <= NOT \Mult_Accum|reg\(0);
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\Mult_Accum|ALT_INV_Add0~5_sumout\ <= NOT \Mult_Accum|Add0~5_sumout\;

-- Location: IOOBUF_X19_Y0_N2
\O[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_O(0));

-- Location: IOOBUF_X18_Y0_N36
\O[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_O(1));

-- Location: IOOBUF_X23_Y0_N76
\O[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_O(2));

-- Location: IOOBUF_X19_Y0_N36
\O[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_O(3));

-- Location: IOOBUF_X22_Y0_N2
\O[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_O(4));

-- Location: IOOBUF_X23_Y0_N93
\O[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_O(5));

-- Location: IOOBUF_X16_Y0_N42
\O[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_O(6));

-- Location: IOOBUF_X18_Y0_N53
\O[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_O(7));

-- Location: IOOBUF_X16_Y0_N76
\O[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_O(8));

-- Location: IOOBUF_X18_Y0_N2
\O[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_O(9));

-- Location: IOOBUF_X19_Y0_N53
\O[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_O(10));

-- Location: IOOBUF_X22_Y0_N53
\O[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_O(11));

-- Location: IOOBUF_X22_Y0_N19
\O[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_O(12));

-- Location: IOOBUF_X22_Y0_N36
\O[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_O(13));

-- Location: IOOBUF_X23_Y0_N59
\O[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Activation|O[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_O(14));

-- Location: IOOBUF_X44_Y0_N19
\O[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_O(15));

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X16_Y0_N92
\slv_Xin[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(0),
	o => \slv_Xin[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\slv_Xin[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(1),
	o => \slv_Xin[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\slv_Xin[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(2),
	o => \slv_Xin[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\slv_Xin[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(3),
	o => \slv_Xin[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N18
\slv_Xin[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(4),
	o => \slv_Xin[4]~input_o\);

-- Location: IOIBUF_X18_Y0_N18
\slv_Xin[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(5),
	o => \slv_Xin[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\slv_Xin[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(6),
	o => \slv_Xin[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\slv_Xin[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(7),
	o => \slv_Xin[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\slv_Win[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(0),
	o => \slv_Win[0]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\slv_Win[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(1),
	o => \slv_Win[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\slv_Win[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(2),
	o => \slv_Win[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N52
\slv_Win[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(3),
	o => \slv_Win[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\slv_Win[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(4),
	o => \slv_Win[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\slv_Win[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(5),
	o => \slv_Win[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\slv_Win[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(6),
	o => \slv_Win[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N58
\slv_Win[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(7),
	o => \slv_Win[7]~input_o\);

-- Location: DSP_X15_Y1_N0
\Mult_Accum|Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 9,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 9,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 9,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult_Accum|Mult0~mac_AX_bus\,
	ay => \Mult_Accum|Mult0~mac_AY_bus\,
	bx => \Mult_Accum|Mult0~mac_BX_bus\,
	by => \Mult_Accum|Mult0~mac_BY_bus\,
	resulta => \Mult_Accum|Mult0~mac_RESULTA_bus\);

-- Location: LABCELL_X16_Y1_N0
\Mult_Accum|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~1_sumout\ = SUM(( \Mult_Accum|reg\(0) ) + ( \Mult_Accum|prod\(0) ) + ( !VCC ))
-- \Mult_Accum|Add0~2\ = CARRY(( \Mult_Accum|reg\(0) ) + ( \Mult_Accum|prod\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult_Accum|ALT_INV_prod\(0),
	datad => \Mult_Accum|ALT_INV_reg\(0),
	cin => GND,
	sumout => \Mult_Accum|Add0~1_sumout\,
	cout => \Mult_Accum|Add0~2\);

-- Location: LABCELL_X16_Y1_N57
\Mult_Accum|prod[15]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|prod[15]~_wirecell_combout\ = !\Mult_Accum|prod\(15)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult_Accum|ALT_INV_prod\(15),
	combout => \Mult_Accum|prod[15]~_wirecell_combout\);

-- Location: IOIBUF_X19_Y0_N18
\RST~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LABCELL_X16_Y1_N3
\Mult_Accum|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~9_sumout\ = SUM(( \Mult_Accum|reg\(1) ) + ( \Mult_Accum|prod\(1) ) + ( \Mult_Accum|Add0~2\ ))
-- \Mult_Accum|Add0~10\ = CARRY(( \Mult_Accum|reg\(1) ) + ( \Mult_Accum|prod\(1) ) + ( \Mult_Accum|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mult_Accum|ALT_INV_prod\(1),
	datad => \Mult_Accum|ALT_INV_reg\(1),
	cin => \Mult_Accum|Add0~2\,
	sumout => \Mult_Accum|Add0~9_sumout\,
	cout => \Mult_Accum|Add0~10\);

-- Location: FF_X16_Y1_N5
\Mult_Accum|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~9_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(1));

-- Location: LABCELL_X16_Y1_N6
\Mult_Accum|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~13_sumout\ = SUM(( \Mult_Accum|prod\(2) ) + ( \Mult_Accum|reg\(2) ) + ( \Mult_Accum|Add0~10\ ))
-- \Mult_Accum|Add0~14\ = CARRY(( \Mult_Accum|prod\(2) ) + ( \Mult_Accum|reg\(2) ) + ( \Mult_Accum|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult_Accum|ALT_INV_reg\(2),
	datac => \Mult_Accum|ALT_INV_prod\(2),
	cin => \Mult_Accum|Add0~10\,
	sumout => \Mult_Accum|Add0~13_sumout\,
	cout => \Mult_Accum|Add0~14\);

-- Location: FF_X16_Y1_N8
\Mult_Accum|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~13_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(2));

-- Location: LABCELL_X16_Y1_N9
\Mult_Accum|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~17_sumout\ = SUM(( \Mult_Accum|prod\(3) ) + ( \Mult_Accum|reg\(3) ) + ( \Mult_Accum|Add0~14\ ))
-- \Mult_Accum|Add0~18\ = CARRY(( \Mult_Accum|prod\(3) ) + ( \Mult_Accum|reg\(3) ) + ( \Mult_Accum|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_prod\(3),
	datac => \Mult_Accum|ALT_INV_reg\(3),
	cin => \Mult_Accum|Add0~14\,
	sumout => \Mult_Accum|Add0~17_sumout\,
	cout => \Mult_Accum|Add0~18\);

-- Location: FF_X16_Y1_N11
\Mult_Accum|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~17_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(3));

-- Location: LABCELL_X16_Y1_N12
\Mult_Accum|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~21_sumout\ = SUM(( \Mult_Accum|prod\(4) ) + ( \Mult_Accum|reg\(4) ) + ( \Mult_Accum|Add0~18\ ))
-- \Mult_Accum|Add0~22\ = CARRY(( \Mult_Accum|prod\(4) ) + ( \Mult_Accum|reg\(4) ) + ( \Mult_Accum|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult_Accum|ALT_INV_reg\(4),
	datac => \Mult_Accum|ALT_INV_prod\(4),
	cin => \Mult_Accum|Add0~18\,
	sumout => \Mult_Accum|Add0~21_sumout\,
	cout => \Mult_Accum|Add0~22\);

-- Location: FF_X16_Y1_N14
\Mult_Accum|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~21_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(4));

-- Location: LABCELL_X16_Y1_N15
\Mult_Accum|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~25_sumout\ = SUM(( \Mult_Accum|prod\(5) ) + ( \Mult_Accum|reg\(5) ) + ( \Mult_Accum|Add0~22\ ))
-- \Mult_Accum|Add0~26\ = CARRY(( \Mult_Accum|prod\(5) ) + ( \Mult_Accum|reg\(5) ) + ( \Mult_Accum|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_prod\(5),
	datac => \Mult_Accum|ALT_INV_reg\(5),
	cin => \Mult_Accum|Add0~22\,
	sumout => \Mult_Accum|Add0~25_sumout\,
	cout => \Mult_Accum|Add0~26\);

-- Location: FF_X16_Y1_N17
\Mult_Accum|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~25_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(5));

-- Location: LABCELL_X16_Y1_N18
\Mult_Accum|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~29_sumout\ = SUM(( \Mult_Accum|prod\(6) ) + ( \Mult_Accum|reg\(6) ) + ( \Mult_Accum|Add0~26\ ))
-- \Mult_Accum|Add0~30\ = CARRY(( \Mult_Accum|prod\(6) ) + ( \Mult_Accum|reg\(6) ) + ( \Mult_Accum|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_prod\(6),
	datac => \Mult_Accum|ALT_INV_reg\(6),
	cin => \Mult_Accum|Add0~26\,
	sumout => \Mult_Accum|Add0~29_sumout\,
	cout => \Mult_Accum|Add0~30\);

-- Location: FF_X16_Y1_N20
\Mult_Accum|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~29_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(6));

-- Location: LABCELL_X16_Y1_N21
\Mult_Accum|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~33_sumout\ = SUM(( \Mult_Accum|reg\(7) ) + ( \Mult_Accum|prod\(7) ) + ( \Mult_Accum|Add0~30\ ))
-- \Mult_Accum|Add0~34\ = CARRY(( \Mult_Accum|reg\(7) ) + ( \Mult_Accum|prod\(7) ) + ( \Mult_Accum|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mult_Accum|ALT_INV_prod\(7),
	datad => \Mult_Accum|ALT_INV_reg\(7),
	cin => \Mult_Accum|Add0~30\,
	sumout => \Mult_Accum|Add0~33_sumout\,
	cout => \Mult_Accum|Add0~34\);

-- Location: FF_X16_Y1_N23
\Mult_Accum|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~33_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(7));

-- Location: LABCELL_X16_Y1_N24
\Mult_Accum|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~37_sumout\ = SUM(( \Mult_Accum|prod\(8) ) + ( \Mult_Accum|reg\(8) ) + ( \Mult_Accum|Add0~34\ ))
-- \Mult_Accum|Add0~38\ = CARRY(( \Mult_Accum|prod\(8) ) + ( \Mult_Accum|reg\(8) ) + ( \Mult_Accum|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_prod\(8),
	datac => \Mult_Accum|ALT_INV_reg\(8),
	cin => \Mult_Accum|Add0~34\,
	sumout => \Mult_Accum|Add0~37_sumout\,
	cout => \Mult_Accum|Add0~38\);

-- Location: FF_X16_Y1_N26
\Mult_Accum|reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~37_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(8));

-- Location: LABCELL_X16_Y1_N27
\Mult_Accum|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~41_sumout\ = SUM(( \Mult_Accum|reg\(9) ) + ( \Mult_Accum|prod\(9) ) + ( \Mult_Accum|Add0~38\ ))
-- \Mult_Accum|Add0~42\ = CARRY(( \Mult_Accum|reg\(9) ) + ( \Mult_Accum|prod\(9) ) + ( \Mult_Accum|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mult_Accum|ALT_INV_prod\(9),
	datad => \Mult_Accum|ALT_INV_reg\(9),
	cin => \Mult_Accum|Add0~38\,
	sumout => \Mult_Accum|Add0~41_sumout\,
	cout => \Mult_Accum|Add0~42\);

-- Location: FF_X16_Y1_N29
\Mult_Accum|reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~41_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(9));

-- Location: LABCELL_X16_Y1_N30
\Mult_Accum|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~45_sumout\ = SUM(( \Mult_Accum|prod\(10) ) + ( \Mult_Accum|reg\(10) ) + ( \Mult_Accum|Add0~42\ ))
-- \Mult_Accum|Add0~46\ = CARRY(( \Mult_Accum|prod\(10) ) + ( \Mult_Accum|reg\(10) ) + ( \Mult_Accum|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult_Accum|ALT_INV_reg\(10),
	datac => \Mult_Accum|ALT_INV_prod\(10),
	cin => \Mult_Accum|Add0~42\,
	sumout => \Mult_Accum|Add0~45_sumout\,
	cout => \Mult_Accum|Add0~46\);

-- Location: FF_X16_Y1_N32
\Mult_Accum|reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~45_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(10));

-- Location: LABCELL_X16_Y1_N33
\Mult_Accum|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~49_sumout\ = SUM(( \Mult_Accum|prod\(11) ) + ( \Mult_Accum|reg\(11) ) + ( \Mult_Accum|Add0~46\ ))
-- \Mult_Accum|Add0~50\ = CARRY(( \Mult_Accum|prod\(11) ) + ( \Mult_Accum|reg\(11) ) + ( \Mult_Accum|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_reg\(11),
	datac => \Mult_Accum|ALT_INV_prod\(11),
	cin => \Mult_Accum|Add0~46\,
	sumout => \Mult_Accum|Add0~49_sumout\,
	cout => \Mult_Accum|Add0~50\);

-- Location: FF_X16_Y1_N35
\Mult_Accum|reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~49_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(11));

-- Location: LABCELL_X16_Y1_N36
\Mult_Accum|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~53_sumout\ = SUM(( \Mult_Accum|prod\(12) ) + ( \Mult_Accum|reg\(12) ) + ( \Mult_Accum|Add0~50\ ))
-- \Mult_Accum|Add0~54\ = CARRY(( \Mult_Accum|prod\(12) ) + ( \Mult_Accum|reg\(12) ) + ( \Mult_Accum|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult_Accum|ALT_INV_prod\(12),
	datac => \Mult_Accum|ALT_INV_reg\(12),
	cin => \Mult_Accum|Add0~50\,
	sumout => \Mult_Accum|Add0~53_sumout\,
	cout => \Mult_Accum|Add0~54\);

-- Location: FF_X16_Y1_N38
\Mult_Accum|reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~53_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(12));

-- Location: LABCELL_X16_Y1_N39
\Mult_Accum|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~57_sumout\ = SUM(( \Mult_Accum|prod\(13) ) + ( \Mult_Accum|reg\(13) ) + ( \Mult_Accum|Add0~54\ ))
-- \Mult_Accum|Add0~58\ = CARRY(( \Mult_Accum|prod\(13) ) + ( \Mult_Accum|reg\(13) ) + ( \Mult_Accum|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_prod\(13),
	datac => \Mult_Accum|ALT_INV_reg\(13),
	cin => \Mult_Accum|Add0~54\,
	sumout => \Mult_Accum|Add0~57_sumout\,
	cout => \Mult_Accum|Add0~58\);

-- Location: FF_X16_Y1_N41
\Mult_Accum|reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~57_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(13));

-- Location: LABCELL_X16_Y1_N42
\Mult_Accum|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~61_sumout\ = SUM(( \Mult_Accum|reg\(14) ) + ( \Mult_Accum|prod\(14) ) + ( \Mult_Accum|Add0~58\ ))
-- \Mult_Accum|Add0~62\ = CARRY(( \Mult_Accum|reg\(14) ) + ( \Mult_Accum|prod\(14) ) + ( \Mult_Accum|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult_Accum|ALT_INV_reg\(14),
	dataf => \Mult_Accum|ALT_INV_prod\(14),
	cin => \Mult_Accum|Add0~58\,
	sumout => \Mult_Accum|Add0~61_sumout\,
	cout => \Mult_Accum|Add0~62\);

-- Location: FF_X16_Y1_N44
\Mult_Accum|reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~61_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(14));

-- Location: LABCELL_X16_Y1_N45
\Mult_Accum|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|Add0~5_sumout\ = SUM(( \Mult_Accum|prod\(15) ) + ( \Mult_Accum|reg\(15) ) + ( \Mult_Accum|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mult_Accum|ALT_INV_reg\(15),
	datad => \Mult_Accum|ALT_INV_prod\(15),
	cin => \Mult_Accum|Add0~62\,
	sumout => \Mult_Accum|Add0~5_sumout\);

-- Location: FF_X16_Y1_N47
\Mult_Accum|reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~5_sumout\,
	asdata => \Mult_Accum|prod\(15),
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(15));

-- Location: LABCELL_X16_Y1_N54
\Mult_Accum|add_truncate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult_Accum|add_truncate~0_combout\ = ( \Mult_Accum|Add0~5_sumout\ & ( (!\Mult_Accum|prod\(15) & !\Mult_Accum|reg\(15)) ) ) # ( !\Mult_Accum|Add0~5_sumout\ & ( (\Mult_Accum|prod\(15) & \Mult_Accum|reg\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult_Accum|ALT_INV_prod\(15),
	datad => \Mult_Accum|ALT_INV_reg\(15),
	dataf => \Mult_Accum|ALT_INV_Add0~5_sumout\,
	combout => \Mult_Accum|add_truncate~0_combout\);

-- Location: FF_X16_Y1_N2
\Mult_Accum|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mult_Accum|Add0~1_sumout\,
	asdata => \Mult_Accum|prod[15]~_wirecell_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => \Mult_Accum|add_truncate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mult_Accum|reg\(0));

-- Location: LABCELL_X17_Y1_N48
\Activation|O[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[0]~0_combout\ = ( \Mult_Accum|reg\(0) & ( !\Mult_Accum|reg\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mult_Accum|ALT_INV_reg\(0),
	dataf => \Mult_Accum|ALT_INV_reg\(15),
	combout => \Activation|O[0]~0_combout\);

-- Location: LABCELL_X17_Y1_N6
\Activation|O[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[1]~1_combout\ = ( !\Mult_Accum|reg\(15) & ( \Mult_Accum|reg\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult_Accum|ALT_INV_reg\(1),
	dataf => \Mult_Accum|ALT_INV_reg\(15),
	combout => \Activation|O[1]~1_combout\);

-- Location: LABCELL_X17_Y1_N27
\Activation|O[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[2]~2_combout\ = ( \Mult_Accum|reg\(2) & ( !\Mult_Accum|reg\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mult_Accum|ALT_INV_reg\(2),
	dataf => \Mult_Accum|ALT_INV_reg\(15),
	combout => \Activation|O[2]~2_combout\);

-- Location: LABCELL_X17_Y1_N45
\Activation|O[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[3]~3_combout\ = ( !\Mult_Accum|reg\(15) & ( \Mult_Accum|reg\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mult_Accum|ALT_INV_reg\(3),
	dataf => \Mult_Accum|ALT_INV_reg\(15),
	combout => \Activation|O[3]~3_combout\);

-- Location: LABCELL_X17_Y1_N36
\Activation|O[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[4]~4_combout\ = (!\Mult_Accum|reg\(15) & \Mult_Accum|reg\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_reg\(15),
	datac => \Mult_Accum|ALT_INV_reg\(4),
	combout => \Activation|O[4]~4_combout\);

-- Location: LABCELL_X17_Y1_N39
\Activation|O[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[5]~5_combout\ = ( \Mult_Accum|reg\(5) & ( !\Mult_Accum|reg\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_reg\(15),
	dataf => \Mult_Accum|ALT_INV_reg\(5),
	combout => \Activation|O[5]~5_combout\);

-- Location: LABCELL_X16_Y1_N48
\Activation|O[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[6]~6_combout\ = ( \Mult_Accum|reg\(6) & ( !\Mult_Accum|reg\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult_Accum|ALT_INV_reg\(15),
	dataf => \Mult_Accum|ALT_INV_reg\(6),
	combout => \Activation|O[6]~6_combout\);

-- Location: LABCELL_X17_Y1_N33
\Activation|O[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[7]~7_combout\ = ( \Mult_Accum|reg\(7) & ( !\Mult_Accum|reg\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_reg\(15),
	dataf => \Mult_Accum|ALT_INV_reg\(7),
	combout => \Activation|O[7]~7_combout\);

-- Location: LABCELL_X16_Y1_N51
\Activation|O[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[8]~8_combout\ = ( \Mult_Accum|reg\(8) & ( !\Mult_Accum|reg\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult_Accum|ALT_INV_reg\(15),
	dataf => \Mult_Accum|ALT_INV_reg\(8),
	combout => \Activation|O[8]~8_combout\);

-- Location: LABCELL_X17_Y1_N15
\Activation|O[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[9]~9_combout\ = ( !\Mult_Accum|reg\(15) & ( \Mult_Accum|reg\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_reg\(9),
	dataf => \Mult_Accum|ALT_INV_reg\(15),
	combout => \Activation|O[9]~9_combout\);

-- Location: LABCELL_X17_Y1_N54
\Activation|O[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[10]~10_combout\ = ( \Mult_Accum|reg\(10) & ( !\Mult_Accum|reg\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_reg\(15),
	dataf => \Mult_Accum|ALT_INV_reg\(10),
	combout => \Activation|O[10]~10_combout\);

-- Location: LABCELL_X17_Y1_N57
\Activation|O[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[11]~11_combout\ = (!\Mult_Accum|reg\(15) & \Mult_Accum|reg\(11))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_reg\(15),
	datac => \Mult_Accum|ALT_INV_reg\(11),
	combout => \Activation|O[11]~11_combout\);

-- Location: LABCELL_X17_Y1_N0
\Activation|O[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[12]~12_combout\ = ( \Mult_Accum|reg\(12) & ( !\Mult_Accum|reg\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mult_Accum|ALT_INV_reg\(12),
	dataf => \Mult_Accum|ALT_INV_reg\(15),
	combout => \Activation|O[12]~12_combout\);

-- Location: LABCELL_X17_Y1_N18
\Activation|O[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[13]~13_combout\ = ( \Mult_Accum|reg\(13) & ( !\Mult_Accum|reg\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mult_Accum|ALT_INV_reg\(13),
	dataf => \Mult_Accum|ALT_INV_reg\(15),
	combout => \Activation|O[13]~13_combout\);

-- Location: LABCELL_X17_Y1_N30
\Activation|O[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Activation|O[14]~14_combout\ = ( \Mult_Accum|reg\(14) & ( !\Mult_Accum|reg\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult_Accum|ALT_INV_reg\(15),
	dataf => \Mult_Accum|ALT_INV_reg\(14),
	combout => \Activation|O[14]~14_combout\);

-- Location: LABCELL_X43_Y21_N0
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


