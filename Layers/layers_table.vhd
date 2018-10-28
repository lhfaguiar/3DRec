library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity layer_table is
Port (
		_layer  : in STD_LOGIC_VECTOR(3 downto 0);
		_shapes : out STD_LOGIC_VECTOR(23 downto 0)
	 );
end layer_table;

architecture table of layer_table is
begin
process(_layer)
	case(_layer) is
	    when "0000" => _shapes <= "001100110000001100110000";
	    when "0001" => _shapes <= "011101110000011101110000";
	    when "0010" => _shapes <= "001100110000011101110000";
	    when "0011" => _shapes <= "011101110000001100110000";
	    when "0100" => _shapes <= "001100110011001100110011";
	    when "0101" => _shapes <= "001100110000001100110011";
	    when others => _shapes <= "000000000000000000000000";
	end case;
end process;
end table;