library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.add_truncate.all;


entity neuron is
    port (
        X : in std_logic_vector(15 downto 0) ;
        W : in std_logic_vector(15 downto 0) ;
        Y : out std_logic_vector(31 downto 0) ;
        enable: in std_logic ;
        clock, resetn : in std_logic
    ) ;
end neuron ;


architecture arch of neuron is

    -- Components
    component relu is
        port (
          Activ_in	: in signed(31 downto 0);
          O	: out signed (31 downto 0)
        );
    end component;

    -- Signals
  	signal reg  : signed(31 downto 0);
  	signal prod : signed(31 downto 0);
    signal res : signed(31 downto 0);

begin

    process( clock, resetn )
    begin

        prod <= (signed(X) * signed(W));
        res <= add_truncate(prod, reg, 32);
        if resetn='0' then
            reg <= (others => '0');
            prod <= (others => '0');
        elsif rising_edge(clock) then
            if enable='1' then
                reg <= res;
            end if ;
        end if ;
    end process ;

	 Y <= std_logic_vector( reg );

end architecture ;
