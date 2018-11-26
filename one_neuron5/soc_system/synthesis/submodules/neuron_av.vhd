library ieee;
use ieee.std_logic_1164.all;


entity neuron_av is
    port (
        clock,resetn : in std_logic;
        read, write : in  std_logic;
        byteenable  : in  std_logic_vector(3 downto 0);
        address     : in  std_logic_vector(1 downto 0);
        writedata   : in  std_logic_vector(31 downto 0);
        readdata    : out std_logic_vector(31 downto 0);
        inp         : out std_logic_vector(31 downto 0);
        peso        : out std_logic_vector(31 downto 0);
        out_neuron  : in  std_logic_vector(31 downto 0)
    ) ;
end neuron_av ;


architecture arch of neuron_av is
begin

    process( clock )
    begin

        readdata <= (others => 'X');

        if clock'event and clock='1' then
            if write='1' then
                case( address ) is
                    when "00" =>
                        inp <= writedata;                
                    when "01" =>
                        peso <= writedata;
                    when others =>
                        null;
                end case ;
            elsif read='1' then
                readdata <= out_neuron;
            end if ;
        end if ;

    end process ;

end architecture ;