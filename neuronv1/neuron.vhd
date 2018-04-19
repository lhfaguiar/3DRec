----------------------------------------------------------------------------------
--Engineer: Gabriel Piazzalunga Based on the work of
--                                       Diego Ceresuela, Oscar Clemente.
-- 
-- Create Date: 13/4 
-- Module Name: Neuron - Behavioral
-- Description: Implements a neuron prepared to be connected into a network using an aproximation of the sigmoid
--  function based on a ROM and using Q15.16 signed codification.
-- 
-- Dependencies: sigmoid.vhd data_types.vhd adder_tree.vhd
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Neuron is
    generic ( n : integer := 7 );
    Port ( slv_Xin, slv_Win : in STD_LOGIC_VECTOR (n downto 0); --Values
           clk : in STD_LOGIC;
			  RST: in STD_LOGIC;
           O : out STD_LOGIC_VECTOR (15 downto 0)  );
end Neuron;

architecture Behavioral of Neuron is
    component sig_altmult_accum
    port 
	(	a			: in signed(7 downto 0);
		b			: in signed (7 downto 0);
		clk			: in std_logic;
		sload		: in std_logic;
		accum_out	: out signed (15 downto 0)
	);
    end component;
	 
	 component RELU
    port 
	(	Activ_in	: in signed(15 downto 0);
		O	: out signed (15 downto 0)
	);
    end component;
	 
	 
    signal accum_out : signed(15 downto 0); --:=> x"0000000000000000";
	 signal Xin, Win : signed (7 downto 0);
	 signal Out_RELU: signed (15 downto 0);
    --signal Y : STD_LOGIC_VECTOR (31 downto 0); ; 
begin
	Xin <= signed(slv_Xin);
	Win <= signed(slv_Win);
	Mult_Accum: sig_altmult_accum port map (Xin,Win,clk,RST,accum_out); 
   Activation : RELU port map (accum_out,Out_RELU);
	O <= std_logic_vector(Out_RELU);
end Behavioral;