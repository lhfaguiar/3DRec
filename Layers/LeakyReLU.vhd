library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity SigmoidLayer is
    port(   object : std_logic_vector(511 downto 0);
            clk : in STD_LOGIC;
            RST: in STD_LOGIC;
            O : out STD_LOGIC_VECTOR (15 downto 0)
        );

end SigmoidLayer;

architecture Behavioral of SigmoidLayer is

component Sigmoid
    port (
	        Z: in INTEGER range 0 to 511;
	        SAL: out INTEGER range 0 to 255
        );
end component;

begin


end Behavioral;