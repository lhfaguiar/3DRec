library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RELU is
    port 
	(	Activ_in	: in signed(15 downto 0);
		O	: out signed (15 downto 0)
	);
 end RELU;
 
 architecture Behavioral of RELU is
 
 begin
 
O <= Activ_in when (Activ_in > "0000000000000000") else "0000000000000000";
 
 end Behavioral;