LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY reg_16_top_level IS
    PORT
	(
		CLOCK_50		    	:	 IN STD_LOGIC;
		KEY		         :	 IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		HPS_DDR3_RZQ		:	 IN STD_LOGIC;
		HPS_DDR3_ADDR		:	 OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		HPS_DDR3_BA		   :	 OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		HPS_DDR3_CK_N		:	 OUT STD_LOGIC;
		HPS_DDR3_CK_P		:	 OUT STD_LOGIC;
		HPS_DDR3_ODT		:	 OUT STD_LOGIC;
		HPS_DDR3_CKE		:	 OUT STD_LOGIC;
		HPS_DDR3_CS_N		:	 OUT STD_LOGIC;
		HPS_DDR3_RAS_N		:	 OUT STD_LOGIC;
		HPS_DDR3_CAS_N		:	 OUT STD_LOGIC;
		HPS_DDR3_WE_N		:	 OUT STD_LOGIC;
		HPS_DDR3_DM		   :	 OUT STD_LOGIC;
		HPS_DDR3_RESET_N	:	 OUT STD_LOGIC;
		HPS_DDR3_DQS_P		:	 INOUT STD_LOGIC;
		HPS_DDR3_DQS_N		:	 INOUT STD_LOGIC;
		HPS_DDR3_DQ	      :	 INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		HPS_FLASH_NCS0		:	 OUT STD_LOGIC;
		HPS_FLASH_DCLK		:	 OUT STD_LOGIC;
		HPS_FLASH_DATA		:	 INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		HPS_SD_CLK		   :	 OUT STD_LOGIC;
		HPS_SD_DATA		   :	 INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		HPS_SD_CMD		   :	 INOUT STD_LOGIC;
      to_HEX		      :	 OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END reg_16_top_level;


architecture arch of reg_16_top_level is

    component embedded_system is
        port (
            clk_clk                     : in    std_logic                     := 'X';             -- clk
            hps_io_hps_io_qspi_inst_IO0 : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO0
            hps_io_hps_io_qspi_inst_IO1 : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO1
            hps_io_hps_io_qspi_inst_IO2 : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO2
            hps_io_hps_io_qspi_inst_IO3 : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO3
            hps_io_hps_io_qspi_inst_SS0 : out   std_logic;                                        -- hps_io_qspi_inst_SS0
            hps_io_hps_io_qspi_inst_CLK : out   std_logic;                                        -- hps_io_qspi_inst_CLK
            hps_io_hps_io_sdio_inst_CMD : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
            hps_io_hps_io_sdio_inst_D0  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
            hps_io_hps_io_sdio_inst_D1  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
            hps_io_hps_io_sdio_inst_CLK : out   std_logic;                                        -- hps_io_sdio_inst_CLK
            hps_io_hps_io_sdio_inst_D2  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
            hps_io_hps_io_sdio_inst_D3  : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
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
            to_hex_export               : out   std_logic_vector(31 downto 0)                     -- export
        );
    end component embedded_system;

begin

    u0 : component embedded_system
    port map (
        clk_clk                     => CLOCK_50,                     --    clk.clk
        hps_io_hps_io_qspi_inst_IO0 => HPS_FLASH_DATA(0), -- hps_io.hps_io_qspi_inst_IO0
        hps_io_hps_io_qspi_inst_IO1 => HPS_FLASH_DATA(1), --       .hps_io_qspi_inst_IO1
        hps_io_hps_io_qspi_inst_IO2 => HPS_FLASH_DATA(2), --       .hps_io_qspi_inst_IO2
        hps_io_hps_io_qspi_inst_IO3 => HPS_FLASH_DATA(3), --       .hps_io_qspi_inst_IO3
        hps_io_hps_io_qspi_inst_SS0 => HPS_FLASH_NCS0, --       .hps_io_qspi_inst_SS0
        hps_io_hps_io_qspi_inst_CLK => HPS_FLASH_DCLK,                           --       .hps_io_qspi_inst_CLK
        hps_io_hps_io_sdio_inst_CMD => HPS_SD_CMD,                               --       .hps_io_sdio_inst_CMD
        hps_io_hps_io_sdio_inst_D0  => HPS_SD_DATA(0),  --       .hps_io_sdio_inst_D0
        hps_io_hps_io_sdio_inst_D1  => HPS_SD_DATA(1),  --       .hps_io_sdio_inst_D1
        hps_io_hps_io_sdio_inst_CLK => HPS_SD_CLK,                               --       .hps_io_sdio_inst_CLK
        hps_io_hps_io_sdio_inst_D2  => HPS_SD_DATA(2),  --       .hps_io_sdio_inst_D2
        hps_io_hps_io_sdio_inst_D3  => HPS_SD_DATA(3),  --       .hps_io_sdio_inst_D3
        memory_mem_a                => HPS_DDR3_ADDR,                -- memory.mem_a
        memory_mem_ba               => HPS_DDR3_BA,               --       .mem_ba
        memory_mem_ck               => HPS_DDR3_CK_P,               --       .mem_ck
        memory_mem_ck_n             => HPS_DDR3_CK_N,             --       .mem_ck_n
        memory_mem_cke              => HPS_DDR3_CKE,              --       .mem_cke
        memory_mem_cs_n             => HPS_DDR3_CS_N,             --       .mem_cs_n
        memory_mem_ras_n            => HPS_DDR3_RAS_N,            --       .mem_ras_n
        memory_mem_cas_n            => HPS_DDR3_CAS_N,            --       .mem_cas_n
        memory_mem_we_n             => HPS_DDR3_WE_N,             --       .mem_we_n
        memory_mem_reset_n          => HPS_DDR3_RESET_N,          --       .mem_reset_n
        memory_mem_dq               => HPS_DDR3_DQ,               --       .mem_dq
        memory_mem_dqs              => HPS_DDR3_DQS_P,              --       .mem_dqs
        memory_mem_dqs_n            => HPS_DDR3_DQS_N,            --       .mem_dqs_n
        memory_mem_odt              => HPS_DDR3_ODT,              --       .mem_odt
        memory_mem_dm               => HPS_DDR3_DM,               --       .mem_dm
        memory_oct_rzqin            => HPS_DDR3_RZQ,            --       .oct_rzqin
        reset_reset_n               => KEY(0),               --  reset.reset_n
        to_hex_export               => to_HEX                -- to_hex.export
    );

end arch ; -- arch