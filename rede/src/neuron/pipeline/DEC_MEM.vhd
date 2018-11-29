library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity DEC_MEM is
    port (
        address_pesos_dec : in  std_logic_vector(31 downto 0);
        address_pesos_mem : out std_logic_vector(31 downto 0);

        ce : in std_logic;
        clock, resetn : in std_logic
    );
end entity;


architecture arch of DEC_MEM is
begin

    process( clock, resetn )
    begin
          if resetn='0' then
              address_pesos_mem <= (others => '0');
          elsif rising_edge(clock) then

              if ce='1' then
                  address_pesos_mem <= address_pesos_dec;
              end if;

          end if;
    end process;

end architecture;
