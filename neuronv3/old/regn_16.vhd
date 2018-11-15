-- registers 16bits
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY regn_16 IS
GENERIC ( n : INTEGER := 16);
PORT ( R : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	Rin, Clock : IN STD_LOGIC;
	Q : out STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END regn_16;
ARCHITECTURE Behavior OF regn_16 IS
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