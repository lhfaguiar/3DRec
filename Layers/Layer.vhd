library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Layer is 
    port (  clk 			: in STD_LOGIC;
            _prev_layer 	: in STD_LOGIC_VECTOR(3 downto 0);
            _input_shape 	: out STD_LOGIC_VECTOR(11 downto 0);
            _output_shape 	: out STD_LOGIC_VECTOR(11 downto 0)
        );
end Layer;

architecture Behavioral of Layer is
component layers_table
	port (	_layer  : in STD_LOGIC_VECTOR(3 downto 0);
			_shapes : out STD_LOGIC_VECTOR(23 downto 0)
		);
end component;

begin
	process(clk)
		variable _concat_shapes : STD_LOGIC_VECTOR(23 downto 0);
	begin
		_output 		<= layers_table port map(_prev_layer, _concat_shapes);
		_input_shape 	<= _concat_shapes(23 downto 12);
		_output_shape 	<= _concat_shapes(11 downto 0);
	end process;
end Behavioral;