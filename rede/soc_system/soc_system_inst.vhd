	component soc_system is
		port (
			clk_clk                      : in    std_logic                     := 'X';             -- clk
			hps_io_hps_io_sdio_inst_CMD  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0   : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1   : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK  : out   std_logic;                                        -- hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2   : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3   : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
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
			reset_reset_n                : in    std_logic                     := 'X';             -- reset_n
			master_weights_0_read        : in    std_logic                     := 'X';             -- read
			master_weights_0_write       : in    std_logic                     := 'X';             -- write
			master_weights_0_address     : in    std_logic_vector(31 downto 0) := (others => 'X'); -- address
			master_weights_0_writedata   : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			master_weights_0_readdata    : out   std_logic_vector(31 downto 0);                    -- readdata
			master_weights_0_waitrequest : out   std_logic;                                        -- waitrequest
			master_img_1_read            : in    std_logic                     := 'X';             -- read
			master_img_1_write           : in    std_logic                     := 'X';             -- write
			master_img_1_address         : in    std_logic_vector(31 downto 0) := (others => 'X'); -- address
			master_img_1_writedata       : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			master_img_1_readdata        : out   std_logic_vector(31 downto 0);                    -- readdata
			master_img_1_waitrequest     : out   std_logic                                         -- waitrequest
		);
	end component soc_system;

	u0 : component soc_system
		port map (
			clk_clk                      => CONNECTED_TO_clk_clk,                      --              clk.clk
			hps_io_hps_io_sdio_inst_CMD  => CONNECTED_TO_hps_io_hps_io_sdio_inst_CMD,  --           hps_io.hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0   => CONNECTED_TO_hps_io_hps_io_sdio_inst_D0,   --                 .hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1   => CONNECTED_TO_hps_io_hps_io_sdio_inst_D1,   --                 .hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK  => CONNECTED_TO_hps_io_hps_io_sdio_inst_CLK,  --                 .hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2   => CONNECTED_TO_hps_io_hps_io_sdio_inst_D2,   --                 .hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3   => CONNECTED_TO_hps_io_hps_io_sdio_inst_D3,   --                 .hps_io_sdio_inst_D3
			memory_mem_a                 => CONNECTED_TO_memory_mem_a,                 --           memory.mem_a
			memory_mem_ba                => CONNECTED_TO_memory_mem_ba,                --                 .mem_ba
			memory_mem_ck                => CONNECTED_TO_memory_mem_ck,                --                 .mem_ck
			memory_mem_ck_n              => CONNECTED_TO_memory_mem_ck_n,              --                 .mem_ck_n
			memory_mem_cke               => CONNECTED_TO_memory_mem_cke,               --                 .mem_cke
			memory_mem_cs_n              => CONNECTED_TO_memory_mem_cs_n,              --                 .mem_cs_n
			memory_mem_ras_n             => CONNECTED_TO_memory_mem_ras_n,             --                 .mem_ras_n
			memory_mem_cas_n             => CONNECTED_TO_memory_mem_cas_n,             --                 .mem_cas_n
			memory_mem_we_n              => CONNECTED_TO_memory_mem_we_n,              --                 .mem_we_n
			memory_mem_reset_n           => CONNECTED_TO_memory_mem_reset_n,           --                 .mem_reset_n
			memory_mem_dq                => CONNECTED_TO_memory_mem_dq,                --                 .mem_dq
			memory_mem_dqs               => CONNECTED_TO_memory_mem_dqs,               --                 .mem_dqs
			memory_mem_dqs_n             => CONNECTED_TO_memory_mem_dqs_n,             --                 .mem_dqs_n
			memory_mem_odt               => CONNECTED_TO_memory_mem_odt,               --                 .mem_odt
			memory_mem_dm                => CONNECTED_TO_memory_mem_dm,                --                 .mem_dm
			memory_oct_rzqin             => CONNECTED_TO_memory_oct_rzqin,             --                 .oct_rzqin
			neuron_control_clear         => CONNECTED_TO_neuron_control_clear,         --   neuron_control.clear
			neuron_control_done          => CONNECTED_TO_neuron_control_done,          --                 .done
			neuron_control_kernel_size   => CONNECTED_TO_neuron_control_kernel_size,   --                 .kernel_size
			neuron_control_out_neuron    => CONNECTED_TO_neuron_control_out_neuron,    --                 .out_neuron
			neuron_control_start         => CONNECTED_TO_neuron_control_start,         --                 .start
			neuron_control_addr_img      => CONNECTED_TO_neuron_control_addr_img,      --                 .addr_img
			neuron_control_addr_wei      => CONNECTED_TO_neuron_control_addr_wei,      --                 .addr_wei
			neuron_control_base_addr     => CONNECTED_TO_neuron_control_base_addr,     --                 .base_addr
			reset_reset_n                => CONNECTED_TO_reset_reset_n,                --            reset.reset_n
			master_weights_0_read        => CONNECTED_TO_master_weights_0_read,        -- master_weights_0.read
			master_weights_0_write       => CONNECTED_TO_master_weights_0_write,       --                 .write
			master_weights_0_address     => CONNECTED_TO_master_weights_0_address,     --                 .address
			master_weights_0_writedata   => CONNECTED_TO_master_weights_0_writedata,   --                 .writedata
			master_weights_0_readdata    => CONNECTED_TO_master_weights_0_readdata,    --                 .readdata
			master_weights_0_waitrequest => CONNECTED_TO_master_weights_0_waitrequest, --                 .waitrequest
			master_img_1_read            => CONNECTED_TO_master_img_1_read,            --     master_img_1.read
			master_img_1_write           => CONNECTED_TO_master_img_1_write,           --                 .write
			master_img_1_address         => CONNECTED_TO_master_img_1_address,         --                 .address
			master_img_1_writedata       => CONNECTED_TO_master_img_1_writedata,       --                 .writedata
			master_img_1_readdata        => CONNECTED_TO_master_img_1_readdata,        --                 .readdata
			master_img_1_waitrequest     => CONNECTED_TO_master_img_1_waitrequest      --                 .waitrequest
		);

