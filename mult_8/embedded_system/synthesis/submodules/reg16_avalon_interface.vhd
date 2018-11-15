LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY reg16_avalon_interface IS
    PORT (clock, resetn : IN STD_LOGIC;
        read, write : IN STD_LOGIC;
        writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        readdata : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
        Q_export : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0) );
END reg16_avalon_interface;

ARCHITECTURE Structure OF reg16_avalon_interface IS
    SIGNAL to_reg, from_reg : STD_LOGIC_VECTOR(31 DOWNTO 0);
    COMPONENT reg16 PORT (  clock, resetn  : IN STD_LOGIC;
									 write : in std_logic;
                            D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                            Q : OUT    STD_LOGIC_VECTOR(31 DOWNTO 0) );
    END COMPONENT;
BEGIN
    to_reg <= writedata;
    reg_instance: reg16 PORT MAP (clock, resetn,write , to_reg, from_reg);
    readdata <= from_reg;
    Q_export <= from_reg;
END Structure;