library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity neuron_uc is
    port (
        start : in  std_logic ;

        done_read_ram : in std_logic ;
        waitrequest : in std_logic ;

        read, write : out std_logic ;
        enable_read_ram : out std_logic ;
        enable_mac : out std_logic;

        clock, resetn : in  std_logic
    ) ;
end neuron_uc ;


architecture arch of neuron_uc is

  	type state_type is (idle, idle2, idle3, lendo, mac, fim);
  	signal state : state_type;
    signal comp : std_logic;

begin

    process( clock, resetn )

        variable count_0: std_logic_vector(7 downto 0);

    begin

        if resetn='0' then
            state <= idle;
            read <= '0';
            write <= '0';
            enable_read_ram <= '0';
            enable_mac <= '0';
        elsif rising_edge(clock) then
            read <= '0';
            write <= '0';
            enable_read_ram <= '0';
            enable_mac <= '0';

            case( state ) is

                -- IDLE
                when idle =>
                    if start='1' then
                        enable_read_ram <= '1';
                        state <= idle2;
                    end if ;

                -- LEITURA
                when lendo =>
                    if waitrequest='0' then
                        state <= mac;
                        -- enable_mac <= '1';
                    else
                        read <= '1';
                    end if;

                when idle2 =>
                    if done_read_ram='0' then
                        state <= lendo;
                        read <= '1';
                    else
                        state <= fim;
                    end if ;


                -- MAC
                when mac =>
                    -- if waitrequest='1' then
                        -- if done_read_ram='1' then -- count_0 > "00000000"
                            -- state <= fim;
                        -- else
                            enable_mac <= '1';
                            -- enable_read_ram <= '1';
                            state <= idle3;
                        -- end if ;

                    -- end if ;

                when idle3 =>
                    enable_read_ram <= '1';
                    state <= idle2;


                -- FIM
                when fim =>
                    state <= fim;

                when others =>
                    state <= idle;

            end case ;

        end if ;
    end process ;

end architecture ;
