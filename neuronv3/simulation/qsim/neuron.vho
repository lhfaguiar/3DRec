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

-- DATE "11/16/2018 17:22:32"

-- 
-- Device: Altera 5CSXFC6D6F31C8ES Package FBGA896
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
	reset : IN std_logic;
	start : IN std_logic;
	count : IN std_logic_vector(7 DOWNTO 0);
	O : OUT std_logic_vector(15 DOWNTO 0);
	count_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END Neuron;

-- Design Ports Information
-- O[0]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[3]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[5]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[6]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[8]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[9]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[11]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[12]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[13]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[14]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[15]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[0]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[1]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[2]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[4]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[5]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[6]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[7]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[0]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[6]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[7]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[0]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[2]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[3]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[4]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[5]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[6]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Xin[7]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[1]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[2]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[5]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[6]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- slv_Win[7]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_count : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_O : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_count_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \Neuronio|Mult_Accum|Mult0~8_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Neuronio|Mult_Accum|Mult0~8_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Neuronio|Mult_Accum|Mult0~8_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Neuronio|Mult_Accum|Mult0~8_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Neuronio|Mult_Accum|Mult0~24\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~25\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~26\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~27\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~28\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~29\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~30\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~31\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~32\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~33\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~34\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~35\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~36\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~37\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~38\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~39\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~40\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~41\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~42\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~43\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~44\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~45\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~46\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~47\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~48\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~49\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~50\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~51\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~52\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~53\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~54\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~55\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~56\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~57\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~58\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~59\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~60\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~61\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~62\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~63\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~64\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~65\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~66\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~67\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~68\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~69\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~70\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~71\ : std_logic;
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
SIGNAL \Neuronio|Mult_Accum|Mult0~23\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \UC|Add1~1_sumout\ : std_logic;
SIGNAL \count[3]~input_o\ : std_logic;
SIGNAL \count[2]~input_o\ : std_logic;
SIGNAL \count[1]~input_o\ : std_logic;
SIGNAL \count[0]~input_o\ : std_logic;
SIGNAL \count[4]~input_o\ : std_logic;
SIGNAL \count[5]~input_o\ : std_logic;
SIGNAL \UC|LessThan0~0_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \count[7]~input_o\ : std_logic;
SIGNAL \count[6]~input_o\ : std_logic;
SIGNAL \UC|Add0~1_sumout\ : std_logic;
SIGNAL \UC|count_0~0_combout\ : std_logic;
SIGNAL \UC|Equal0~0_combout\ : std_logic;
SIGNAL \UC|count_0[0]~1_combout\ : std_logic;
SIGNAL \UC|Add1~2\ : std_logic;
SIGNAL \UC|Add1~5_sumout\ : std_logic;
SIGNAL \UC|Add0~2\ : std_logic;
SIGNAL \UC|Add0~5_sumout\ : std_logic;
SIGNAL \UC|count_0~2_combout\ : std_logic;
SIGNAL \UC|Add1~6\ : std_logic;
SIGNAL \UC|Add1~9_sumout\ : std_logic;
SIGNAL \UC|Add0~6\ : std_logic;
SIGNAL \UC|Add0~9_sumout\ : std_logic;
SIGNAL \UC|count_0~3_combout\ : std_logic;
SIGNAL \UC|Add1~10\ : std_logic;
SIGNAL \UC|Add1~13_sumout\ : std_logic;
SIGNAL \UC|Add0~10\ : std_logic;
SIGNAL \UC|Add0~13_sumout\ : std_logic;
SIGNAL \UC|count_0~4_combout\ : std_logic;
SIGNAL \UC|Add1~14\ : std_logic;
SIGNAL \UC|Add1~17_sumout\ : std_logic;
SIGNAL \UC|Add0~14\ : std_logic;
SIGNAL \UC|Add0~17_sumout\ : std_logic;
SIGNAL \UC|count_0~5_combout\ : std_logic;
SIGNAL \UC|Add1~18\ : std_logic;
SIGNAL \UC|Add1~21_sumout\ : std_logic;
SIGNAL \UC|Add0~18\ : std_logic;
SIGNAL \UC|Add0~21_sumout\ : std_logic;
SIGNAL \UC|count_0~6_combout\ : std_logic;
SIGNAL \UC|Add1~22\ : std_logic;
SIGNAL \UC|Add1~25_sumout\ : std_logic;
SIGNAL \UC|Add0~22\ : std_logic;
SIGNAL \UC|Add0~25_sumout\ : std_logic;
SIGNAL \UC|count_0~7_combout\ : std_logic;
SIGNAL \UC|Add1~26\ : std_logic;
SIGNAL \UC|Add1~29_sumout\ : std_logic;
SIGNAL \UC|Add0~26\ : std_logic;
SIGNAL \UC|Add0~29_sumout\ : std_logic;
SIGNAL \UC|count_0~8_combout\ : std_logic;
SIGNAL \UC|Equal0~1_combout\ : std_logic;
SIGNAL \UC|process_0~0_combout\ : std_logic;
SIGNAL \UC|state~q\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|prod[8]~0_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~22\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~21\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~20\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~19\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~18\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~17\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~16\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~15\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~14\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~13\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~12\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~11\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~10\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~9\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Mult0~8_resulta\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~5_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~2_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg[9]~1_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~6\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~9_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~3_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~10\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~13_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~4_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~14\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~17_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~5_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~18\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~21_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~6_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~22\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~25_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~7_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~26\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~29_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~8_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~30\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~33_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~9_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~34\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~37_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~10_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~38\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~41_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~11_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~42\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~45_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~12_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~46\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~49_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~13_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~50\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~53_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~14_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~54\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~57_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~15_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~58\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~61_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~16_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~62\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|Add0~1_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|reg~0_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[0]~0_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[1]~1_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[2]~2_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[3]~3_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[4]~4_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[5]~5_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[6]~6_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[7]~7_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[8]~8_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[9]~9_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[10]~10_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[11]~11_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[12]~12_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[13]~13_combout\ : std_logic;
SIGNAL \Neuronio|Activation|O[14]~14_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|prod\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Neuronio|Mult_Accum|accum_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Neuronio|Mult_Accum|reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \UC|count_0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \UC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \UC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \UC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \UC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \UC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \UC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \UC|ALT_INV_state~q\ : std_logic;
SIGNAL \UC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \UC|ALT_INV_count_0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_count[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_count[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_prod\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \UC|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \UC|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_accum_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_slv_Xin <= slv_Xin;
ww_slv_Win <= slv_Win;
ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
ww_count <= count;
O <= ww_O;
count_out <= ww_count_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Neuronio|Mult_Accum|Mult0~8_AX_bus\ <= (\slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[6]~input_o\ & \slv_Xin[5]~input_o\ & \slv_Xin[4]~input_o\ & \slv_Xin[3]~input_o\ & \slv_Xin[2]~input_o\ & \slv_Xin[1]~input_o\ & \slv_Xin[0]~input_o\);

\Neuronio|Mult_Accum|Mult0~8_AY_bus\ <= (\slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[6]~input_o\ & \slv_Win[5]~input_o\ & \slv_Win[4]~input_o\ & \slv_Win[3]~input_o\ & \slv_Win[2]~input_o\ & \slv_Win[1]~input_o\ & \slv_Win[0]~input_o\);

\Neuronio|Mult_Accum|Mult0~8_BX_bus\ <= (\slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\ & \slv_Xin[7]~input_o\);

\Neuronio|Mult_Accum|Mult0~8_BY_bus\ <= (\slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\ & \slv_Win[7]~input_o\);

\Neuronio|Mult_Accum|Mult0~8_resulta\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(0);
\Neuronio|Mult_Accum|Mult0~9\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(1);
\Neuronio|Mult_Accum|Mult0~10\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(2);
\Neuronio|Mult_Accum|Mult0~11\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(3);
\Neuronio|Mult_Accum|Mult0~12\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(4);
\Neuronio|Mult_Accum|Mult0~13\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(5);
\Neuronio|Mult_Accum|Mult0~14\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(6);
\Neuronio|Mult_Accum|Mult0~15\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(7);
\Neuronio|Mult_Accum|Mult0~16\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(8);
\Neuronio|Mult_Accum|Mult0~17\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(9);
\Neuronio|Mult_Accum|Mult0~18\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(10);
\Neuronio|Mult_Accum|Mult0~19\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(11);
\Neuronio|Mult_Accum|Mult0~20\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(12);
\Neuronio|Mult_Accum|Mult0~21\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(13);
\Neuronio|Mult_Accum|Mult0~22\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(14);
\Neuronio|Mult_Accum|Mult0~23\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(15);
\Neuronio|Mult_Accum|Mult0~24\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(16);
\Neuronio|Mult_Accum|Mult0~25\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(17);
\Neuronio|Mult_Accum|Mult0~26\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(18);
\Neuronio|Mult_Accum|Mult0~27\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(19);
\Neuronio|Mult_Accum|Mult0~28\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(20);
\Neuronio|Mult_Accum|Mult0~29\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(21);
\Neuronio|Mult_Accum|Mult0~30\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(22);
\Neuronio|Mult_Accum|Mult0~31\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(23);
\Neuronio|Mult_Accum|Mult0~32\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(24);
\Neuronio|Mult_Accum|Mult0~33\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(25);
\Neuronio|Mult_Accum|Mult0~34\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(26);
\Neuronio|Mult_Accum|Mult0~35\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(27);
\Neuronio|Mult_Accum|Mult0~36\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(28);
\Neuronio|Mult_Accum|Mult0~37\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(29);
\Neuronio|Mult_Accum|Mult0~38\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(30);
\Neuronio|Mult_Accum|Mult0~39\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(31);
\Neuronio|Mult_Accum|Mult0~40\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(32);
\Neuronio|Mult_Accum|Mult0~41\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(33);
\Neuronio|Mult_Accum|Mult0~42\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(34);
\Neuronio|Mult_Accum|Mult0~43\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(35);
\Neuronio|Mult_Accum|Mult0~44\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(36);
\Neuronio|Mult_Accum|Mult0~45\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(37);
\Neuronio|Mult_Accum|Mult0~46\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(38);
\Neuronio|Mult_Accum|Mult0~47\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(39);
\Neuronio|Mult_Accum|Mult0~48\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(40);
\Neuronio|Mult_Accum|Mult0~49\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(41);
\Neuronio|Mult_Accum|Mult0~50\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(42);
\Neuronio|Mult_Accum|Mult0~51\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(43);
\Neuronio|Mult_Accum|Mult0~52\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(44);
\Neuronio|Mult_Accum|Mult0~53\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(45);
\Neuronio|Mult_Accum|Mult0~54\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(46);
\Neuronio|Mult_Accum|Mult0~55\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(47);
\Neuronio|Mult_Accum|Mult0~56\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(48);
\Neuronio|Mult_Accum|Mult0~57\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(49);
\Neuronio|Mult_Accum|Mult0~58\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(50);
\Neuronio|Mult_Accum|Mult0~59\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(51);
\Neuronio|Mult_Accum|Mult0~60\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(52);
\Neuronio|Mult_Accum|Mult0~61\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(53);
\Neuronio|Mult_Accum|Mult0~62\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(54);
\Neuronio|Mult_Accum|Mult0~63\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(55);
\Neuronio|Mult_Accum|Mult0~64\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(56);
\Neuronio|Mult_Accum|Mult0~65\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(57);
\Neuronio|Mult_Accum|Mult0~66\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(58);
\Neuronio|Mult_Accum|Mult0~67\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(59);
\Neuronio|Mult_Accum|Mult0~68\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(60);
\Neuronio|Mult_Accum|Mult0~69\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(61);
\Neuronio|Mult_Accum|Mult0~70\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(62);
\Neuronio|Mult_Accum|Mult0~71\ <= \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\(63);
\UC|ALT_INV_Add0~29_sumout\ <= NOT \UC|Add0~29_sumout\;
\UC|ALT_INV_Add0~25_sumout\ <= NOT \UC|Add0~25_sumout\;
\UC|ALT_INV_Add0~21_sumout\ <= NOT \UC|Add0~21_sumout\;
\UC|ALT_INV_Add0~17_sumout\ <= NOT \UC|Add0~17_sumout\;
\UC|ALT_INV_Add0~13_sumout\ <= NOT \UC|Add0~13_sumout\;
\UC|ALT_INV_Add0~9_sumout\ <= NOT \UC|Add0~9_sumout\;
\UC|ALT_INV_Add0~5_sumout\ <= NOT \UC|Add0~5_sumout\;
\UC|ALT_INV_state~q\ <= NOT \UC|state~q\;
\UC|ALT_INV_Add0~1_sumout\ <= NOT \UC|Add0~1_sumout\;
\Neuronio|Mult_Accum|ALT_INV_reg\(14) <= NOT \Neuronio|Mult_Accum|reg\(14);
\Neuronio|Mult_Accum|ALT_INV_reg\(13) <= NOT \Neuronio|Mult_Accum|reg\(13);
\Neuronio|Mult_Accum|ALT_INV_reg\(12) <= NOT \Neuronio|Mult_Accum|reg\(12);
\Neuronio|Mult_Accum|ALT_INV_reg\(11) <= NOT \Neuronio|Mult_Accum|reg\(11);
\Neuronio|Mult_Accum|ALT_INV_reg\(10) <= NOT \Neuronio|Mult_Accum|reg\(10);
\Neuronio|Mult_Accum|ALT_INV_reg\(9) <= NOT \Neuronio|Mult_Accum|reg\(9);
\Neuronio|Mult_Accum|ALT_INV_reg\(8) <= NOT \Neuronio|Mult_Accum|reg\(8);
\Neuronio|Mult_Accum|ALT_INV_reg\(7) <= NOT \Neuronio|Mult_Accum|reg\(7);
\Neuronio|Mult_Accum|ALT_INV_reg\(6) <= NOT \Neuronio|Mult_Accum|reg\(6);
\Neuronio|Mult_Accum|ALT_INV_reg\(5) <= NOT \Neuronio|Mult_Accum|reg\(5);
\Neuronio|Mult_Accum|ALT_INV_reg\(4) <= NOT \Neuronio|Mult_Accum|reg\(4);
\Neuronio|Mult_Accum|ALT_INV_reg\(3) <= NOT \Neuronio|Mult_Accum|reg\(3);
\Neuronio|Mult_Accum|ALT_INV_reg\(2) <= NOT \Neuronio|Mult_Accum|reg\(2);
\Neuronio|Mult_Accum|ALT_INV_reg\(1) <= NOT \Neuronio|Mult_Accum|reg\(1);
\Neuronio|Mult_Accum|ALT_INV_reg\(0) <= NOT \Neuronio|Mult_Accum|reg\(0);
\Neuronio|Mult_Accum|ALT_INV_reg\(15) <= NOT \Neuronio|Mult_Accum|reg\(15);
\UC|ALT_INV_count_0\(7) <= NOT \UC|count_0\(7);
\UC|ALT_INV_count_0\(6) <= NOT \UC|count_0\(6);
\UC|ALT_INV_count_0\(5) <= NOT \UC|count_0\(5);
\UC|ALT_INV_count_0\(4) <= NOT \UC|count_0\(4);
\UC|ALT_INV_count_0\(3) <= NOT \UC|count_0\(3);
\UC|ALT_INV_count_0\(2) <= NOT \UC|count_0\(2);
\UC|ALT_INV_count_0\(1) <= NOT \UC|count_0\(1);
\UC|ALT_INV_count_0\(0) <= NOT \UC|count_0\(0);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_count[5]~input_o\ <= NOT \count[5]~input_o\;
\ALT_INV_count[4]~input_o\ <= NOT \count[4]~input_o\;
\ALT_INV_count[3]~input_o\ <= NOT \count[3]~input_o\;
\ALT_INV_count[2]~input_o\ <= NOT \count[2]~input_o\;
\ALT_INV_count[1]~input_o\ <= NOT \count[1]~input_o\;
\ALT_INV_count[7]~input_o\ <= NOT \count[7]~input_o\;
\ALT_INV_count[6]~input_o\ <= NOT \count[6]~input_o\;
\ALT_INV_count[0]~input_o\ <= NOT \count[0]~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\Neuronio|Mult_Accum|ALT_INV_prod\(14) <= NOT \Neuronio|Mult_Accum|prod\(14);
\Neuronio|Mult_Accum|ALT_INV_prod\(13) <= NOT \Neuronio|Mult_Accum|prod\(13);
\Neuronio|Mult_Accum|ALT_INV_prod\(12) <= NOT \Neuronio|Mult_Accum|prod\(12);
\Neuronio|Mult_Accum|ALT_INV_prod\(11) <= NOT \Neuronio|Mult_Accum|prod\(11);
\Neuronio|Mult_Accum|ALT_INV_prod\(10) <= NOT \Neuronio|Mult_Accum|prod\(10);
\Neuronio|Mult_Accum|ALT_INV_prod\(9) <= NOT \Neuronio|Mult_Accum|prod\(9);
\Neuronio|Mult_Accum|ALT_INV_prod\(8) <= NOT \Neuronio|Mult_Accum|prod\(8);
\Neuronio|Mult_Accum|ALT_INV_prod\(7) <= NOT \Neuronio|Mult_Accum|prod\(7);
\Neuronio|Mult_Accum|ALT_INV_prod\(6) <= NOT \Neuronio|Mult_Accum|prod\(6);
\Neuronio|Mult_Accum|ALT_INV_prod\(5) <= NOT \Neuronio|Mult_Accum|prod\(5);
\Neuronio|Mult_Accum|ALT_INV_prod\(4) <= NOT \Neuronio|Mult_Accum|prod\(4);
\Neuronio|Mult_Accum|ALT_INV_prod\(3) <= NOT \Neuronio|Mult_Accum|prod\(3);
\Neuronio|Mult_Accum|ALT_INV_prod\(2) <= NOT \Neuronio|Mult_Accum|prod\(2);
\Neuronio|Mult_Accum|ALT_INV_prod\(1) <= NOT \Neuronio|Mult_Accum|prod\(1);
\Neuronio|Mult_Accum|ALT_INV_prod\(0) <= NOT \Neuronio|Mult_Accum|prod\(0);
\Neuronio|Mult_Accum|ALT_INV_prod\(15) <= NOT \Neuronio|Mult_Accum|prod\(15);
\UC|ALT_INV_Equal0~0_combout\ <= NOT \UC|Equal0~0_combout\;
\UC|ALT_INV_LessThan0~0_combout\ <= NOT \UC|LessThan0~0_combout\;
\Neuronio|Mult_Accum|ALT_INV_accum_out\(14) <= NOT \Neuronio|Mult_Accum|accum_out\(14);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(13) <= NOT \Neuronio|Mult_Accum|accum_out\(13);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(12) <= NOT \Neuronio|Mult_Accum|accum_out\(12);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(11) <= NOT \Neuronio|Mult_Accum|accum_out\(11);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(10) <= NOT \Neuronio|Mult_Accum|accum_out\(10);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(9) <= NOT \Neuronio|Mult_Accum|accum_out\(9);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(8) <= NOT \Neuronio|Mult_Accum|accum_out\(8);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(7) <= NOT \Neuronio|Mult_Accum|accum_out\(7);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(6) <= NOT \Neuronio|Mult_Accum|accum_out\(6);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(5) <= NOT \Neuronio|Mult_Accum|accum_out\(5);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(4) <= NOT \Neuronio|Mult_Accum|accum_out\(4);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(3) <= NOT \Neuronio|Mult_Accum|accum_out\(3);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(2) <= NOT \Neuronio|Mult_Accum|accum_out\(2);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(1) <= NOT \Neuronio|Mult_Accum|accum_out\(1);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(0) <= NOT \Neuronio|Mult_Accum|accum_out\(0);
\Neuronio|Mult_Accum|ALT_INV_accum_out\(15) <= NOT \Neuronio|Mult_Accum|accum_out\(15);
\Neuronio|Mult_Accum|ALT_INV_Add0~61_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~61_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~57_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~57_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~53_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~53_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~49_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~49_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~45_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~45_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~41_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~41_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~37_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~37_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~33_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~33_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~29_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~29_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~25_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~25_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~21_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~21_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~17_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~17_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~13_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~13_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~9_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~9_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~5_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~5_sumout\;
\Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\ <= NOT \Neuronio|Mult_Accum|Add0~1_sumout\;

-- Location: IOOBUF_X76_Y0_N36
\O[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_O(0));

-- Location: IOOBUF_X89_Y11_N45
\O[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_O(1));

-- Location: IOOBUF_X89_Y11_N62
\O[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_O(2));

-- Location: IOOBUF_X84_Y0_N53
\O[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_O(3));

-- Location: IOOBUF_X89_Y6_N22
\O[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_O(4));

-- Location: IOOBUF_X89_Y6_N39
\O[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_O(5));

-- Location: IOOBUF_X89_Y9_N56
\O[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_O(6));

-- Location: IOOBUF_X89_Y6_N5
\O[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_O(7));

-- Location: IOOBUF_X89_Y9_N22
\O[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_O(8));

-- Location: IOOBUF_X89_Y6_N56
\O[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_O(9));

-- Location: IOOBUF_X89_Y8_N22
\O[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_O(10));

-- Location: IOOBUF_X80_Y0_N36
\O[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_O(11));

-- Location: IOOBUF_X89_Y8_N5
\O[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_O(12));

-- Location: IOOBUF_X89_Y9_N5
\O[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_O(13));

-- Location: IOOBUF_X89_Y9_N39
\O[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Neuronio|Activation|O[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_O(14));

-- Location: IOOBUF_X58_Y0_N93
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

-- Location: IOOBUF_X82_Y0_N59
\count_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|count_0\(0),
	devoe => ww_devoe,
	o => ww_count_out(0));

-- Location: IOOBUF_X82_Y0_N42
\count_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|count_0\(1),
	devoe => ww_devoe,
	o => ww_count_out(1));

-- Location: IOOBUF_X76_Y0_N2
\count_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|count_0\(2),
	devoe => ww_devoe,
	o => ww_count_out(2));

-- Location: IOOBUF_X84_Y0_N19
\count_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|count_0\(3),
	devoe => ww_devoe,
	o => ww_count_out(3));

-- Location: IOOBUF_X82_Y0_N93
\count_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|count_0\(4),
	devoe => ww_devoe,
	o => ww_count_out(4));

-- Location: IOOBUF_X76_Y0_N53
\count_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|count_0\(5),
	devoe => ww_devoe,
	o => ww_count_out(5));

-- Location: IOOBUF_X82_Y0_N76
\count_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|count_0\(6),
	devoe => ww_devoe,
	o => ww_count_out(6));

-- Location: IOOBUF_X80_Y0_N2
\count_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|count_0\(7),
	devoe => ww_devoe,
	o => ww_count_out(7));

-- Location: IOIBUF_X89_Y25_N21
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

-- Location: IOIBUF_X86_Y0_N1
\slv_Xin[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(0),
	o => \slv_Xin[0]~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\slv_Xin[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(1),
	o => \slv_Xin[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\slv_Xin[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(2),
	o => \slv_Xin[2]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\slv_Xin[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(3),
	o => \slv_Xin[3]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\slv_Xin[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(4),
	o => \slv_Xin[4]~input_o\);

-- Location: IOIBUF_X88_Y0_N2
\slv_Xin[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(5),
	o => \slv_Xin[5]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\slv_Xin[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(6),
	o => \slv_Xin[6]~input_o\);

-- Location: IOIBUF_X88_Y0_N53
\slv_Xin[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Xin(7),
	o => \slv_Xin[7]~input_o\);

-- Location: IOIBUF_X88_Y0_N19
\slv_Win[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(0),
	o => \slv_Win[0]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\slv_Win[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(1),
	o => \slv_Win[1]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\slv_Win[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(2),
	o => \slv_Win[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\slv_Win[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(3),
	o => \slv_Win[3]~input_o\);

-- Location: IOIBUF_X88_Y0_N36
\slv_Win[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(4),
	o => \slv_Win[4]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\slv_Win[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(5),
	o => \slv_Win[5]~input_o\);

-- Location: IOIBUF_X84_Y0_N35
\slv_Win[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(6),
	o => \slv_Win[6]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\slv_Win[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slv_Win(7),
	o => \slv_Win[7]~input_o\);

-- Location: DSP_X86_Y4_N0
\Neuronio|Mult_Accum|Mult0~8\ : cyclonev_mac
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
	ax => \Neuronio|Mult_Accum|Mult0~8_AX_bus\,
	ay => \Neuronio|Mult_Accum|Mult0~8_AY_bus\,
	bx => \Neuronio|Mult_Accum|Mult0~8_BX_bus\,
	by => \Neuronio|Mult_Accum|Mult0~8_BY_bus\,
	resulta => \Neuronio|Mult_Accum|Mult0~8_RESULTA_bus\);

-- Location: IOIBUF_X80_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: MLABCELL_X82_Y4_N30
\UC|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add1~1_sumout\ = SUM(( \UC|count_0\(0) ) + ( VCC ) + ( !VCC ))
-- \UC|Add1~2\ = CARRY(( \UC|count_0\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UC|ALT_INV_count_0\(0),
	cin => GND,
	sumout => \UC|Add1~1_sumout\,
	cout => \UC|Add1~2\);

-- Location: IOIBUF_X78_Y0_N1
\count[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(3),
	o => \count[3]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\count[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(2),
	o => \count[2]~input_o\);

-- Location: IOIBUF_X74_Y0_N41
\count[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(1),
	o => \count[1]~input_o\);

-- Location: IOIBUF_X74_Y0_N58
\count[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(0),
	o => \count[0]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\count[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(4),
	o => \count[4]~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\count[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(5),
	o => \count[5]~input_o\);

-- Location: LABCELL_X81_Y4_N24
\UC|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|LessThan0~0_combout\ = ( !\count[4]~input_o\ & ( !\count[5]~input_o\ & ( (!\count[3]~input_o\ & (!\count[2]~input_o\ & (!\count[1]~input_o\ & !\count[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[3]~input_o\,
	datab => \ALT_INV_count[2]~input_o\,
	datac => \ALT_INV_count[1]~input_o\,
	datad => \ALT_INV_count[0]~input_o\,
	datae => \ALT_INV_count[4]~input_o\,
	dataf => \ALT_INV_count[5]~input_o\,
	combout => \UC|LessThan0~0_combout\);

-- Location: IOIBUF_X80_Y0_N52
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X76_Y0_N18
\count[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(7),
	o => \count[7]~input_o\);

-- Location: IOIBUF_X78_Y0_N52
\count[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count(6),
	o => \count[6]~input_o\);

-- Location: LABCELL_X81_Y4_N30
\UC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add0~1_sumout\ = SUM(( \count[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \UC|Add0~2\ = CARRY(( \count[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[0]~input_o\,
	cin => GND,
	sumout => \UC|Add0~1_sumout\,
	cout => \UC|Add0~2\);

-- Location: LABCELL_X81_Y4_N9
\UC|count_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|count_0~0_combout\ = ( \count[0]~input_o\ & ( \UC|Add0~1_sumout\ & ( (!\UC|LessThan0~0_combout\) # ((!\start~input_o\) # ((\count[6]~input_o\) # (\count[7]~input_o\))) ) ) ) # ( !\count[0]~input_o\ & ( \UC|Add0~1_sumout\ & ( (\start~input_o\ & 
-- ((!\UC|LessThan0~0_combout\) # ((\count[6]~input_o\) # (\count[7]~input_o\)))) ) ) ) # ( \count[0]~input_o\ & ( !\UC|Add0~1_sumout\ & ( !\start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000100011001100111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_count[7]~input_o\,
	datad => \ALT_INV_count[6]~input_o\,
	datae => \ALT_INV_count[0]~input_o\,
	dataf => \UC|ALT_INV_Add0~1_sumout\,
	combout => \UC|count_0~0_combout\);

-- Location: MLABCELL_X82_Y4_N18
\UC|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal0~0_combout\ = ( !\UC|count_0\(5) & ( !\UC|count_0\(0) & ( (!\UC|count_0\(1) & (!\UC|count_0\(4) & (!\UC|count_0\(2) & !\UC|count_0\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_count_0\(1),
	datab => \UC|ALT_INV_count_0\(4),
	datac => \UC|ALT_INV_count_0\(2),
	datad => \UC|ALT_INV_count_0\(3),
	datae => \UC|ALT_INV_count_0\(5),
	dataf => \UC|ALT_INV_count_0\(0),
	combout => \UC|Equal0~0_combout\);

-- Location: MLABCELL_X82_Y4_N0
\UC|count_0[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|count_0[0]~1_combout\ = ( \UC|count_0\(7) & ( \UC|Equal0~0_combout\ & ( (\reset~input_o\ & ((!\UC|state~q\) # (\start~input_o\))) ) ) ) # ( !\UC|count_0\(7) & ( \UC|Equal0~0_combout\ & ( (\reset~input_o\ & ((!\UC|state~q\) # ((\start~input_o\ & 
-- \UC|count_0\(6))))) ) ) ) # ( \UC|count_0\(7) & ( !\UC|Equal0~0_combout\ & ( (\reset~input_o\ & ((!\UC|state~q\) # (\start~input_o\))) ) ) ) # ( !\UC|count_0\(7) & ( !\UC|Equal0~0_combout\ & ( (\reset~input_o\ & ((!\UC|state~q\) # (\start~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101100000000101010110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_state~q\,
	datab => \ALT_INV_start~input_o\,
	datac => \UC|ALT_INV_count_0\(6),
	datad => \ALT_INV_reset~input_o\,
	datae => \UC|ALT_INV_count_0\(7),
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	combout => \UC|count_0[0]~1_combout\);

-- Location: FF_X82_Y4_N32
\UC|count_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \UC|Add1~1_sumout\,
	asdata => \UC|count_0~0_combout\,
	sload => \UC|ALT_INV_state~q\,
	ena => \UC|count_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|count_0\(0));

-- Location: MLABCELL_X82_Y4_N33
\UC|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add1~5_sumout\ = SUM(( \UC|count_0\(1) ) + ( VCC ) + ( \UC|Add1~2\ ))
-- \UC|Add1~6\ = CARRY(( \UC|count_0\(1) ) + ( VCC ) + ( \UC|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UC|ALT_INV_count_0\(1),
	cin => \UC|Add1~2\,
	sumout => \UC|Add1~5_sumout\,
	cout => \UC|Add1~6\);

-- Location: LABCELL_X81_Y4_N33
\UC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add0~5_sumout\ = SUM(( \count[1]~input_o\ ) + ( VCC ) + ( \UC|Add0~2\ ))
-- \UC|Add0~6\ = CARRY(( \count[1]~input_o\ ) + ( VCC ) + ( \UC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[1]~input_o\,
	cin => \UC|Add0~2\,
	sumout => \UC|Add0~5_sumout\,
	cout => \UC|Add0~6\);

-- Location: LABCELL_X81_Y4_N15
\UC|count_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|count_0~2_combout\ = ( \count[1]~input_o\ & ( \UC|Add0~5_sumout\ & ( (!\UC|LessThan0~0_combout\) # (((!\start~input_o\) # (\count[6]~input_o\)) # (\count[7]~input_o\)) ) ) ) # ( !\count[1]~input_o\ & ( \UC|Add0~5_sumout\ & ( (\start~input_o\ & 
-- ((!\UC|LessThan0~0_combout\) # ((\count[6]~input_o\) # (\count[7]~input_o\)))) ) ) ) # ( \count[1]~input_o\ & ( !\UC|Add0~5_sumout\ & ( !\start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001011000011111111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_count[7]~input_o\,
	datac => \ALT_INV_start~input_o\,
	datad => \ALT_INV_count[6]~input_o\,
	datae => \ALT_INV_count[1]~input_o\,
	dataf => \UC|ALT_INV_Add0~5_sumout\,
	combout => \UC|count_0~2_combout\);

-- Location: FF_X82_Y4_N35
\UC|count_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \UC|Add1~5_sumout\,
	asdata => \UC|count_0~2_combout\,
	sload => \UC|ALT_INV_state~q\,
	ena => \UC|count_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|count_0\(1));

-- Location: MLABCELL_X82_Y4_N36
\UC|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add1~9_sumout\ = SUM(( \UC|count_0\(2) ) + ( VCC ) + ( \UC|Add1~6\ ))
-- \UC|Add1~10\ = CARRY(( \UC|count_0\(2) ) + ( VCC ) + ( \UC|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UC|ALT_INV_count_0\(2),
	cin => \UC|Add1~6\,
	sumout => \UC|Add1~9_sumout\,
	cout => \UC|Add1~10\);

-- Location: LABCELL_X81_Y4_N36
\UC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add0~9_sumout\ = SUM(( \count[2]~input_o\ ) + ( VCC ) + ( \UC|Add0~6\ ))
-- \UC|Add0~10\ = CARRY(( \count[2]~input_o\ ) + ( VCC ) + ( \UC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_count[2]~input_o\,
	cin => \UC|Add0~6\,
	sumout => \UC|Add0~9_sumout\,
	cout => \UC|Add0~10\);

-- Location: LABCELL_X81_Y4_N12
\UC|count_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|count_0~3_combout\ = ( \count[2]~input_o\ & ( \UC|Add0~9_sumout\ & ( (!\UC|LessThan0~0_combout\) # (((!\start~input_o\) # (\count[6]~input_o\)) # (\count[7]~input_o\)) ) ) ) # ( !\count[2]~input_o\ & ( \UC|Add0~9_sumout\ & ( (\start~input_o\ & 
-- ((!\UC|LessThan0~0_combout\) # ((\count[6]~input_o\) # (\count[7]~input_o\)))) ) ) ) # ( \count[2]~input_o\ & ( !\UC|Add0~9_sumout\ & ( !\start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_count[7]~input_o\,
	datac => \ALT_INV_count[6]~input_o\,
	datad => \ALT_INV_start~input_o\,
	datae => \ALT_INV_count[2]~input_o\,
	dataf => \UC|ALT_INV_Add0~9_sumout\,
	combout => \UC|count_0~3_combout\);

-- Location: FF_X82_Y4_N38
\UC|count_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \UC|Add1~9_sumout\,
	asdata => \UC|count_0~3_combout\,
	sload => \UC|ALT_INV_state~q\,
	ena => \UC|count_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|count_0\(2));

-- Location: MLABCELL_X82_Y4_N39
\UC|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add1~13_sumout\ = SUM(( \UC|count_0\(3) ) + ( VCC ) + ( \UC|Add1~10\ ))
-- \UC|Add1~14\ = CARRY(( \UC|count_0\(3) ) + ( VCC ) + ( \UC|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UC|ALT_INV_count_0\(3),
	cin => \UC|Add1~10\,
	sumout => \UC|Add1~13_sumout\,
	cout => \UC|Add1~14\);

-- Location: LABCELL_X81_Y4_N39
\UC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add0~13_sumout\ = SUM(( \count[3]~input_o\ ) + ( VCC ) + ( \UC|Add0~10\ ))
-- \UC|Add0~14\ = CARRY(( \count[3]~input_o\ ) + ( VCC ) + ( \UC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[3]~input_o\,
	cin => \UC|Add0~10\,
	sumout => \UC|Add0~13_sumout\,
	cout => \UC|Add0~14\);

-- Location: LABCELL_X81_Y4_N21
\UC|count_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|count_0~4_combout\ = ( \count[3]~input_o\ & ( \UC|Add0~13_sumout\ & ( (!\UC|LessThan0~0_combout\) # ((!\start~input_o\) # ((\count[6]~input_o\) # (\count[7]~input_o\))) ) ) ) # ( !\count[3]~input_o\ & ( \UC|Add0~13_sumout\ & ( (\start~input_o\ & 
-- ((!\UC|LessThan0~0_combout\) # ((\count[6]~input_o\) # (\count[7]~input_o\)))) ) ) ) # ( \count[3]~input_o\ & ( !\UC|Add0~13_sumout\ & ( !\start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000100011001100111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_count[7]~input_o\,
	datad => \ALT_INV_count[6]~input_o\,
	datae => \ALT_INV_count[3]~input_o\,
	dataf => \UC|ALT_INV_Add0~13_sumout\,
	combout => \UC|count_0~4_combout\);

-- Location: FF_X82_Y4_N41
\UC|count_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \UC|Add1~13_sumout\,
	asdata => \UC|count_0~4_combout\,
	sload => \UC|ALT_INV_state~q\,
	ena => \UC|count_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|count_0\(3));

-- Location: MLABCELL_X82_Y4_N42
\UC|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add1~17_sumout\ = SUM(( \UC|count_0\(4) ) + ( VCC ) + ( \UC|Add1~14\ ))
-- \UC|Add1~18\ = CARRY(( \UC|count_0\(4) ) + ( VCC ) + ( \UC|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UC|ALT_INV_count_0\(4),
	cin => \UC|Add1~14\,
	sumout => \UC|Add1~17_sumout\,
	cout => \UC|Add1~18\);

-- Location: LABCELL_X81_Y4_N42
\UC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add0~17_sumout\ = SUM(( \count[4]~input_o\ ) + ( VCC ) + ( \UC|Add0~14\ ))
-- \UC|Add0~18\ = CARRY(( \count[4]~input_o\ ) + ( VCC ) + ( \UC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[4]~input_o\,
	cin => \UC|Add0~14\,
	sumout => \UC|Add0~17_sumout\,
	cout => \UC|Add0~18\);

-- Location: LABCELL_X81_Y4_N6
\UC|count_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|count_0~5_combout\ = ( \count[4]~input_o\ & ( \UC|Add0~17_sumout\ & ( (!\UC|LessThan0~0_combout\) # ((!\start~input_o\) # ((\count[7]~input_o\) # (\count[6]~input_o\))) ) ) ) # ( !\count[4]~input_o\ & ( \UC|Add0~17_sumout\ & ( (\start~input_o\ & 
-- ((!\UC|LessThan0~0_combout\) # ((\count[7]~input_o\) # (\count[6]~input_o\)))) ) ) ) # ( \count[4]~input_o\ & ( !\UC|Add0~17_sumout\ & ( !\start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000100011001100111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_count[6]~input_o\,
	datad => \ALT_INV_count[7]~input_o\,
	datae => \ALT_INV_count[4]~input_o\,
	dataf => \UC|ALT_INV_Add0~17_sumout\,
	combout => \UC|count_0~5_combout\);

-- Location: FF_X82_Y4_N44
\UC|count_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \UC|Add1~17_sumout\,
	asdata => \UC|count_0~5_combout\,
	sload => \UC|ALT_INV_state~q\,
	ena => \UC|count_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|count_0\(4));

-- Location: MLABCELL_X82_Y4_N45
\UC|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add1~21_sumout\ = SUM(( \UC|count_0\(5) ) + ( VCC ) + ( \UC|Add1~18\ ))
-- \UC|Add1~22\ = CARRY(( \UC|count_0\(5) ) + ( VCC ) + ( \UC|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UC|ALT_INV_count_0\(5),
	cin => \UC|Add1~18\,
	sumout => \UC|Add1~21_sumout\,
	cout => \UC|Add1~22\);

-- Location: LABCELL_X81_Y4_N45
\UC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add0~21_sumout\ = SUM(( \count[5]~input_o\ ) + ( VCC ) + ( \UC|Add0~18\ ))
-- \UC|Add0~22\ = CARRY(( \count[5]~input_o\ ) + ( VCC ) + ( \UC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[5]~input_o\,
	cin => \UC|Add0~18\,
	sumout => \UC|Add0~21_sumout\,
	cout => \UC|Add0~22\);

-- Location: LABCELL_X81_Y4_N18
\UC|count_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|count_0~6_combout\ = ( \count[5]~input_o\ & ( \UC|Add0~21_sumout\ & ( (!\UC|LessThan0~0_combout\) # ((!\start~input_o\) # ((\count[7]~input_o\) # (\count[6]~input_o\))) ) ) ) # ( !\count[5]~input_o\ & ( \UC|Add0~21_sumout\ & ( (\start~input_o\ & 
-- ((!\UC|LessThan0~0_combout\) # ((\count[7]~input_o\) # (\count[6]~input_o\)))) ) ) ) # ( \count[5]~input_o\ & ( !\UC|Add0~21_sumout\ & ( !\start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000100011001100111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_count[6]~input_o\,
	datad => \ALT_INV_count[7]~input_o\,
	datae => \ALT_INV_count[5]~input_o\,
	dataf => \UC|ALT_INV_Add0~21_sumout\,
	combout => \UC|count_0~6_combout\);

-- Location: FF_X82_Y4_N47
\UC|count_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \UC|Add1~21_sumout\,
	asdata => \UC|count_0~6_combout\,
	sload => \UC|ALT_INV_state~q\,
	ena => \UC|count_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|count_0\(5));

-- Location: MLABCELL_X82_Y4_N48
\UC|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add1~25_sumout\ = SUM(( \UC|count_0\(6) ) + ( VCC ) + ( \UC|Add1~22\ ))
-- \UC|Add1~26\ = CARRY(( \UC|count_0\(6) ) + ( VCC ) + ( \UC|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UC|ALT_INV_count_0\(6),
	cin => \UC|Add1~22\,
	sumout => \UC|Add1~25_sumout\,
	cout => \UC|Add1~26\);

-- Location: LABCELL_X81_Y4_N48
\UC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add0~25_sumout\ = SUM(( \count[6]~input_o\ ) + ( VCC ) + ( \UC|Add0~22\ ))
-- \UC|Add0~26\ = CARRY(( \count[6]~input_o\ ) + ( VCC ) + ( \UC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[6]~input_o\,
	cin => \UC|Add0~22\,
	sumout => \UC|Add0~25_sumout\,
	cout => \UC|Add0~26\);

-- Location: LABCELL_X81_Y4_N3
\UC|count_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|count_0~7_combout\ = ( \UC|Add0~25_sumout\ & ( ((\start~input_o\ & ((!\UC|LessThan0~0_combout\) # (\count[7]~input_o\)))) # (\count[6]~input_o\) ) ) # ( !\UC|Add0~25_sumout\ & ( (!\start~input_o\ & \count[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000100011111111110010001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_count[7]~input_o\,
	datad => \ALT_INV_count[6]~input_o\,
	dataf => \UC|ALT_INV_Add0~25_sumout\,
	combout => \UC|count_0~7_combout\);

-- Location: FF_X82_Y4_N50
\UC|count_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \UC|Add1~25_sumout\,
	asdata => \UC|count_0~7_combout\,
	sload => \UC|ALT_INV_state~q\,
	ena => \UC|count_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|count_0\(6));

-- Location: MLABCELL_X82_Y4_N51
\UC|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add1~29_sumout\ = SUM(( \UC|count_0\(7) ) + ( VCC ) + ( \UC|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UC|ALT_INV_count_0\(7),
	cin => \UC|Add1~26\,
	sumout => \UC|Add1~29_sumout\);

-- Location: LABCELL_X81_Y4_N51
\UC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Add0~29_sumout\ = SUM(( \count[7]~input_o\ ) + ( VCC ) + ( \UC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[7]~input_o\,
	cin => \UC|Add0~26\,
	sumout => \UC|Add0~29_sumout\);

-- Location: LABCELL_X81_Y4_N0
\UC|count_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|count_0~8_combout\ = ( \count[7]~input_o\ & ( (!\start~input_o\) # (\UC|Add0~29_sumout\) ) ) # ( !\count[7]~input_o\ & ( (\start~input_o\ & (\UC|Add0~29_sumout\ & ((!\UC|LessThan0~0_combout\) # (\count[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000011000000100000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_start~input_o\,
	datac => \UC|ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_count[6]~input_o\,
	dataf => \ALT_INV_count[7]~input_o\,
	combout => \UC|count_0~8_combout\);

-- Location: FF_X82_Y4_N53
\UC|count_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \UC|Add1~29_sumout\,
	asdata => \UC|count_0~8_combout\,
	sload => \UC|ALT_INV_state~q\,
	ena => \UC|count_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|count_0\(7));

-- Location: MLABCELL_X82_Y4_N24
\UC|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal0~1_combout\ = ( \UC|Equal0~0_combout\ & ( (\UC|count_0\(6)) # (\UC|count_0\(7)) ) ) # ( !\UC|Equal0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC|ALT_INV_count_0\(7),
	datac => \UC|ALT_INV_count_0\(6),
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	combout => \UC|Equal0~1_combout\);

-- Location: LABCELL_X81_Y4_N57
\UC|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|process_0~0_combout\ = ( \start~input_o\ & ( \UC|LessThan0~0_combout\ & ( (\count[7]~input_o\) # (\count[6]~input_o\) ) ) ) # ( \start~input_o\ & ( !\UC|LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[6]~input_o\,
	datac => \ALT_INV_count[7]~input_o\,
	datae => \ALT_INV_start~input_o\,
	dataf => \UC|ALT_INV_LessThan0~0_combout\,
	combout => \UC|process_0~0_combout\);

-- Location: FF_X82_Y4_N26
\UC|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \UC|Equal0~1_combout\,
	asdata => \UC|process_0~0_combout\,
	clrn => \reset~input_o\,
	sload => \UC|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UC|state~q\);

-- Location: MLABCELL_X82_Y5_N45
\Neuronio|Mult_Accum|prod[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|prod[8]~0_combout\ = ( \UC|state~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \UC|ALT_INV_state~q\,
	combout => \Neuronio|Mult_Accum|prod[8]~0_combout\);

-- Location: FF_X81_Y5_N47
\Neuronio|Mult_Accum|prod[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~23\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(15));

-- Location: FF_X81_Y5_N44
\Neuronio|Mult_Accum|prod[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~22\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(14));

-- Location: FF_X81_Y5_N41
\Neuronio|Mult_Accum|prod[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~21\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(13));

-- Location: FF_X81_Y5_N38
\Neuronio|Mult_Accum|prod[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~20\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(12));

-- Location: FF_X81_Y5_N35
\Neuronio|Mult_Accum|prod[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~19\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(11));

-- Location: FF_X81_Y5_N32
\Neuronio|Mult_Accum|prod[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~18\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(10));

-- Location: FF_X81_Y5_N29
\Neuronio|Mult_Accum|prod[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~17\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(9));

-- Location: FF_X81_Y5_N26
\Neuronio|Mult_Accum|prod[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~16\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(8));

-- Location: FF_X81_Y5_N23
\Neuronio|Mult_Accum|prod[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~15\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(7));

-- Location: FF_X81_Y5_N20
\Neuronio|Mult_Accum|prod[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~14\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(6));

-- Location: FF_X81_Y5_N17
\Neuronio|Mult_Accum|prod[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~13\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(5));

-- Location: FF_X81_Y5_N14
\Neuronio|Mult_Accum|prod[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~12\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(4));

-- Location: FF_X81_Y5_N11
\Neuronio|Mult_Accum|prod[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~11\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(3));

-- Location: FF_X81_Y5_N8
\Neuronio|Mult_Accum|prod[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~10\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(2));

-- Location: FF_X81_Y5_N5
\Neuronio|Mult_Accum|prod[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~9\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(1));

-- Location: FF_X81_Y5_N2
\Neuronio|Mult_Accum|prod[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|Mult0~8_resulta\,
	sload => VCC,
	ena => \Neuronio|Mult_Accum|prod[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|prod\(0));

-- Location: LABCELL_X81_Y5_N0
\Neuronio|Mult_Accum|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~5_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(0) ) + ( \Neuronio|Mult_Accum|prod\(0) ) + ( !VCC ))
-- \Neuronio|Mult_Accum|Add0~6\ = CARRY(( \Neuronio|Mult_Accum|reg\(0) ) + ( \Neuronio|Mult_Accum|prod\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Neuronio|Mult_Accum|ALT_INV_prod\(0),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(0),
	cin => GND,
	sumout => \Neuronio|Mult_Accum|Add0~5_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~6\);

-- Location: MLABCELL_X82_Y5_N48
\Neuronio|Mult_Accum|reg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~2_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|prod\(15) & !\Neuronio|Mult_Accum|reg\(15))) # (\Neuronio|Mult_Accum|Add0~5_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~5_sumout\ & ((!\Neuronio|Mult_Accum|prod\(15)) # (!\Neuronio|Mult_Accum|reg\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001010110011101100111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datab => \Neuronio|Mult_Accum|ALT_INV_Add0~5_sumout\,
	datac => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~2_combout\);

-- Location: MLABCELL_X82_Y5_N54
\Neuronio|Mult_Accum|reg[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg[9]~1_combout\ = ( \UC|state~q\ ) # ( !\UC|state~q\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	dataf => \UC|ALT_INV_state~q\,
	combout => \Neuronio|Mult_Accum|reg[9]~1_combout\);

-- Location: FF_X82_Y5_N50
\Neuronio|Mult_Accum|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~2_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(0));

-- Location: LABCELL_X81_Y5_N3
\Neuronio|Mult_Accum|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~9_sumout\ = SUM(( \Neuronio|Mult_Accum|prod\(1) ) + ( \Neuronio|Mult_Accum|reg\(1) ) + ( \Neuronio|Mult_Accum|Add0~6\ ))
-- \Neuronio|Mult_Accum|Add0~10\ = CARRY(( \Neuronio|Mult_Accum|prod\(1) ) + ( \Neuronio|Mult_Accum|reg\(1) ) + ( \Neuronio|Mult_Accum|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Neuronio|Mult_Accum|ALT_INV_reg\(1),
	datad => \Neuronio|Mult_Accum|ALT_INV_prod\(1),
	cin => \Neuronio|Mult_Accum|Add0~6\,
	sumout => \Neuronio|Mult_Accum|Add0~9_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~10\);

-- Location: MLABCELL_X82_Y5_N57
\Neuronio|Mult_Accum|reg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~3_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|reg\(15) & !\Neuronio|Mult_Accum|prod\(15))) # (\Neuronio|Mult_Accum|Add0~9_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~9_sumout\ & ((!\Neuronio|Mult_Accum|reg\(15)) # (!\Neuronio|Mult_Accum|prod\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101010101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datac => \Neuronio|Mult_Accum|ALT_INV_Add0~9_sumout\,
	datad => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~3_combout\);

-- Location: FF_X82_Y5_N59
\Neuronio|Mult_Accum|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~3_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(1));

-- Location: LABCELL_X81_Y5_N6
\Neuronio|Mult_Accum|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~13_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(2) ) + ( \Neuronio|Mult_Accum|prod\(2) ) + ( \Neuronio|Mult_Accum|Add0~10\ ))
-- \Neuronio|Mult_Accum|Add0~14\ = CARRY(( \Neuronio|Mult_Accum|reg\(2) ) + ( \Neuronio|Mult_Accum|prod\(2) ) + ( \Neuronio|Mult_Accum|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Neuronio|Mult_Accum|ALT_INV_prod\(2),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(2),
	cin => \Neuronio|Mult_Accum|Add0~10\,
	sumout => \Neuronio|Mult_Accum|Add0~13_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~14\);

-- Location: MLABCELL_X82_Y5_N0
\Neuronio|Mult_Accum|reg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~4_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|prod\(15) & !\Neuronio|Mult_Accum|reg\(15))) # (\Neuronio|Mult_Accum|Add0~13_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~13_sumout\ & ((!\Neuronio|Mult_Accum|prod\(15)) # (!\Neuronio|Mult_Accum|reg\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110011000000111111111100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datac => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_Add0~13_sumout\,
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~4_combout\);

-- Location: FF_X82_Y5_N2
\Neuronio|Mult_Accum|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~4_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(2));

-- Location: LABCELL_X81_Y5_N9
\Neuronio|Mult_Accum|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~17_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(3) ) + ( \Neuronio|Mult_Accum|prod\(3) ) + ( \Neuronio|Mult_Accum|Add0~14\ ))
-- \Neuronio|Mult_Accum|Add0~18\ = CARRY(( \Neuronio|Mult_Accum|reg\(3) ) + ( \Neuronio|Mult_Accum|prod\(3) ) + ( \Neuronio|Mult_Accum|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Neuronio|Mult_Accum|ALT_INV_prod\(3),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(3),
	cin => \Neuronio|Mult_Accum|Add0~14\,
	sumout => \Neuronio|Mult_Accum|Add0~17_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~18\);

-- Location: MLABCELL_X82_Y5_N21
\Neuronio|Mult_Accum|reg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~5_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|reg\(15) & !\Neuronio|Mult_Accum|prod\(15))) # (\Neuronio|Mult_Accum|Add0~17_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~17_sumout\ & ((!\Neuronio|Mult_Accum|reg\(15)) # (!\Neuronio|Mult_Accum|prod\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111010001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datab => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datac => \Neuronio|Mult_Accum|ALT_INV_Add0~17_sumout\,
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~5_combout\);

-- Location: FF_X82_Y5_N23
\Neuronio|Mult_Accum|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~5_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(3));

-- Location: LABCELL_X81_Y5_N12
\Neuronio|Mult_Accum|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~21_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(4) ) + ( \Neuronio|Mult_Accum|prod\(4) ) + ( \Neuronio|Mult_Accum|Add0~18\ ))
-- \Neuronio|Mult_Accum|Add0~22\ = CARRY(( \Neuronio|Mult_Accum|reg\(4) ) + ( \Neuronio|Mult_Accum|prod\(4) ) + ( \Neuronio|Mult_Accum|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Neuronio|Mult_Accum|ALT_INV_prod\(4),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(4),
	cin => \Neuronio|Mult_Accum|Add0~18\,
	sumout => \Neuronio|Mult_Accum|Add0~21_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~22\);

-- Location: MLABCELL_X82_Y5_N42
\Neuronio|Mult_Accum|reg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~6_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|prod\(15) & !\Neuronio|Mult_Accum|reg\(15))) # (\Neuronio|Mult_Accum|Add0~21_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~21_sumout\ & ((!\Neuronio|Mult_Accum|prod\(15)) # (!\Neuronio|Mult_Accum|reg\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101010100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datac => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_Add0~21_sumout\,
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~6_combout\);

-- Location: FF_X82_Y5_N44
\Neuronio|Mult_Accum|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~6_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(4));

-- Location: LABCELL_X81_Y5_N15
\Neuronio|Mult_Accum|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~25_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(5) ) + ( \Neuronio|Mult_Accum|prod\(5) ) + ( \Neuronio|Mult_Accum|Add0~22\ ))
-- \Neuronio|Mult_Accum|Add0~26\ = CARRY(( \Neuronio|Mult_Accum|reg\(5) ) + ( \Neuronio|Mult_Accum|prod\(5) ) + ( \Neuronio|Mult_Accum|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Neuronio|Mult_Accum|ALT_INV_prod\(5),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(5),
	cin => \Neuronio|Mult_Accum|Add0~22\,
	sumout => \Neuronio|Mult_Accum|Add0~25_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~26\);

-- Location: MLABCELL_X82_Y5_N27
\Neuronio|Mult_Accum|reg~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~7_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|reg\(15) & !\Neuronio|Mult_Accum|prod\(15))) # (\Neuronio|Mult_Accum|Add0~25_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~25_sumout\ & ((!\Neuronio|Mult_Accum|reg\(15)) # (!\Neuronio|Mult_Accum|prod\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111010001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datab => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datac => \Neuronio|Mult_Accum|ALT_INV_Add0~25_sumout\,
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~7_combout\);

-- Location: FF_X82_Y5_N29
\Neuronio|Mult_Accum|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~7_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(5));

-- Location: LABCELL_X81_Y5_N18
\Neuronio|Mult_Accum|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~29_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(6) ) + ( \Neuronio|Mult_Accum|prod\(6) ) + ( \Neuronio|Mult_Accum|Add0~26\ ))
-- \Neuronio|Mult_Accum|Add0~30\ = CARRY(( \Neuronio|Mult_Accum|reg\(6) ) + ( \Neuronio|Mult_Accum|prod\(6) ) + ( \Neuronio|Mult_Accum|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Neuronio|Mult_Accum|ALT_INV_prod\(6),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(6),
	cin => \Neuronio|Mult_Accum|Add0~26\,
	sumout => \Neuronio|Mult_Accum|Add0~29_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~30\);

-- Location: MLABCELL_X82_Y5_N6
\Neuronio|Mult_Accum|reg~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~8_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|reg\(15) & !\Neuronio|Mult_Accum|prod\(15))) # (\Neuronio|Mult_Accum|Add0~29_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~29_sumout\ & ((!\Neuronio|Mult_Accum|reg\(15)) # (!\Neuronio|Mult_Accum|prod\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000011110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Neuronio|Mult_Accum|ALT_INV_Add0~29_sumout\,
	datac => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~8_combout\);

-- Location: FF_X82_Y5_N8
\Neuronio|Mult_Accum|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~8_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(6));

-- Location: LABCELL_X81_Y5_N21
\Neuronio|Mult_Accum|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~33_sumout\ = SUM(( \Neuronio|Mult_Accum|prod\(7) ) + ( \Neuronio|Mult_Accum|reg\(7) ) + ( \Neuronio|Mult_Accum|Add0~30\ ))
-- \Neuronio|Mult_Accum|Add0~34\ = CARRY(( \Neuronio|Mult_Accum|prod\(7) ) + ( \Neuronio|Mult_Accum|reg\(7) ) + ( \Neuronio|Mult_Accum|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Neuronio|Mult_Accum|ALT_INV_reg\(7),
	datad => \Neuronio|Mult_Accum|ALT_INV_prod\(7),
	cin => \Neuronio|Mult_Accum|Add0~30\,
	sumout => \Neuronio|Mult_Accum|Add0~33_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~34\);

-- Location: MLABCELL_X82_Y5_N39
\Neuronio|Mult_Accum|reg~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~9_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|reg\(15) & !\Neuronio|Mult_Accum|prod\(15))) # (\Neuronio|Mult_Accum|Add0~33_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~33_sumout\ & ((!\Neuronio|Mult_Accum|reg\(15)) # (!\Neuronio|Mult_Accum|prod\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111010001000111111111000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datab => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_Add0~33_sumout\,
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~9_combout\);

-- Location: FF_X82_Y5_N41
\Neuronio|Mult_Accum|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~9_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(7));

-- Location: LABCELL_X81_Y5_N24
\Neuronio|Mult_Accum|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~37_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(8) ) + ( \Neuronio|Mult_Accum|prod\(8) ) + ( \Neuronio|Mult_Accum|Add0~34\ ))
-- \Neuronio|Mult_Accum|Add0~38\ = CARRY(( \Neuronio|Mult_Accum|reg\(8) ) + ( \Neuronio|Mult_Accum|prod\(8) ) + ( \Neuronio|Mult_Accum|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Neuronio|Mult_Accum|ALT_INV_reg\(8),
	datac => \Neuronio|Mult_Accum|ALT_INV_prod\(8),
	cin => \Neuronio|Mult_Accum|Add0~34\,
	sumout => \Neuronio|Mult_Accum|Add0~37_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~38\);

-- Location: MLABCELL_X82_Y5_N12
\Neuronio|Mult_Accum|reg~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~10_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|reg\(15) & !\Neuronio|Mult_Accum|prod\(15))) # (\Neuronio|Mult_Accum|Add0~37_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~37_sumout\ & ((!\Neuronio|Mult_Accum|reg\(15)) # (!\Neuronio|Mult_Accum|prod\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001010110011101100111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datab => \Neuronio|Mult_Accum|ALT_INV_Add0~37_sumout\,
	datac => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~10_combout\);

-- Location: FF_X82_Y5_N14
\Neuronio|Mult_Accum|reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~10_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(8));

-- Location: LABCELL_X81_Y5_N27
\Neuronio|Mult_Accum|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~41_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(9) ) + ( \Neuronio|Mult_Accum|prod\(9) ) + ( \Neuronio|Mult_Accum|Add0~38\ ))
-- \Neuronio|Mult_Accum|Add0~42\ = CARRY(( \Neuronio|Mult_Accum|reg\(9) ) + ( \Neuronio|Mult_Accum|prod\(9) ) + ( \Neuronio|Mult_Accum|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_prod\(9),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(9),
	cin => \Neuronio|Mult_Accum|Add0~38\,
	sumout => \Neuronio|Mult_Accum|Add0~41_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~42\);

-- Location: MLABCELL_X82_Y5_N15
\Neuronio|Mult_Accum|reg~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~11_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|reg\(15) & !\Neuronio|Mult_Accum|prod\(15))) # (\Neuronio|Mult_Accum|Add0~41_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~41_sumout\ & ((!\Neuronio|Mult_Accum|reg\(15)) # (!\Neuronio|Mult_Accum|prod\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101010100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datac => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_Add0~41_sumout\,
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~11_combout\);

-- Location: FF_X82_Y5_N17
\Neuronio|Mult_Accum|reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~11_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(9));

-- Location: LABCELL_X81_Y5_N30
\Neuronio|Mult_Accum|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~45_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(10) ) + ( \Neuronio|Mult_Accum|prod\(10) ) + ( \Neuronio|Mult_Accum|Add0~42\ ))
-- \Neuronio|Mult_Accum|Add0~46\ = CARRY(( \Neuronio|Mult_Accum|reg\(10) ) + ( \Neuronio|Mult_Accum|prod\(10) ) + ( \Neuronio|Mult_Accum|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Neuronio|Mult_Accum|ALT_INV_prod\(10),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(10),
	cin => \Neuronio|Mult_Accum|Add0~42\,
	sumout => \Neuronio|Mult_Accum|Add0~45_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~46\);

-- Location: MLABCELL_X82_Y5_N24
\Neuronio|Mult_Accum|reg~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~12_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|reg\(15) & !\Neuronio|Mult_Accum|prod\(15))) # (\Neuronio|Mult_Accum|Add0~45_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~45_sumout\ & ((!\Neuronio|Mult_Accum|reg\(15)) # (!\Neuronio|Mult_Accum|prod\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111010001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datab => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datac => \Neuronio|Mult_Accum|ALT_INV_Add0~45_sumout\,
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~12_combout\);

-- Location: FF_X82_Y5_N26
\Neuronio|Mult_Accum|reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~12_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(10));

-- Location: LABCELL_X81_Y5_N33
\Neuronio|Mult_Accum|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~49_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(11) ) + ( \Neuronio|Mult_Accum|prod\(11) ) + ( \Neuronio|Mult_Accum|Add0~46\ ))
-- \Neuronio|Mult_Accum|Add0~50\ = CARRY(( \Neuronio|Mult_Accum|reg\(11) ) + ( \Neuronio|Mult_Accum|prod\(11) ) + ( \Neuronio|Mult_Accum|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_prod\(11),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(11),
	cin => \Neuronio|Mult_Accum|Add0~46\,
	sumout => \Neuronio|Mult_Accum|Add0~49_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~50\);

-- Location: MLABCELL_X82_Y5_N3
\Neuronio|Mult_Accum|reg~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~13_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|reg\(15) & !\Neuronio|Mult_Accum|prod\(15))) # (\Neuronio|Mult_Accum|Add0~49_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~49_sumout\ & ((!\Neuronio|Mult_Accum|reg\(15)) # (!\Neuronio|Mult_Accum|prod\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111010001000111111111000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datab => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_Add0~49_sumout\,
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~13_combout\);

-- Location: FF_X82_Y5_N5
\Neuronio|Mult_Accum|reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~13_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(11));

-- Location: LABCELL_X81_Y5_N36
\Neuronio|Mult_Accum|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~53_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(12) ) + ( \Neuronio|Mult_Accum|prod\(12) ) + ( \Neuronio|Mult_Accum|Add0~50\ ))
-- \Neuronio|Mult_Accum|Add0~54\ = CARRY(( \Neuronio|Mult_Accum|reg\(12) ) + ( \Neuronio|Mult_Accum|prod\(12) ) + ( \Neuronio|Mult_Accum|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Neuronio|Mult_Accum|ALT_INV_prod\(12),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(12),
	cin => \Neuronio|Mult_Accum|Add0~50\,
	sumout => \Neuronio|Mult_Accum|Add0~53_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~54\);

-- Location: MLABCELL_X82_Y5_N36
\Neuronio|Mult_Accum|reg~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~14_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|reg\(15) & !\Neuronio|Mult_Accum|prod\(15))) # (\Neuronio|Mult_Accum|Add0~53_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~53_sumout\ & ((!\Neuronio|Mult_Accum|reg\(15)) # (!\Neuronio|Mult_Accum|prod\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111010001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datab => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datac => \Neuronio|Mult_Accum|ALT_INV_Add0~53_sumout\,
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~14_combout\);

-- Location: FF_X82_Y5_N38
\Neuronio|Mult_Accum|reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~14_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(12));

-- Location: LABCELL_X81_Y5_N39
\Neuronio|Mult_Accum|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~57_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(13) ) + ( \Neuronio|Mult_Accum|prod\(13) ) + ( \Neuronio|Mult_Accum|Add0~54\ ))
-- \Neuronio|Mult_Accum|Add0~58\ = CARRY(( \Neuronio|Mult_Accum|reg\(13) ) + ( \Neuronio|Mult_Accum|prod\(13) ) + ( \Neuronio|Mult_Accum|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Neuronio|Mult_Accum|ALT_INV_prod\(13),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(13),
	cin => \Neuronio|Mult_Accum|Add0~54\,
	sumout => \Neuronio|Mult_Accum|Add0~57_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~58\);

-- Location: MLABCELL_X82_Y5_N9
\Neuronio|Mult_Accum|reg~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~15_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|prod\(15) & !\Neuronio|Mult_Accum|reg\(15))) # (\Neuronio|Mult_Accum|Add0~57_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~57_sumout\ & ((!\Neuronio|Mult_Accum|prod\(15)) # (!\Neuronio|Mult_Accum|reg\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000011110101010101011111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_Add0~57_sumout\,
	datac => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~15_combout\);

-- Location: FF_X82_Y5_N11
\Neuronio|Mult_Accum|reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~15_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(13));

-- Location: LABCELL_X81_Y5_N42
\Neuronio|Mult_Accum|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~61_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(14) ) + ( \Neuronio|Mult_Accum|prod\(14) ) + ( \Neuronio|Mult_Accum|Add0~58\ ))
-- \Neuronio|Mult_Accum|Add0~62\ = CARRY(( \Neuronio|Mult_Accum|reg\(14) ) + ( \Neuronio|Mult_Accum|prod\(14) ) + ( \Neuronio|Mult_Accum|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Neuronio|Mult_Accum|ALT_INV_reg\(14),
	dataf => \Neuronio|Mult_Accum|ALT_INV_prod\(14),
	cin => \Neuronio|Mult_Accum|Add0~58\,
	sumout => \Neuronio|Mult_Accum|Add0~61_sumout\,
	cout => \Neuronio|Mult_Accum|Add0~62\);

-- Location: MLABCELL_X82_Y5_N18
\Neuronio|Mult_Accum|reg~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~16_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( ((!\Neuronio|Mult_Accum|prod\(15) & !\Neuronio|Mult_Accum|reg\(15))) # (\Neuronio|Mult_Accum|Add0~61_sumout\) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( 
-- (\Neuronio|Mult_Accum|Add0~61_sumout\ & ((!\Neuronio|Mult_Accum|prod\(15)) # (!\Neuronio|Mult_Accum|reg\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110011000000111111111100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datac => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_Add0~61_sumout\,
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~16_combout\);

-- Location: FF_X82_Y5_N20
\Neuronio|Mult_Accum|reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~16_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(14));

-- Location: LABCELL_X81_Y5_N45
\Neuronio|Mult_Accum|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|Add0~1_sumout\ = SUM(( \Neuronio|Mult_Accum|reg\(15) ) + ( \Neuronio|Mult_Accum|prod\(15) ) + ( \Neuronio|Mult_Accum|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	datab => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	cin => \Neuronio|Mult_Accum|Add0~62\,
	sumout => \Neuronio|Mult_Accum|Add0~1_sumout\);

-- Location: MLABCELL_X82_Y5_N51
\Neuronio|Mult_Accum|reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Mult_Accum|reg~0_combout\ = ( \Neuronio|Mult_Accum|Add0~1_sumout\ & ( (\Neuronio|Mult_Accum|reg\(15)) # (\Neuronio|Mult_Accum|prod\(15)) ) ) # ( !\Neuronio|Mult_Accum|Add0~1_sumout\ & ( (\Neuronio|Mult_Accum|prod\(15) & 
-- \Neuronio|Mult_Accum|reg\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_prod\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_reg\(15),
	dataf => \Neuronio|Mult_Accum|ALT_INV_Add0~1_sumout\,
	combout => \Neuronio|Mult_Accum|reg~0_combout\);

-- Location: FF_X82_Y5_N53
\Neuronio|Mult_Accum|reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Neuronio|Mult_Accum|reg~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \Neuronio|Mult_Accum|reg[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|reg\(15));

-- Location: FF_X82_Y5_N31
\Neuronio|Mult_Accum|accum_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(15));

-- Location: FF_X82_Y5_N35
\Neuronio|Mult_Accum|accum_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(0));

-- Location: MLABCELL_X82_Y5_N33
\Neuronio|Activation|O[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[0]~0_combout\ = ( \Neuronio|Mult_Accum|accum_out\(0) & ( !\Neuronio|Mult_Accum|accum_out\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	datae => \Neuronio|Mult_Accum|ALT_INV_accum_out\(0),
	combout => \Neuronio|Activation|O[0]~0_combout\);

-- Location: FF_X83_Y5_N38
\Neuronio|Mult_Accum|accum_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(1));

-- Location: LABCELL_X83_Y5_N36
\Neuronio|Activation|O[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[1]~1_combout\ = ( \Neuronio|Mult_Accum|accum_out\(1) & ( !\Neuronio|Mult_Accum|accum_out\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Neuronio|Mult_Accum|ALT_INV_accum_out\(1),
	dataf => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	combout => \Neuronio|Activation|O[1]~1_combout\);

-- Location: FF_X83_Y5_N47
\Neuronio|Mult_Accum|accum_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(2));

-- Location: LABCELL_X83_Y5_N45
\Neuronio|Activation|O[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[2]~2_combout\ = ( \Neuronio|Mult_Accum|accum_out\(2) & ( !\Neuronio|Mult_Accum|accum_out\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Neuronio|Mult_Accum|ALT_INV_accum_out\(2),
	dataf => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	combout => \Neuronio|Activation|O[2]~2_combout\);

-- Location: FF_X83_Y5_N5
\Neuronio|Mult_Accum|accum_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(3));

-- Location: LABCELL_X83_Y5_N3
\Neuronio|Activation|O[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[3]~3_combout\ = ( \Neuronio|Mult_Accum|accum_out\(3) & ( !\Neuronio|Mult_Accum|accum_out\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Neuronio|Mult_Accum|ALT_INV_accum_out\(3),
	dataf => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	combout => \Neuronio|Activation|O[3]~3_combout\);

-- Location: FF_X83_Y5_N23
\Neuronio|Mult_Accum|accum_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(4));

-- Location: LABCELL_X83_Y5_N21
\Neuronio|Activation|O[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[4]~4_combout\ = ( \Neuronio|Mult_Accum|accum_out\(4) & ( !\Neuronio|Mult_Accum|accum_out\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Neuronio|Mult_Accum|ALT_INV_accum_out\(4),
	dataf => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	combout => \Neuronio|Activation|O[4]~4_combout\);

-- Location: FF_X83_Y5_N50
\Neuronio|Mult_Accum|accum_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(5));

-- Location: LABCELL_X83_Y5_N48
\Neuronio|Activation|O[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[5]~5_combout\ = (!\Neuronio|Mult_Accum|accum_out\(15) & \Neuronio|Mult_Accum|accum_out\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_accum_out\(5),
	combout => \Neuronio|Activation|O[5]~5_combout\);

-- Location: FF_X83_Y5_N32
\Neuronio|Mult_Accum|accum_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(6));

-- Location: LABCELL_X83_Y5_N30
\Neuronio|Activation|O[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[6]~6_combout\ = (!\Neuronio|Mult_Accum|accum_out\(15) & \Neuronio|Mult_Accum|accum_out\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_accum_out\(6),
	combout => \Neuronio|Activation|O[6]~6_combout\);

-- Location: FF_X83_Y5_N53
\Neuronio|Mult_Accum|accum_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(7));

-- Location: LABCELL_X83_Y5_N51
\Neuronio|Activation|O[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[7]~7_combout\ = (!\Neuronio|Mult_Accum|accum_out\(15) & \Neuronio|Mult_Accum|accum_out\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_accum_out\(7),
	combout => \Neuronio|Activation|O[7]~7_combout\);

-- Location: FF_X83_Y5_N26
\Neuronio|Mult_Accum|accum_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(8));

-- Location: LABCELL_X83_Y5_N24
\Neuronio|Activation|O[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[8]~8_combout\ = ( \Neuronio|Mult_Accum|accum_out\(8) & ( !\Neuronio|Mult_Accum|accum_out\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Neuronio|Mult_Accum|ALT_INV_accum_out\(8),
	dataf => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	combout => \Neuronio|Activation|O[8]~8_combout\);

-- Location: FF_X83_Y5_N8
\Neuronio|Mult_Accum|accum_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(9));

-- Location: LABCELL_X83_Y5_N6
\Neuronio|Activation|O[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[9]~9_combout\ = ( \Neuronio|Mult_Accum|accum_out\(9) & ( !\Neuronio|Mult_Accum|accum_out\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Neuronio|Mult_Accum|ALT_INV_accum_out\(9),
	dataf => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	combout => \Neuronio|Activation|O[9]~9_combout\);

-- Location: FF_X83_Y5_N14
\Neuronio|Mult_Accum|accum_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(10));

-- Location: LABCELL_X83_Y5_N12
\Neuronio|Activation|O[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[10]~10_combout\ = (!\Neuronio|Mult_Accum|accum_out\(15) & \Neuronio|Mult_Accum|accum_out\(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_accum_out\(10),
	combout => \Neuronio|Activation|O[10]~10_combout\);

-- Location: FF_X83_Y5_N17
\Neuronio|Mult_Accum|accum_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(11));

-- Location: LABCELL_X83_Y5_N15
\Neuronio|Activation|O[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[11]~11_combout\ = (!\Neuronio|Mult_Accum|accum_out\(15) & \Neuronio|Mult_Accum|accum_out\(11))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_accum_out\(11),
	combout => \Neuronio|Activation|O[11]~11_combout\);

-- Location: FF_X83_Y5_N35
\Neuronio|Mult_Accum|accum_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(12));

-- Location: LABCELL_X83_Y5_N33
\Neuronio|Activation|O[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[12]~12_combout\ = (!\Neuronio|Mult_Accum|accum_out\(15) & \Neuronio|Mult_Accum|accum_out\(12))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_accum_out\(12),
	combout => \Neuronio|Activation|O[12]~12_combout\);

-- Location: FF_X83_Y5_N56
\Neuronio|Mult_Accum|accum_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(13));

-- Location: LABCELL_X83_Y5_N54
\Neuronio|Activation|O[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[13]~13_combout\ = (!\Neuronio|Mult_Accum|accum_out\(15) & \Neuronio|Mult_Accum|accum_out\(13))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_accum_out\(13),
	combout => \Neuronio|Activation|O[13]~13_combout\);

-- Location: FF_X83_Y5_N59
\Neuronio|Mult_Accum|accum_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Neuronio|Mult_Accum|reg\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuronio|Mult_Accum|accum_out\(14));

-- Location: LABCELL_X83_Y5_N57
\Neuronio|Activation|O[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Neuronio|Activation|O[14]~14_combout\ = (!\Neuronio|Mult_Accum|accum_out\(15) & \Neuronio|Mult_Accum|accum_out\(14))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Neuronio|Mult_Accum|ALT_INV_accum_out\(15),
	datad => \Neuronio|Mult_Accum|ALT_INV_accum_out\(14),
	combout => \Neuronio|Activation|O[14]~14_combout\);

-- Location: LABCELL_X56_Y23_N3
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


