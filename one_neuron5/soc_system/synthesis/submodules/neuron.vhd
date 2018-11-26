library ieee;
use ieee.std_logic_1164.all;


entity neuron is
    port (
        clock       : in  std_logic ;
        resetn      : in  std_logic ;

        -- Local On-Chip Memory
        ocr_read        : out std_logic ;
        ocr_write       : out std_logic ;
        ocr_waitrequest : in std_logic;
        ocr_byteenable  : out std_logic_vector( 3 downto 0) ;
        ocr_address     : out std_logic_vector( 7 downto 0) ;
        ocr_writedata   : out std_logic_vector(31 downto 0) ;
        ocr_readdata    : in  std_logic_vector(31 downto 0) ;

        -- FPGA-to-HPS
        f2h_read        : out std_logic ;
        f2h_write       : out std_logic ;
        f2h_waitrequest : in  std_logic;
        f2h_byteenable  : out std_logic_vector( 3 downto 0) ;
        f2h_address     : out std_logic_vector(31 downto 0) ;
        f2h_writedata   : out std_logic_vector(31 downto 0) ;
        f2h_readdata    : in  std_logic_vector(31 downto 0) ;

        -- HPS-to-FPGA
        h2f_read        : in  std_logic ;
        h2f_write       : in  std_logic ;
        h2f_byteenable  : in  std_logic_vector( 3 downto 0) ;
        h2f_address     : in  std_logic_vector( 1 downto 0) ;
        h2f_writedata   : in  std_logic_vector(31 downto 0) ;
        h2f_readdata    : out std_logic_vector(31 downto 0) ;

        start_export    : out std_logic_vector(1 downto 0) 
    ) ;
end neuron ;


architecture arch of neuron is

    -- Components

    component neuron_reg_control is
        port (
            clock       : in  std_logic;
            resetn      : in  std_logic;
            read, write : in  std_logic;
            byteenable  : in  std_logic_vector( 3 downto 0);
            address     : in  std_logic_vector( 1 downto 0);
            writedata   : in  std_logic_vector(31 downto 0);
            readdata    : out std_logic_vector(31 downto 0);
    
            kernel_size : out std_logic_vector( 7 downto 0);
            base_addr   : out std_logic_vector(31 downto 0);
            start       : out std_logic;
            clear       : out std_logic;
            done        : in  std_logic
        ) ;
    end component;

    component neuron_f2h is
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
            mac_address   : std_logic_vector(29 downto 0) ;
            mac_writedata : in  std_logic_vector(31 downto 0) ;
            mac_readdata  : out std_logic_vector(31 downto 0)
        ) ;
    end component;

    component neuron_uc is
        port (
            clock    : in  std_logic;
            start	   : in  std_logic;
            resetn   : in  std_logic;

            read, write : out std_logic;
            waitreq : in std_logic;

            done     : out std_logic;
            status   : out std_logic_vector(1 downto 0)
        ) ;
    end component;

    -- Signals
    signal kernel_size : std_logic_vector( 7 downto 0);
    signal base_addr   : std_logic_vector(31 downto 0);
    signal start       : std_logic;
    signal clear       : std_logic;
    signal mac_read    : std_logic;
    signal mac_write   : std_logic;
    signal waitreq     : std_logic;
    signal done        : std_logic;
    signal mac_address : std_logic_vector(29 downto 0) ;
    -- signal mac_writedata : std_logic_vector(31 downto 0) ;
    signal mac_readdata : std_logic_vector(31 downto 0) ;
    signal status : std_logic_vector(1 downto 0) ;

begin

    mac_address <= "000000000000000000000001100100" when mac_write='1' else (others => '0');

    reg_control : component neuron_reg_control
        port map (
            clock => clock,
            resetn => resetn,
            read => h2f_read,
            write => h2f_write,
            byteenable => h2f_byteenable,
            address => h2f_address,
            writedata => h2f_writedata,
            readdata => h2f_readdata,
            kernel_size => kernel_size,
            base_addr => base_addr,
            start => start,
            clear => clear,
            done => '0'
        );

    f2h : component neuron_f2h
        port map (
            clock => clock,
            resetn => resetn,
            read => f2h_read,
            write => f2h_write,
            waitrequest => f2h_waitrequest,
            byteenable => f2h_byteenable,
            address => f2h_address,
            writedata => f2h_writedata,
            readdata => f2h_readdata,
            mac_read => mac_read,
            mac_write => mac_write,
            mac_wait => waitreq,
            mac_address => mac_address,
            mac_writedata => "00000000000000000000000001111011",
            mac_readdata => mac_readdata
        );

    uc : component neuron_uc
        port map (
            clock => clock,
            start => start,
            resetn => resetn,
            read => mac_read,
            write => mac_write,
            waitreq => waitreq,
            done => done,
            status => status
        ) ;

end architecture ;