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
    generic ( 	n : integer := 7 );
    Port ( slv_Xin, slv_Win : in STD_LOGIC_VECTOR (n downto 0); --Values
           clk : in STD_LOGIC;
			  reset: in STD_LOGIC;
			  start: in STD_LOGIC;
			  count: in std_logic_vector(7 downto 0);
           O : out STD_LOGIC_VECTOR (15 downto 0)  
			  );
end Neuron;

architecture Behavioral of Neuron is
    component NE
    port 
	(	slv_Xin, slv_Win : in STD_LOGIC_VECTOR (n downto 0); --Values
           clk : in STD_LOGIC;
			  RST: in STD_LOGIC;
			  start: in STD_LOGIC;
           O : out STD_LOGIC_VECTOR (15 downto 0)  );
    end component;
	 
	 component state_machine
	 port 
	 (clk		 : in	std_logic;
		start	 : in	std_logic;
		reset	 : in	std_logic;
		count	 : in std_logic_vector (7 downto 0);
		status : out	std_logic 
	 );
	 end component;
    --signal Y : STD_LOGIC_VECTOR (31 downto 0); ; 
	 signal status: std_logic;
begin
	Neuronio: NE port map (slv_Xin,slv_Win,clk,reset,not(status),O); 
   UC : state_machine port map (clk,start,reset,count,status);
end Behavioral;