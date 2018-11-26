LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY reg16 IS
	PORT (clock, resetn  : IN STD_LOGIC;
			write: in std_logic;
			D 			 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			Q 			 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) );
END reg16;

ARCHITECTURE Behavior OF reg16 IS
signal A,B : std_logic_vector(15 downto 0);
BEGIN

A <= D(31 downto 16);
B <= D(15 downto 0);
	PROCESS
	BEGIN
		WAIT UNTIL clock'EVENT AND clock = '1';
			IF resetn = '0' THEN
				Q <= "00000000000000000000000000000000";
			ELSE
				if write = '1' then
					Q <= std_logic_vector(unsigned(A) * unsigned(B)); 
				end if;
			END IF;
	END PROCESS;
END Behavior;