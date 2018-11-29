library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity relu is
    port (
        Activ_in	: in signed(31 downto 0);
        O	: out signed (31 downto 0)
	  );
end relu;


architecture arch of relu is
begin

    O <= Activ_in when (Activ_in > "00000000000000000000000000000000") else "00000000000000000000000000000000";

end arch;
