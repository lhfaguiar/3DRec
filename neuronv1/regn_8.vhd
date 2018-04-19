-- registers 8bits
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY regn_8 IS
GENERIC ( n : INTEGER := 8);
PORT ( R : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	Rin, Clock : IN STD_LOGIC;
	Q : out STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END regn_8;
ARCHITECTURE Behavior OF regn_8 IS
BEGIN
PROCESS (Clock)
BEGIN

IF Clock'EVENT AND Clock = '1' THEN
	IF Rin = '1' THEN
		Q <= R;
	END IF;
END IF;
END PROCESS;
END Behavior;