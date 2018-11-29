
module soc_system (
	clk_clk,
	hps_io_hps_io_sdio_inst_CMD,
	hps_io_hps_io_sdio_inst_D0,
	hps_io_hps_io_sdio_inst_D1,
	hps_io_hps_io_sdio_inst_CLK,
	hps_io_hps_io_sdio_inst_D2,
	hps_io_hps_io_sdio_inst_D3,
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
	neuron_control_clear,
	neuron_control_done,
	neuron_control_kernel_size,
	neuron_control_out_neuron,
	neuron_control_start,
	neuron_control_addr_img,
	neuron_control_addr_wei,
	neuron_control_base_addr,
	reset_reset_n,
	master_weights_0_read,
	master_weights_0_write,
	master_weights_0_address,
	master_weights_0_writedata,
	master_weights_0_readdata,
	master_weights_0_waitrequest,
	master_img_1_read,
	master_img_1_write,
	master_img_1_address,
	master_img_1_writedata,
	master_img_1_readdata,
	master_img_1_waitrequest);	

	input		clk_clk;
	inout		hps_io_hps_io_sdio_inst_CMD;
	inout		hps_io_hps_io_sdio_inst_D0;
	inout		hps_io_hps_io_sdio_inst_D1;
	output		hps_io_hps_io_sdio_inst_CLK;
	inout		hps_io_hps_io_sdio_inst_D2;
	inout		hps_io_hps_io_sdio_inst_D3;
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
	output		neuron_control_clear;
	input		neuron_control_done;
	output	[7:0]	neuron_control_kernel_size;
	input	[31:0]	neuron_control_out_neuron;
	output		neuron_control_start;
	input	[31:0]	neuron_control_addr_img;
	input	[31:0]	neuron_control_addr_wei;
	output	[31:0]	neuron_control_base_addr;
	input		reset_reset_n;
	input		master_weights_0_read;
	input		master_weights_0_write;
	input	[31:0]	master_weights_0_address;
	input	[31:0]	master_weights_0_writedata;
	output	[31:0]	master_weights_0_readdata;
	output		master_weights_0_waitrequest;
	input		master_img_1_read;
	input		master_img_1_write;
	input	[31:0]	master_img_1_address;
	input	[31:0]	master_img_1_writedata;
	output	[31:0]	master_img_1_readdata;
	output		master_img_1_waitrequest;
endmodule
