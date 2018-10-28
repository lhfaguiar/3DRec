library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity ComplementLayer is
    port(   object : std_logic_vector(511 downto 0);
            clk : in STD_LOGIC;
            RST: in STD_LOGIC;
            O : out STD_LOGIC_VECTOR (15 downto 0)
        );

end ComplementLayer;

architecture Behavioral of ComplementLayer is

component Complement
    port (
        Z: in INTEGER range 0 to 511;
        SAL: out INTEGER range 0 to 255
        );
end component;

begin


end Behavioral;