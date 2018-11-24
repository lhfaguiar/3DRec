library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity neuron_uc is
  port (
    clock, resetn : in  std_logic;
    start, clear  : in  std_logic;

    count	 : in std_logic_vector (7 downto 0);

    done        : out std_logic;
    read, write : out std_logic;
    waitrequest : in std_logic;
    enable : out std_logic
  ) ;
end neuron_uc ;


architecture arch of neuron_uc is

	type state_type is (idle, mac, fim);
	signal state : state_type;

begin

    process( clock, resetn, waitrequest )

        variable count_0: std_logic_vector(7 downto 0);

    begin

        if resetn='0' then
            state <= idle;
            done <= '0';
        elsif rising_edge(clock) then
            read <= '0';
            write <= '0';
            done <= '0';

            case( state ) is

                -- IDLE
                when idle =>
                    enable <= '0';
                    if start='1' then
                        count_0 := count;
                        state <= mac;
							else 
								state <= idle;
                    end if ;

                -- MAC
                when mac =>
                    if waitrequest='0' then
                        enable <= '1';
                        if count_0 > "00000000" then
                            count_0 := std_logic_vector(unsigned(count_0) - 1);
                        else
                            state <= fim;
                        end if ;
                    end if ;

                -- FIM
                when fim =>
                    if waitrequest='0' then
                        done <= '1';
                    end if ;

                when others =>
                    state <= idle;

            end case ;

        end if ;
    end process ;

end architecture ;
