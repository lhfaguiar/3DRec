library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity InputLayer is
    generic (n : integer := 7);
    port(   object : std_logic_vector(n downto 0);
            clk : in STD_LOGIC;
            RST: in STD_LOGIC;
            O : out STD_LOGIC_VECTOR (15 downto 0)
        );

end InputLayer;

architecture Behavioral of InputLayer is

begin


end Behavioral;




class InputLayer(object):

    def __init__(self, input_shape, tinput=None):
        self._output_shape = input_shape
        self._input = tinput

    @property
    def output(self):
        if self._input is None:
            raise ValueError('Cannot call output for the layer. Initialize' \
                             + ' the layer with an input argument')
        return self._input

    @property
    def output_shape(self):
        return self._output_shape
