library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity read_ram is
    port (
        clock, resetn: in std_logic;
        enable : in std_logic;
        n: in std_logic_vector(7 downto 0);
        base_addr : in std_logic_vector(31 downto 0);
        addr_to_ram: out std_logic_vector(31 downto 0);
        done : out std_logic
    ) ;
end read_ram ;


architecture arch of read_ram is

  	signal i,j  : std_logic_vector(7 downto 0) := "00000000"; -- i = linha, j = coluna
    --signal status : std_logic_vector := "00";
    signal done_0 : std_logic :='0';

begin
    done <= done_0;
    p_IMAGE : process ( clock, resetn )
    begin
        if resetn = '0' then
           done_0 <='0';
           i <="00000000";
           j <="00000000";
        elsif rising_edge(clock) then
            if enable='1' then
                if done_0 = '0' then
                    if (i = std_logic_vector(unsigned(n)-1) and j = std_logic_vector(unsigned(n)-1)) then
                        i <= "00000000";
                        j <= "00000000";
                        done_0 <= '1';
                    elsif unsigned(j) = unsigned(n)-1 then
                        i <= std_logic_vector(unsigned(i) + 1);
                        j <= "00000000";
                    else
                        j <=std_logic_vector( unsigned(j) + 1);
                    end if;
                    addr_to_ram <= std_logic_vector(unsigned(base_addr) + unsigned(i)*unsigned(n)+unsigned(j));
                else
                    i <="00000000";
                    j <="00000000";
                end if;
            end if;
      end if;
   end process;

end architecture ;
