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
	PROCESS
		variable sum: signed(15 downto 0);	
	BEGIN
		WAIT UNTIL clk'EVENT AND clk = '1';
			IF rst = '0' THEN
				reg <= (OTHERS => '0');
			ELSE
				if start = '1' then
					prod <= (a * b);
					sum := add_truncate(prod,reg,16);
					reg <= sum;	
				end if;
			END IF;
		accum_out <=reg;
	end process;
end rtl;
