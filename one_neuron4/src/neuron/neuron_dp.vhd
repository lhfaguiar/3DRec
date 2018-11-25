library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;


entity neuron_dp is
    port (
        X, W : in std_logic_vector(15 downto 0) ;
        Y : out std_logic_vector(31 downto 0) ;
        addr_img, addr_wei : out std_logic_vector(31 downto 0) ;
        clock, resetn : in std_logic;
        base_addr : in std_logic_vector(31 downto 0);
        n         : in std_logic_vector(7 downto 0);
        done : out std_logic;
        enable : in std_logic;
        clear : in std_logic
    ) ;
end neuron_dp ;


architecture arch of neuron_dp is

    component read_ram
        port (
            clock, resetn : in  std_logic;
            enable        : in std_logic;
            n             : in  std_logic_vector(7 downto 0);
            base_addr     : in  std_logic_vector(31 downto 0);
            addr_to_ram   : out std_logic_vector(31 downto 0);
            done          : out std_logic
        );
    end component read_ram;

    component mac
        port (
            clock, resetn, enable : in  std_logic;
            X, W   : in  std_logic_vector(15 downto 0);
            Y      : out std_logic_vector(31 downto 0)
        );
    end component mac;



    signal addr : std_logic_vector(31 downto 0);

begin

    read_wei_img : read_ram
        port map (
            resetn       => resetn,
				    clock 		=> clock,
            enable => enable,
            n           => n,
            base_addr   => base_addr,
            addr_to_ram => addr,
            done        => done
        );

    addr_wei <= addr;
    addr_img <=addr;

    mac_0 : mac
        port map (
            clock => clock,
            resetn => clear,
            enable => enable,
            X      => X,
            W      => W,
            Y      => Y
        );

end architecture ;
