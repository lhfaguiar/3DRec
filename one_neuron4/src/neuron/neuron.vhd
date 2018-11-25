library ieee;
use ieee.std_logic_1164.all;


entity neuron is
    port (
        clock, resetn   : in  std_logic ;

        start, clear    : in  std_logic ;
        done            : out std_logic ;
        base_addr       : in  std_logic_vector(31 downto 0) ;
        kernel_size     : in  std_logic_vector( 7 downto 0) ;

        read            : out std_logic ;
        write           : out std_logic ;
        waitrequest     : in  std_logic ;

        X, W            : in std_logic_vector(15 downto 0);
        Y               : out std_logic_vector(31 downto 0);
        addr_img, addr_wei : out std_logic_vector(31 downto 0);
        state_out : out std_logic_vector(1 downto 0)
    ) ;
end neuron ;


architecture arch of neuron is

    -- Components
    component neuron_uc is
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
    end component;

    component neuron_dp
    port (
      X, W        : in  std_logic_vector(15 downto 0);
      Y        : out std_logic_vector(31 downto 0);
      addr_img, addr_wei : out std_logic_vector(31 downto 0);
      clock, resetn   : in  std_logic;
      n         : in std_logic_vector(7 downto 0);
      base_addr : in std_logic_vector(31 downto 0);
      done : out std_logic;
      enable : in std_logic;
		clear : in std_logic
    );
    end component neuron_dp;


    -- -- Signals
    -- signal kernel_size : std_logic_vector( 7 downto 0);
    -- signal base_addr   : std_logic_vector(31 downto 0);
    -- signal start       : std_logic;
    -- signal clear       : std_logic;
    -- signal mac_read    : std_logic;
    -- signal mac_write   : std_logic;
    -- signal waitreq     : std_logic;
    -- signal done        : std_logic;
    -- signal mac_address : std_logic_vector(29 downto 0) ;
    -- -- signal mac_writedata : std_logic_vector(31 downto 0) ;
    -- signal mac_readdata : std_logic_vector(31 downto 0) ;
    signal enable: std_logic;
    signal done_read_ram: std_logic;
    signal clear_0 : std_logic;
begin

    uc : component neuron_uc
        port map (
            clock => clock,
            resetn => resetn,
            start => start,
            clear => clear_0,
            done => done,
            read => open,
            write => write,
            waitrequest => waitrequest,
            enable => enable,
            count => kernel_size,
            state_out => state_out
        ) ;

    neuron_dp_i : neuron_dp
        port map (
            X        => X,
            W        => W,
            Y        => Y,
            addr_wei => addr_wei,
            addr_img => addr_img,
            clock => clock,
            resetn   => resetn,
            base_addr => base_addr,
            n         => kernel_size,
            done => done_read_ram,
            clear => clear_0,
            enable => enable
        );
        read<=not(done_read_ram);

end architecture ;
