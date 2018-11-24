library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.add_truncate.all;


entity mac is
  port (
    clock, resetn, enable: in std_logic;
    X : in std_logic_vector(15 downto 0);
    W : in std_logic_vector(15 downto 0);
    Y : out std_logic_vector(31 downto 0)
  ) ;
end mac ;


architecture arch of mac is

	signal reg  : signed(31 downto 0);
	signal prod : signed(31 downto 0);

begin

    process( clock )
    begin
        if clock'event and clock='1' then
            if resetn='0' then
                reg <= (others => '0');
            else
                if enable='1' then
                    prod <= (signed(X) * signed(W));
                    reg  <= add_truncate(prod, reg, 32);
                end if ;
            end if ;
        end if ;
    end process ;

    Y <= std_logic_vector(reg);

end architecture ;
