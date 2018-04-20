----------------------------------------------------------------------------------
--Engineer: Gabriel Piazzalunga
-- 
-- Create Date: 13/4 
-- Module Name: Neuron - Behavioral
-- Description: Implements a neuron prepared to be connected into a network 
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
    component mac
    port 
	(	a			: in signed(7 downto 0);
		b			: in signed (7 downto 0);
		clk			: in std_logic;
		rst		: in std_logic;
		accum_out	: out signed (15 downto 0)
	);
    end component;
	 
	 component RELU
    port 
	(	Activ_in	: in signed(15 downto 0);
		O	: out signed (15 downto 0)
	);
    end component;
	 
	 
    signal accum_out : signed(15 downto 0) := "0000000000000000";
	 signal teste: signed(15 downto 0);
	 signal Xin, Win : signed (7 downto 0);
	 signal Out_RELU: signed (15 downto 0);
    --signal Y : STD_LOGIC_VECTOR (31 downto 0); ; 
begin
	--teste <= "0010000000001000";
	Xin <= signed(slv_Xin);
	Win <= signed(slv_Win);
	Mult_Accum: mac port map (Xin,Win,clk,RST,accum_out); 
   Activation : RELU port map (accum_out,Out_RELU);
	O <= std_logic_vector(Out_RELU);
end Behavioral;