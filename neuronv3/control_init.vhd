LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY neuron_avalon_control IS
PORT ( clock, resetn : IN STD_LOGIC;
		read, write, chipselect : IN STD_LOGIC;
		writedata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		readdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		neu_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) );
END neuron_avalon_control;

ARCHITECTURE Structure OF neuron_avalon_control IS
SIGNAL to_neu1,to_neu2:  STD_LOGIC_VECTOR(7 DOWNTO 0);
signal from_reg : STD_LOGIC_VECTOR(15 DOWNTO 0);

COMPONENT reg16
PORT ( clock, resetn : IN STD_LOGIC;
D : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
byteenable : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
Q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) );
END COMPONENT;

component Neuron is
    generic ( 	n : integer := 7 );
    Port ( slv_Xin, slv_Win : in STD_LOGIC_VECTOR (n downto 0); --Values
           clk : in STD_LOGIC;
			  reset: in STD_LOGIC;
			  start: in STD_LOGIC;
			  count: in std_logic_vector(7 downto 0);
           O : out STD_LOGIC_VECTOR (15 downto 0)  
			  );
end component;


BEGIN
	to_neu1 <= writedata();
	to_neu2 <=writedata();
	
	WITH (chipselect AND write) SELECT
		local_byteenable <= byteenable WHEN '1', "00" WHEN OTHERS;
	reg_instance: neuron PORT MAP (to_neu1,to_neu2,clock, resetn, to_reg, local_byteenable, from_reg);
	readdata <= from_reg;
	Q_export <= from_reg;
END Structure;