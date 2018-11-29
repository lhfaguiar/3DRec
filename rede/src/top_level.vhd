library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level is
    port (
        SD_DATA                      : inout std_logic_vector(3 downto 0)  := (others => 'X') ;
        hps_io_sdio_inst_CMD         : inout std_logic                     := 'X' ;
        hps_io_sdio_inst_CLK         : out   std_logic ;
        memory_mem_a                 : out   std_logic_vector(12 downto 0) ;
        memory_mem_ba                : out   std_logic_vector(2 downto 0) ;
        memory_mem_ck                : out   std_logic ;
        memory_mem_ck_n              : out   std_logic ;
        memory_mem_cke               : out   std_logic ;
        memory_mem_cs_n              : out   std_logic ;
        memory_mem_ras_n             : out   std_logic ;
        memory_mem_cas_n             : out   std_logic ;
        memory_mem_we_n              : out   std_logic ;
        memory_mem_reset_n           : out   std_logic ;
        memory_mem_dq                : inout std_logic_vector(7 downto 0)  := (others => 'X') ;
        memory_mem_dqs               : inout std_logic                     := 'X' ;
        memory_mem_dqs_n             : inout std_logic                     := 'X' ;
        memory_mem_odt               : out   std_logic ;
        memory_mem_dm                : out   std_logic ;
        memory_oct_rzqin             : in    std_logic                     := 'X' ;

        key : in std_logic ;
        out_leds : out std_logic_vector(3 downto 0) ;
        clock, resetn : in std_logic
    );
end entity;


architecture arch of top_level is

    component soc_system is
        port (
            clk_clk                      : in    std_logic                     := 'X';             -- clk
            hps_io_hps_io_sdio_inst_CMD  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
            hps_io_hps_io_sdio_inst_D0   : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
            hps_io_hps_io_sdio_inst_D1   : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
            hps_io_hps_io_sdio_inst_CLK  : out   std_logic;                                        -- hps_io_sdio_inst_CLK
            hps_io_hps_io_sdio_inst_D2   : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
            hps_io_hps_io_sdio_inst_D3   : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
            master_img_1_read            : in    std_logic                     := 'X';             -- read
            master_img_1_write           : in    std_logic                     := 'X';             -- write
            master_img_1_address         : in    std_logic_vector(31 downto 0) := (others => 'X'); -- address
            master_img_1_writedata       : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
            master_img_1_readdata        : out   std_logic_vector(31 downto 0);                    -- readdata
            master_img_1_waitrequest     : out   std_logic;                                        -- waitrequest
            master_weights_0_read        : in    std_logic                     := 'X';             -- read
            master_weights_0_write       : in    std_logic                     := 'X';             -- write
            master_weights_0_address     : in    std_logic_vector(31 downto 0) := (others => 'X'); -- address
            master_weights_0_writedata   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
            master_weights_0_readdata    : out   std_logic_vector(31 downto 0);                    -- readdata
            master_weights_0_waitrequest : out   std_logic;                                        -- waitrequest
            memory_mem_a                 : out   std_logic_vector(12 downto 0);                    -- mem_a
            memory_mem_ba                : out   std_logic_vector(2 downto 0);                     -- mem_ba
            memory_mem_ck                : out   std_logic;                                        -- mem_ck
            memory_mem_ck_n              : out   std_logic;                                        -- mem_ck_n
            memory_mem_cke               : out   std_logic;                                        -- mem_cke
            memory_mem_cs_n              : out   std_logic;                                        -- mem_cs_n
            memory_mem_ras_n             : out   std_logic;                                        -- mem_ras_n
            memory_mem_cas_n             : out   std_logic;                                        -- mem_cas_n
            memory_mem_we_n              : out   std_logic;                                        -- mem_we_n
            memory_mem_reset_n           : out   std_logic;                                        -- mem_reset_n
            memory_mem_dq                : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dq
            memory_mem_dqs               : inout std_logic                     := 'X';             -- mem_dqs
            memory_mem_dqs_n             : inout std_logic                     := 'X';             -- mem_dqs_n
            memory_mem_odt               : out   std_logic;                                        -- mem_odt
            memory_mem_dm                : out   std_logic;                                        -- mem_dm
            memory_oct_rzqin             : in    std_logic                     := 'X';             -- oct_rzqin
            neuron_control_clear         : out   std_logic;                                        -- clear
            neuron_control_done          : in    std_logic                     := 'X';             -- done
            neuron_control_kernel_size   : out   std_logic_vector(7 downto 0);                     -- kernel_size
            neuron_control_out_neuron    : in    std_logic_vector(31 downto 0) := (others => 'X'); -- out_neuron
            neuron_control_start         : out   std_logic;                                        -- start
            neuron_control_addr_img      : in    std_logic_vector(31 downto 0) := (others => 'X'); -- addr_img
            neuron_control_addr_wei      : in    std_logic_vector(31 downto 0) := (others => 'X'); -- addr_wei
            neuron_control_base_addr     : out   std_logic_vector(31 downto 0);                    -- base_addr
            reset_reset_n                : in    std_logic                     := 'X'              -- reset_n
        );
    end component soc_system;


    component neuron
      port (
          X      : in  std_logic_vector(15 downto 0) ;
          W      : in  std_logic_vector(15 downto 0) ;
          Y      : out std_logic_vector(31 downto 0) ;
          enable : in  std_logic;
          clock, resetn : in  std_logic
      );
    end component neuron;


    component neuron_uc
      port (
        start           : in  std_logic;
        done_read_ram   : in  std_logic;
        waitrequest     : in  std_logic;
        read, write     : out std_logic;
        clear_read_ram : out std_logic;
        enable_read_ram : out std_logic;
        enable_mac      : out std_logic;
        acabou : out std_logic;
        clock, resetn   : in  std_logic
      );
    end component neuron_uc;


    component read_ram
      port (
          n             : in  std_logic_vector(7 downto 0) ;
          base_addr     : in  std_logic_vector(31 downto 0) ;
          addr_to_ram   : out std_logic_vector(31 downto 0) ;
          done          : out std_logic;
          enable, clear : in  std_logic;
          clock, resetn : in  std_logic
      );
    end component read_ram;


    signal X, W : std_logic_vector(31 downto 0) ;
    signal Y_o  : std_logic_vector(31 downto 0) ;


    signal start           : std_logic;
    signal waitrequest_img : std_logic;
    signal waitrequest_wei : std_logic;
    signal read            : std_logic;
    signal write           : std_logic;

    signal kernel_size     : std_logic_vector(7 downto 0) ;
    signal base_addr       : std_logic_vector(31 downto 0) ;
    signal addr_to_ram     : std_logic_vector(31 downto 0) ;
    signal addr            : std_logic_vector(31 downto 0) ;
    signal done_read_ram   : std_logic ;
    signal clear_read_ram  : std_logic ;
    signal enable_read_ram : std_logic ;
    signal enable_mac      : std_logic ;
    signal acabou : std_logic;


begin

    -- X <= (0 => '1', others => '0');
    -- W <= (0 => '1', others => '0');
		out_leds <= addr(3 downto 0);
    addr_to_ram <= addr(29 downto 0) & "00";

    neuron_0 : neuron
        port map (
          X => X(15 downto 0),
          W => W(15 downto 0),
          Y => Y_o,
          enable => enable_mac,
          clock => clock,
  		 		resetn => resetn
        );

    uc : neuron_uc
        port map (
          start           => start,
          done_read_ram   => done_read_ram,
          waitrequest     => (waitrequest_img or waitrequest_wei),
          read            => read,
          write           => write,
          clear_read_ram  => clear_read_ram,
          enable_read_ram => enable_read_ram,
          enable_mac      => enable_mac,
          acabou          => acabou,
          clock           => clock,
          resetn          => resetn
        );

    read_ram_0 : read_ram
        port map (
          n           => kernel_size,
          base_addr   => base_addr,
          addr_to_ram => addr,
          done        => done_read_ram,
          enable      => enable_read_ram,
          clear       => clear_read_ram,
          clock       => clock,
          resetn      => resetn
        );


    u0 : component soc_system
        port map (
            clk_clk                      => clock,                        --           clk.clk
            hps_io_hps_io_sdio_inst_CMD  => hps_io_sdio_inst_CMD,         --           hps_io.hps_io_sdio_inst_CMD
            hps_io_hps_io_sdio_inst_D0   => SD_DATA(0),                   --                 .hps_io_sdio_inst_D0
            hps_io_hps_io_sdio_inst_D1   => SD_DATA(1),                   --                 .hps_io_sdio_inst_D1
            hps_io_hps_io_sdio_inst_CLK  => hps_io_sdio_inst_CLK,         --                 .hps_io_sdio_inst_CLK
            hps_io_hps_io_sdio_inst_D2   => SD_DATA(2),                   --                 .hps_io_sdio_inst_D2
            hps_io_hps_io_sdio_inst_D3   => SD_DATA(3),                   --                 .hps_io_sdio_inst_D3
            master_img_1_read            => read,                          --     master_img_1.read
            master_img_1_write           => write,                          --                 .write
            master_img_1_address         => addr_to_ram,                  --                 .address
            master_img_1_writedata       => open,                         --                 .writedata
            master_img_1_readdata        => X,                         --                 .readdata
            master_img_1_waitrequest     => waitrequest_img,              --                 .waitrequest
            master_weights_0_read        => read,                          -- master_weights_0.read
            master_weights_0_write       => write,                          --                 .write
            master_weights_0_address     => addr_to_ram,                  --                 .address
            master_weights_0_writedata   => open,                         --                 .writedata
            master_weights_0_readdata    => W,                         --                 .readdata
            master_weights_0_waitrequest => waitrequest_wei,              --                 .waitrequest
            memory_mem_a                 => memory_mem_a,                 --           memory.mem_a
            memory_mem_ba                => memory_mem_ba,                --                 .mem_ba
            memory_mem_ck                => memory_mem_ck,                --                 .mem_ck
            memory_mem_ck_n              => memory_mem_ck_n,              --                 .mem_ck_n
            memory_mem_cke               => memory_mem_cke,               --                 .mem_cke
            memory_mem_cs_n              => memory_mem_cs_n,              --                 .mem_cs_n
            memory_mem_ras_n             => memory_mem_ras_n,             --                 .mem_ras_n
            memory_mem_cas_n             => memory_mem_cas_n,             --                 .mem_cas_n
            memory_mem_we_n              => memory_mem_we_n,              --                 .mem_we_n
            memory_mem_reset_n           => memory_mem_reset_n,           --                 .mem_reset_n
            memory_mem_dq                => memory_mem_dq,                --                 .mem_dq
            memory_mem_dqs               => memory_mem_dqs,               --                 .mem_dqs
            memory_mem_dqs_n             => memory_mem_dqs_n,             --                 .mem_dqs_n
            memory_mem_odt               => memory_mem_odt,               --                 .mem_odt
            memory_mem_dm                => memory_mem_dm,                --                 .mem_dm
            memory_oct_rzqin             => memory_oct_rzqin,             --                 .oct_rzqin
            neuron_control_clear         => open,                         --   neuron_control.clear
            neuron_control_done          => acabou,                --                 .done
            neuron_control_kernel_size   => kernel_size,                  --                 .kernel_size
            neuron_control_out_neuron    => Y_o,                          --                 .out_neuron
            neuron_control_start         => start,                         --                 .start
            neuron_control_addr_img      => X,                  --                 .addr_img
            neuron_control_addr_wei      => W,                         --                 .addr_wei
            neuron_control_base_addr     => base_addr,                    --                 .base_addr
            reset_reset_n                => resetn                        --            reset.reset_n
        );


end architecture;
