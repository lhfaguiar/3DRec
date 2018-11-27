library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity neuron_uc is
  port (
    clock    : in  std_logic;
    start	 : in  std_logic;
    resetn	 : in  std_logic;

    read, write : out std_logic;
    waitreq : in std_logic;

    done     : out std_logic;

    status   : out std_logic_vector(1 downto 0)
  ) ;
end neuron_uc ;


architecture arch of neuron_uc is

	type state_type is (idle, mac, fim);
	signal state : state_type;

begin

    process( clock, resetn )
    begin

        if rising_edge(clock) then

            read <= '0';
            write <= '0';
            done <= '0';
            if resetn = '0' then
                state <= idle;
            else 
            case( state ) is

                -- IDLE
                when idle =>
                    status <= "10";
                    if start='1' then
                        state <= mac;
                    else
                        state <= idle;
                    end if ;

                -- MAC
                when mac =>
                    status <= "01";
                    write <= '1';
                    if waitreq='0' then
                        state <= fim;
                    else
                        state <= mac;                        
                    end if ;

                when fim =>
                    status <= "11";
                    state <= fim;
                    if waitreq='0' then
                        done <= '1';
                    end if ;

                when others =>
                    state <= idle;

            end case ;
            end if;

        end if ;
    end process ;

end architecture ;