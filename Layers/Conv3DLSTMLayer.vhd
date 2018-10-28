library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Conv3DLSTMLayer is
    port(   clk             : in STD_LOGIC;
            prev_layer      : in STD_LOGIC_VECTOR(3 downto 0);
            filter_shape    : in STD_LOGIC_VECTOR(7 downto 0);
            W               : in STD_LOGIC_VECTOR(511 downto 0);
            _input_shape    : in STD_LOGIC_VECTOR(11 downto 0);
            _input          : in STD_LOGIC_VECTOR(511 downto 0);
            _output         : out STD_LOGIC_VECTOR(511 downto 0);
            _output_shape   : out STD_LOGIC_VECTOR(11 downto 0)
        );

end Conv3DLSTMLayer;

architecture Behavioral of Conv3DLSTMLayer is
component Layer
    port (  clk             : in STD_LOGIC;
            _prev_layer     : in STD_LOGIC_VECTOR(3 downto 0);
            _input_shape    : out STD_LOGIC_VECTOR(11 downto 0);
            _output_shape   : out STD_LOGIC_VECTOR(11 downto 0)
        );
end component;

component mac
    port (  a            : in SIGNED(7 downto 0);
            b           : in SIGNED (7 downto 0);
            clk         : in STD_LOGIC;
            rst         : in STD_LOGIC;
            accum_out   : out SIGNED (15 downto 0)
        );
end component;

begin 
    process(clk)
        variable _concat_shapes : STD_LOGIC_VECTOR(23 downto 0);
    begin
        L0 : Layer port map (clk, prev_layer, _input_shape, _output_shape);
        

    end process;
end Behavioral;


