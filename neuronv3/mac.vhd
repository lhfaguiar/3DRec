LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE work.my_functions.all;

entity mac is
	port 
	(
		a			: in signed(7 downto 0);
		b			: in signed (7 downto 0);
		clk			: in std_logic;
		rst		: in std_logic;
		start: in std_logic;
		accum_out	: out signed (15 downto 0)
	);
	
end entity;

architecture rtl of mac is

	-- Declare registers for intermediate values
	signal prod,reg: SIGNED(15 downto 0);

begin
	process (rst,clk)
		variable sum: signed(15 downto 0);
	begin
		if (start='1') then
			prod <= a * b;
			IF (rst='1') THEN
				reg <= (OTHERS => '0');
			ELSIF (clk'EVENT AND clk='1') THEN
				sum := add_truncate (prod,reg,16);
				reg <= sum;
			END IF;
			accum_out <= reg;
		else
			accum_out <= reg;
		end if;
	end process;
	
end rtl;
