library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;


entity neuron_f2h is
    port (
        clock, resetn : in  std_logic ;
        read         : out std_logic ;
        write        : out std_logic ;
        waitrequest  : in  std_logic ;
        byteenable   : out std_logic_vector( 3 downto 0) ;
        address      : out std_logic_vector(31 downto 0) ;
        writedata    : out std_logic_vector(31 downto 0) ;
        readdata     : in  std_logic_vector(31 downto 0) ;

        mac_read      : in  std_logic ;
        mac_write     : in  std_logic ;
        mac_wait      : out std_logic ;
        mac_address   : in std_logic_vector(29 downto 0) ;
        mac_writedata : in  std_logic_vector(31 downto 0) ;
        mac_readdata  : out std_logic_vector(31 downto 0)
    ) ;
end neuron_f2h ; 


architecture arch of neuron_f2h is
    signal mac_readdata_0 : std_logic_vector(31 downto 0) ;
begin

    address <= "00" & mac_address(29 downto 0);
    byteenable <= (others => '1');

    read <= mac_read;
    write <= mac_write;
    mac_wait <= waitrequest;

    
    process( clock )
    begin
        -- mac_readdata <= (others => 'Z');
        -- writedata <= (others => 'Z');
        if clock'event and clock='1' then
            if mac_write='1' then
                writedata <= mac_writedata;
            elsif mac_read='1' then
                mac_readdata_0 <= readdata;
            else
                null;
            end if ;
            mac_readdata <= mac_readdata_0;
        end if ;
    end process ;

end architecture ;