library ieee;
use ieee.std_logic_1164.all;


entity neuron_control is
    port (
        clock, resetn : in  std_logic;
        read, write   : in  std_logic;
        byteenable    : in  std_logic_vector( 3 downto 0);
        address       : in  std_logic_vector( 1 downto 0);
        writedata     : in  std_logic_vector(31 downto 0);
        readdata      : out std_logic_vector(31 downto 0);

        kernel_size   : out std_logic_vector( 7 downto 0);
        base_addr     : out std_logic_vector(31 downto 0);
        start         : out std_logic;
        clear         : out std_logic;
        done          : in  std_logic;
        out_neuron    : in std_logic_vector(31 downto 0);
        addr_img, addr_wei : in std_logic_vector(31 downto 0)
    ) ;
end neuron_control ;


architecture arch of neuron_control is
begin

    process( clock )
    begin

        if resetn='0' then
            readdata <= (others => 'X');
            base_addr <= (others => 'X');
            kernel_size <= (others => '0');
            start <= '0';
            clear <= '0';
        elsif clock'event and clock='1' then
            start <= '0';
            clear <= '0';

            if write='1' then
                case( address ) is
                    when "00" =>
                        base_addr <= writedata;
                    when "01" =>
                        kernel_size <= writedata(7 downto 0);
                    when "10" =>
                        start <= writedata(0);
                        clear <= writedata(1);
                    when others =>
                        null;
                end case ;
            elsif read='1' then
                case( address ) is

                    when "00" =>
                        readdata <= addr_img;

                    when "01" =>
                        readdata <= addr_wei;

                    when "11" =>
                        readdata <= (0 => done, others => '0');

                    when others =>
                        readdata <= out_neuron;

                end case ;
            end if ;
        end if ;

    end process ;

end architecture ;