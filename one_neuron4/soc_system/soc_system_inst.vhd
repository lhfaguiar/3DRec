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

	u0 : component soc_system
		port map (
			clk_clk                     => CONNECTED_TO_clk_clk,                     --     clk.clk
			control_base_addr           => CONNECTED_TO_control_base_addr,           -- control.base_addr
			control_clear               => CONNECTED_TO_control_clear,               --        .clear
			control_done                => CONNECTED_TO_control_done,                --        .done
			control_kernel_size         => CONNECTED_TO_control_kernel_size,         --        .kernel_size
			control_start               => CONNECTED_TO_control_start,               --        .start
			control_result              => CONNECTED_TO_control_result,              --        .result
			control_addr_img            => CONNECTED_TO_control_addr_img,            --        .addr_img
			control_addr_wei            => CONNECTED_TO_control_addr_wei,            --        .addr_wei
			hps_io_hps_io_sdio_inst_CMD => CONNECTED_TO_hps_io_hps_io_sdio_inst_CMD, --  hps_io.hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0  => CONNECTED_TO_hps_io_hps_io_sdio_inst_D0,  --        .hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1  => CONNECTED_TO_hps_io_hps_io_sdio_inst_D1,  --        .hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK => CONNECTED_TO_hps_io_hps_io_sdio_inst_CLK, --        .hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2  => CONNECTED_TO_hps_io_hps_io_sdio_inst_D2,  --        .hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3  => CONNECTED_TO_hps_io_hps_io_sdio_inst_D3,  --        .hps_io_sdio_inst_D3
			img_read                    => CONNECTED_TO_img_read,                    --     img.read
			img_write                   => CONNECTED_TO_img_write,                   --        .write
			img_address                 => CONNECTED_TO_img_address,                 --        .address
			img_writedata               => CONNECTED_TO_img_writedata,               --        .writedata
			img_readdata                => CONNECTED_TO_img_readdata,                --        .readdata
			img_waitrequest             => CONNECTED_TO_img_waitrequest,             --        .waitrequest
			memory_mem_a                => CONNECTED_TO_memory_mem_a,                --  memory.mem_a
			memory_mem_ba               => CONNECTED_TO_memory_mem_ba,               --        .mem_ba
			memory_mem_ck               => CONNECTED_TO_memory_mem_ck,               --        .mem_ck
			memory_mem_ck_n             => CONNECTED_TO_memory_mem_ck_n,             --        .mem_ck_n
			memory_mem_cke              => CONNECTED_TO_memory_mem_cke,              --        .mem_cke
			memory_mem_cs_n             => CONNECTED_TO_memory_mem_cs_n,             --        .mem_cs_n
			memory_mem_ras_n            => CONNECTED_TO_memory_mem_ras_n,            --        .mem_ras_n
			memory_mem_cas_n            => CONNECTED_TO_memory_mem_cas_n,            --        .mem_cas_n
			memory_mem_we_n             => CONNECTED_TO_memory_mem_we_n,             --        .mem_we_n
			memory_mem_reset_n          => CONNECTED_TO_memory_mem_reset_n,          --        .mem_reset_n
			memory_mem_dq               => CONNECTED_TO_memory_mem_dq,               --        .mem_dq
			memory_mem_dqs              => CONNECTED_TO_memory_mem_dqs,              --        .mem_dqs
			memory_mem_dqs_n            => CONNECTED_TO_memory_mem_dqs_n,            --        .mem_dqs_n
			memory_mem_odt              => CONNECTED_TO_memory_mem_odt,              --        .mem_odt
			memory_mem_dm               => CONNECTED_TO_memory_mem_dm,               --        .mem_dm
			memory_oct_rzqin            => CONNECTED_TO_memory_oct_rzqin,            --        .oct_rzqin
			reset_reset_n               => CONNECTED_TO_reset_reset_n,               --   reset.reset_n
			weight_read                 => CONNECTED_TO_weight_read,                 --  weight.read
			weight_write                => CONNECTED_TO_weight_write,                --        .write
			weight_address              => CONNECTED_TO_weight_address,              --        .address
			weight_writedata            => CONNECTED_TO_weight_writedata,            --        .writedata
			weight_readdata             => CONNECTED_TO_weight_readdata,             --        .readdata
			weight_waitrequest          => CONNECTED_TO_weight_waitrequest           --        .waitrequest
		);

