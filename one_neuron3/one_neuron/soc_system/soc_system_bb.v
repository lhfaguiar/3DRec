
module soc_system (
	clk_clk,
	control_base_addr,
	control_clear,
	control_done,
	control_kernel_size,
	control_start,
	hps_io_hps_io_sdio_inst_CMD,
	hps_io_hps_io_sdio_inst_D0,
	hps_io_hps_io_sdio_inst_D1,
	hps_io_hps_io_sdio_inst_CLK,
	hps_io_hps_io_sdio_inst_D2,
	hps_io_hps_io_sdio_inst_D3,
	img_read,
	img_write,
	img_address,
	img_writedata,
	img_readdata,
	img_waitrequest,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	memory_mem_dm,
	memory_oct_rzqin,
	reset_reset_n,
	weight_read,
	weight_write,
	weight_address,
	weight_writedata,
	weight_readdata,
	weight_waitrequest);	

	input		clk_clk;
	output	[31:0]	control_base_addr;
	output		control_clear;
	input		control_done;
	output	[7:0]	control_kernel_size;
	output		control_start;
	inout		hps_io_hps_io_sdio_inst_CMD;
	inout		hps_io_hps_io_sdio_inst_D0;
	inout		hps_io_hps_io_sdio_inst_D1;
	output		hps_io_hps_io_sdio_inst_CLK;
	inout		hps_io_hps_io_sdio_inst_D2;
	inout		hps_io_hps_io_sdio_inst_D3;
	input		img_read;
	input		img_write;
	input	[29:0]	img_address;
	input	[31:0]	img_writedata;
	output	[31:0]	img_readdata;
	output		img_waitrequest;
	output	[12:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output		memory_mem_ck;
	output		memory_mem_ck_n;
	output		memory_mem_cke;
	output		memory_mem_cs_n;
	output		memory_mem_ras_n;
	output		memory_mem_cas_n;
	output		memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[7:0]	memory_mem_dq;
	inout		memory_mem_dqs;
	inout		memory_mem_dqs_n;
	output		memory_mem_odt;
	output		memory_mem_dm;
	input		memory_oct_rzqin;
	input		reset_reset_n;
	input		weight_read;
	input		weight_write;
	input	[29:0]	weight_address;
	input	[31:0]	weight_writedata;
	output	[31:0]	weight_readdata;
	output		weight_waitrequest;
endmodule
