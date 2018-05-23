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

library work;
use work.data_types.all;

entity Neuronio is
    generic ( n : integer := 0 );
    Port ( Xin, Win : in STD_LOGIC_VECTOR (7 downto 0); --Values
           clk : in STD_LOGIC;
           O : out STD_LOGIC_VECTOR (31 downto 0)  );
end Neuronio;

architecture Behavioral of Neuronio is

   ------ SUBSTITUIR POR RRELU
	component sigmoid
        port ( Y : in STD_LOGIC_VECTOR (31 downto 0);
               O : out STD_LOGIC_VECTOR (31 downto 0);
               clk: in STD_LOGIC );
    end component;
	-------------------
-- mult accum
component sig_altmult_accum is
	port 
	(
		a			: in signed(7 downto 0);
		b			: in signed (7 downto 0);
		clk			: in std_logic;
		RST		: in std_logic;
		accum_out	: out signed (15 downto 0)
	);
	
end component;


begin 
	signal RST: std_logic;
	signal accum_out: signed (15 downto 0);
	Mult_Acc: sig_altmult_accum port map (Xin, Win, clk, RST, accum_out);
		
   -- Xin <= to_vec(slv_Xin);
   -- Win <= to_vec(slv_Win);
   -- d <= to_slv(Prod);
    process (clk)
    begin
        if rising_edge(clk) then
            if (cond) then
                Y <= to_stdlogicvector(to_bitvector(std_logic_vector(signed(Xin(0)) * signed(Win(0)))) sra 16)(31 downto 0);
            else
                Y <= std_logic_vector(sum); 
            end if;
        end if;
    end process;

end Behavioral;