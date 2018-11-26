library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity neuron_uc is
    port (
        clock, resetn : in  std_logic;
        start : in  std_logic;
        clear : out std_logic;

        count	 : in std_logic_vector (7 downto 0);

        done        : out std_logic;
        read, write : out std_logic;
        waitrequest : in std_logic;
        enable : out std_logic;
        state_out : out std_logic_vector(1 downto 0)
    ) ;
end neuron_uc ;


architecture arch of neuron_uc is

  	type state_type is (idle, mac, fim);
  	signal state : state_type;
    signal comp : std_logic;

begin

    process( clock, resetn )

        variable count_0: std_logic_vector(7 downto 0);

    begin

        if resetn='0' then
            state <= idle;
            done <= '0';
            clear <='0';
        elsif rising_edge(clock) then
            read <= '0';
            write <= '0';
            done <= '0';
            enable <= '0';
            clear <='1';

            case( state ) is

                -- IDLE
                when idle =>
                    --clear <='0';
                    if start='1' then
                        count_0 := count;
                        state <= mac;
                    end if ;

                -- MAC
                when mac =>
                    -- read <= '1';
                    if waitrequest='0' then
                        enable <= '1';
                        if ieee.std_logic_1164.">"(count_0, "00000000") then -- count_0 > "00000000"
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

    with state select state_out <=
        "01" when idle,
        "10" when mac,
        "11" when fim,
        "00" when others;

end architecture ;
