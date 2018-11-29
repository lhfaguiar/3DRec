library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;


entity neuron_f2ram is
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
        mac_address   : in std_logic_vector(31 downto 0) ;
        mac_writedata : in  std_logic_vector(31 downto 0) ;
        mac_readdata  : out std_logic_vector(31 downto 0)
    ) ;
end neuron_f2ram ;


architecture arch of neuron_f2ram is
    -- signal mac_readdata_0 : std_logic_vector(31 downto 0) ;
begin

    address <= mac_address;
    byteenable <= (others => '1');

    -- read <= mac_read;
    mac_wait <= waitrequest;
    writedata <= mac_writedata;

    process( clock )
    begin
        if clock'event and clock='1' then
            if mac_write='1' then
                write <= '1';
                read <= '0';
            elsif mac_read='1' then
                read <= '1';
                write <= '0';
                mac_readdata <= readdata;
            else
                write <= '0';
                read <= '0';
            end if ;
            -- mac_readdata <= mac_readdata_0;
        end if ;
    end process ;

end architecture ;
