library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity top_level is
    port (
        clk                         : in    std_logic                     := 'X';             -- clk
        hps_io_hps_io_sdio_inst_CMD : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
        SD_DATA                     : inout std_logic_vector(3 downto 0)  := (others => 'X');             -- hps_io_sdio_inst_D0
        hps_io_hps_io_sdio_inst_CLK : out   std_logic;                                        -- hps_io_sdio_inst_CLK
        memory_mem_a                : out   std_logic_vector(12 downto 0);                    -- mem_a
        memory_mem_ba               : out   std_logic_vector(2 downto 0);                     -- mem_ba
        memory_mem_ck               : out   std_logic;                                        -- mem_ck
        memory_mem_ck_n             : out   std_logic;                                        -- mem_ck_n
        memory_mem_cke              : out   std_logic;                                        -- mem_cke
        memory_mem_cs_n             : out   std_logic;                                        -- mem_cs_n
        memory_mem_ras_n            : out   std_logic;                                        -- mem_ras_n
        memory_mem_cas_n            : out   std_logic;                                        -- mem_cas_n
        memory_mem_we_n             : out   std_logic;                                        -- mem_we_n
        memory_mem_reset_n          : out   std_logic;                                        -- mem_reset_n
        memory_mem_dq               : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dq
        memory_mem_dqs              : inout std_logic                     := 'X';             -- mem_dqs
        memory_mem_dqs_n            : inout std_logic                     := 'X';             -- mem_dqs_n
        memory_mem_odt              : out   std_logic;                                        -- mem_odt
        memory_mem_dm               : out   std_logic;                                        -- mem_dm
        memory_oct_rzqin            : in    std_logic                     := 'X';             -- oct_rzqin
  		  X_out : out std_logic_vector(3 downto 0);
  		  W_out : out std_logic_vector(3 downto 0);
        state_out : out std_logic_vector(1 downto 0);
		  kernel_size_out : out std_logic_vector(7 downto 0);
        reset_n                     : in    std_logic                     := 'X'              -- reset_n
    ) ;
end top_level ;


architecture arch of top_level is

    -- Components
    component soc_system is
        port (
            clk_clk                     : in    std_logic                     := 'X';             -- clk
            control_base_addr           : out   std_logic_vector(31 downto 0);                    -- base_addr
            control_clear               : out   std_logic;                                        -- clear
            control_done                : in    std_logic                     := 'X';             -- done
            control_kernel_size         : out   std_logic_vector(7 downto 0);                     -- kernel_size
            control_start               : out   std_logic;                                        -- start
            control_result              : in    std_logic_vector(31 downto 0) := (others => 'X'); -- result
            control_addr_img            : in    std_logic_vector(31 downto 0) := (others => 'X'); -- addr_img
            control_addr_wei            : in    std_logic_vector(31 downto 0) := (others => 'X'); -- addr_wei
            hps_io_hps_io_sdio_inst_CMD : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
            hps_io_hps_io_sdio_inst_D0  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
            hps_io_hps_io_sdio_inst_D1  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
            hps_io_hps_io_sdio_inst_CLK : out   std_logic;                                        -- hps_io_sdio_inst_CLK
            hps_io_hps_io_sdio_inst_D2  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
            hps_io_hps_io_sdio_inst_D3  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
            img_read                    : in    std_logic                     := 'X';             -- read
            img_write                   : in    std_logic                     := 'X';             -- write
            img_address                 : in    std_logic_vector(31 downto 0) := (others => 'X'); -- address
            img_writedata               : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
            img_readdata                : out   std_logic_vector(31 downto 0);                    -- readdata
            img_waitrequest             : out   std_logic;                                        -- waitrequest
            memory_mem_a                : out   std_logic_vector(12 downto 0);                    -- mem_a
            memory_mem_ba               : out   std_logic_vector(2 downto 0);                     -- mem_ba
            memory_mem_ck               : out   std_logic;                                        -- mem_ck
            memory_mem_ck_n             : out   std_logic;                                        -- mem_ck_n
            memory_mem_cke              : out   std_logic;                                        -- mem_cke
            memory_mem_cs_n             : out   std_logic;                                        -- mem_cs_n
            memory_mem_ras_n            : out   std_logic;                                        -- mem_ras_n
            memory_mem_cas_n            : out   std_logic;                                        -- mem_cas_n
            memory_mem_we_n             : out   std_logic;                                        -- mem_we_n
            memory_mem_reset_n          : out   std_logic;                                        -- mem_reset_n
            memory_mem_dq               : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dq
            memory_mem_dqs              : inout std_logic                     := 'X';             -- mem_dqs
            memory_mem_dqs_n            : inout std_logic                     := 'X';             -- mem_dqs_n
            memory_mem_odt              : out   std_logic;                                        -- mem_odt
            memory_mem_dm               : out   std_logic;                                        -- mem_dm
            memory_oct_rzqin            : in    std_logic                     := 'X';             -- oct_rzqin
            reset_reset_n               : in    std_logic                     := 'X';             -- reset_n
            weight_read                 : in    std_logic                     := 'X';             -- read
            weight_write                : in    std_logic                     := 'X';             -- write
            weight_address              : in    std_logic_vector(31 downto 0) := (others => 'X'); -- address
            weight_writedata            : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
            weight_readdata             : out   std_logic_vector(31 downto 0);                    -- readdata
            weight_waitrequest          : out   std_logic                                         -- waitrequest
        );
    end component soc_system;



    component neuron is
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
    end component neuron ;


    -- Signals
    signal start, clear    : std_logic ;
    signal done            : std_logic ;
    signal base_addr       : std_logic_vector(31 downto 0) ;
    signal kernel_size     : std_logic_vector(7 downto 0) ;

    signal read        : std_logic;
    signal write       : std_logic;
    signal img_waitrequest : std_logic;
    signal wei_waitrequest : std_logic;
    signal address : std_logic_vector(31 downto 0) ;


    signal X        : std_logic_vector(31 downto 0);
    signal W        : std_logic_vector(31 downto 0);
    signal Y        : std_logic_vector(31 downto 0);
    signal img_address : std_logic_vector(31 downto 0);
    signal weight_address : std_logic_vector(31 downto 0);


begin

    X_out <= X(3 downto 0);
    W_out <= W(3 downto 0);
	 kernel_size_out <= kernel_size;

    u0 : component soc_system
        port map (
            clk_clk                     => clk,                     -- clk.clk
            control_base_addr           => base_addr,               -- control.base_addr
            control_clear               => clear,                   --        .clear
            control_done                => done,                    --        .done
            control_kernel_size         => kernel_size,             --        .kernel_size
            control_start               => start,                   --        .start
            control_result              => Y,
            control_addr_img            => X,
            control_addr_wei            => W,
            hps_io_hps_io_sdio_inst_CMD => hps_io_hps_io_sdio_inst_CMD, -- hps_io.hps_io_sdio_inst_CMD
            hps_io_hps_io_sdio_inst_D0  => SD_DATA(0),                  --       .hps_io_sdio_inst_D0
            hps_io_hps_io_sdio_inst_D1  => SD_DATA(1),                  --       .hps_io_sdio_inst_D1
            hps_io_hps_io_sdio_inst_CLK => hps_io_hps_io_sdio_inst_CLK, --       .hps_io_sdio_inst_CLK
            hps_io_hps_io_sdio_inst_D2  => SD_DATA(2),                  --       .hps_io_sdio_inst_D2
            hps_io_hps_io_sdio_inst_D3  => SD_DATA(3),                  --       .hps_io_sdio_inst_D3
            memory_mem_a                => memory_mem_a,                -- memory.mem_a
            memory_mem_ba               => memory_mem_ba,               --       .mem_ba
            memory_mem_ck               => memory_mem_ck,               --       .mem_ck
            memory_mem_ck_n             => memory_mem_ck_n,             --       .mem_ck_n
            memory_mem_cke              => memory_mem_cke,              --       .mem_cke
            memory_mem_cs_n             => memory_mem_cs_n,             --       .mem_cs_n
            memory_mem_ras_n            => memory_mem_ras_n,            --       .mem_ras_n
            memory_mem_cas_n            => memory_mem_cas_n,            --       .mem_cas_n
            memory_mem_we_n             => memory_mem_we_n,             --       .mem_we_n
            memory_mem_reset_n          => memory_mem_reset_n,          --       .mem_reset_n
            memory_mem_dq               => memory_mem_dq,               --       .mem_dq
            memory_mem_dqs              => memory_mem_dqs,              --       .mem_dqs
            memory_mem_dqs_n            => memory_mem_dqs_n,            --       .mem_dqs_n
            memory_mem_odt              => memory_mem_odt,              --       .mem_odt
            memory_mem_dm               => memory_mem_dm,               --       .mem_dm
            memory_oct_rzqin            => memory_oct_rzqin,            --       .oct_rzqin
            reset_reset_n               => reset_n,                --  reset.reset_n
            img_read                    => read,                 --  master.read
            img_write                   => write,                --        .write
            img_address                 => (others=>'0'),              --        .address
            img_writedata               => open,            --        .writedata
            img_readdata                => X,             --        .readdata
            img_waitrequest             => img_waitrequest,  --        .writeresponsevalid_n
            weight_read                 => read,
            weight_write                => write,
            weight_address              => (others=>'0'),
            weight_writedata            => open,
            weight_readdata             => W,
            weight_waitrequest          => wei_waitrequest
        );

    neuronio : neuron
        port map (
            clock => clk,
            resetn   => reset_n,

            start => start,
            clear    => clear,
            done            => done,
            base_addr       => (others => '0'),
            kernel_size     => kernel_size,

            read            => read,
            write           => write,
            waitrequest     => (img_waitrequest and wei_waitrequest),

            X               => X(15 downto 0),
            W               => W(15 downto 0),
            Y               => Y,
            addr_img        => img_address,
            addr_wei        => weight_address,
            state_out       => state_out
        ) ;
end architecture ;
