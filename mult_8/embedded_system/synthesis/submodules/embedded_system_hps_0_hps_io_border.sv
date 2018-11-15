// (C) 2001-2018 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


module embedded_system_hps_0_hps_io_border(
// memory
  output wire [13 - 1 : 0 ] mem_a
 ,output wire [3 - 1 : 0 ] mem_ba
 ,output wire [1 - 1 : 0 ] mem_ck
 ,output wire [1 - 1 : 0 ] mem_ck_n
 ,output wire [1 - 1 : 0 ] mem_cke
 ,output wire [1 - 1 : 0 ] mem_cs_n
 ,output wire [1 - 1 : 0 ] mem_ras_n
 ,output wire [1 - 1 : 0 ] mem_cas_n
 ,output wire [1 - 1 : 0 ] mem_we_n
 ,output wire [1 - 1 : 0 ] mem_reset_n
 ,inout wire [8 - 1 : 0 ] mem_dq
 ,inout wire [1 - 1 : 0 ] mem_dqs
 ,inout wire [1 - 1 : 0 ] mem_dqs_n
 ,output wire [1 - 1 : 0 ] mem_odt
 ,output wire [1 - 1 : 0 ] mem_dm
 ,input wire [1 - 1 : 0 ] oct_rzqin
// hps_io
 ,inout wire [1 - 1 : 0 ] hps_io_qspi_inst_IO0
 ,inout wire [1 - 1 : 0 ] hps_io_qspi_inst_IO1
 ,inout wire [1 - 1 : 0 ] hps_io_qspi_inst_IO2
 ,inout wire [1 - 1 : 0 ] hps_io_qspi_inst_IO3
 ,output wire [1 - 1 : 0 ] hps_io_qspi_inst_SS0
 ,output wire [1 - 1 : 0 ] hps_io_qspi_inst_CLK
 ,inout wire [1 - 1 : 0 ] hps_io_sdio_inst_CMD
 ,inout wire [1 - 1 : 0 ] hps_io_sdio_inst_D0
 ,inout wire [1 - 1 : 0 ] hps_io_sdio_inst_D1
 ,output wire [1 - 1 : 0 ] hps_io_sdio_inst_CLK
 ,inout wire [1 - 1 : 0 ] hps_io_sdio_inst_D2
 ,inout wire [1 - 1 : 0 ] hps_io_sdio_inst_D3
);

assign hps_io_qspi_inst_IO0 = intermediate[1] ? intermediate[0] : 'z;
assign hps_io_qspi_inst_IO1 = intermediate[3] ? intermediate[2] : 'z;
assign hps_io_qspi_inst_IO2 = intermediate[5] ? intermediate[4] : 'z;
assign hps_io_qspi_inst_IO3 = intermediate[7] ? intermediate[6] : 'z;
assign hps_io_sdio_inst_CMD = intermediate[9] ? intermediate[8] : 'z;
assign hps_io_sdio_inst_D0 = intermediate[11] ? intermediate[10] : 'z;
assign hps_io_sdio_inst_D1 = intermediate[13] ? intermediate[12] : 'z;
assign hps_io_sdio_inst_D2 = intermediate[15] ? intermediate[14] : 'z;
assign hps_io_sdio_inst_D3 = intermediate[17] ? intermediate[16] : 'z;

wire [18 - 1 : 0] intermediate;

cyclonev_hps_peripheral_qspi qspi_inst(
 .QSPI_MO2({
    intermediate[4:4] // 0:0
  })
,.QSPI_MI3({
    hps_io_qspi_inst_IO3[0:0] // 0:0
  })
,.QSPI_MO1({
    intermediate[2:2] // 0:0
  })
,.QSPI_MO0({
    intermediate[0:0] // 0:0
  })
,.QSPI_MI2({
    hps_io_qspi_inst_IO2[0:0] // 0:0
  })
,.QSPI_MI1({
    hps_io_qspi_inst_IO1[0:0] // 0:0
  })
,.QSPI_MI0({
    hps_io_qspi_inst_IO0[0:0] // 0:0
  })
,.QSPI_MO_EN_N({
    intermediate[7:7] // 3:3
   ,intermediate[5:5] // 2:2
   ,intermediate[3:3] // 1:1
   ,intermediate[1:1] // 0:0
  })
,.QSPI_SS_N({
    hps_io_qspi_inst_SS0[0:0] // 0:0
  })
,.QSPI_SCLK({
    hps_io_qspi_inst_CLK[0:0] // 0:0
  })
,.QSPI_MO3({
    intermediate[6:6] // 0:0
  })
);


cyclonev_hps_peripheral_sdmmc sdio_inst(
 .SDMMC_DATA_I({
    hps_io_sdio_inst_D3[0:0] // 3:3
   ,hps_io_sdio_inst_D2[0:0] // 2:2
   ,hps_io_sdio_inst_D1[0:0] // 1:1
   ,hps_io_sdio_inst_D0[0:0] // 0:0
  })
,.SDMMC_CMD_O({
    intermediate[8:8] // 0:0
  })
,.SDMMC_CCLK({
    hps_io_sdio_inst_CLK[0:0] // 0:0
  })
,.SDMMC_DATA_O({
    intermediate[16:16] // 3:3
   ,intermediate[14:14] // 2:2
   ,intermediate[12:12] // 1:1
   ,intermediate[10:10] // 0:0
  })
,.SDMMC_CMD_OE({
    intermediate[9:9] // 0:0
  })
,.SDMMC_CMD_I({
    hps_io_sdio_inst_CMD[0:0] // 0:0
  })
,.SDMMC_DATA_OE({
    intermediate[17:17] // 3:3
   ,intermediate[15:15] // 2:2
   ,intermediate[13:13] // 1:1
   ,intermediate[11:11] // 0:0
  })
);


hps_sdram hps_sdram_inst(
 .mem_dq({
    mem_dq[7:0] // 7:0
  })
,.mem_odt({
    mem_odt[0:0] // 0:0
  })
,.mem_ras_n({
    mem_ras_n[0:0] // 0:0
  })
,.mem_dqs_n({
    mem_dqs_n[0:0] // 0:0
  })
,.mem_dqs({
    mem_dqs[0:0] // 0:0
  })
,.mem_dm({
    mem_dm[0:0] // 0:0
  })
,.mem_we_n({
    mem_we_n[0:0] // 0:0
  })
,.mem_cas_n({
    mem_cas_n[0:0] // 0:0
  })
,.mem_ba({
    mem_ba[2:0] // 2:0
  })
,.mem_a({
    mem_a[12:0] // 12:0
  })
,.mem_cs_n({
    mem_cs_n[0:0] // 0:0
  })
,.mem_ck({
    mem_ck[0:0] // 0:0
  })
,.mem_cke({
    mem_cke[0:0] // 0:0
  })
,.oct_rzqin({
    oct_rzqin[0:0] // 0:0
  })
,.mem_reset_n({
    mem_reset_n[0:0] // 0:0
  })
,.mem_ck_n({
    mem_ck_n[0:0] // 0:0
  })
);

endmodule

