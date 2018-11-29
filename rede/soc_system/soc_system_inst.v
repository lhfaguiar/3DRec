	soc_system u0 (
		.clk_clk                      (<connected-to-clk_clk>),                      //              clk.clk
		.hps_io_hps_io_sdio_inst_CMD  (<connected-to-hps_io_hps_io_sdio_inst_CMD>),  //           hps_io.hps_io_sdio_inst_CMD
		.hps_io_hps_io_sdio_inst_D0   (<connected-to-hps_io_hps_io_sdio_inst_D0>),   //                 .hps_io_sdio_inst_D0
		.hps_io_hps_io_sdio_inst_D1   (<connected-to-hps_io_hps_io_sdio_inst_D1>),   //                 .hps_io_sdio_inst_D1
		.hps_io_hps_io_sdio_inst_CLK  (<connected-to-hps_io_hps_io_sdio_inst_CLK>),  //                 .hps_io_sdio_inst_CLK
		.hps_io_hps_io_sdio_inst_D2   (<connected-to-hps_io_hps_io_sdio_inst_D2>),   //                 .hps_io_sdio_inst_D2
		.hps_io_hps_io_sdio_inst_D3   (<connected-to-hps_io_hps_io_sdio_inst_D3>),   //                 .hps_io_sdio_inst_D3
		.memory_mem_a                 (<connected-to-memory_mem_a>),                 //           memory.mem_a
		.memory_mem_ba                (<connected-to-memory_mem_ba>),                //                 .mem_ba
		.memory_mem_ck                (<connected-to-memory_mem_ck>),                //                 .mem_ck
		.memory_mem_ck_n              (<connected-to-memory_mem_ck_n>),              //                 .mem_ck_n
		.memory_mem_cke               (<connected-to-memory_mem_cke>),               //                 .mem_cke
		.memory_mem_cs_n              (<connected-to-memory_mem_cs_n>),              //                 .mem_cs_n
		.memory_mem_ras_n             (<connected-to-memory_mem_ras_n>),             //                 .mem_ras_n
		.memory_mem_cas_n             (<connected-to-memory_mem_cas_n>),             //                 .mem_cas_n
		.memory_mem_we_n              (<connected-to-memory_mem_we_n>),              //                 .mem_we_n
		.memory_mem_reset_n           (<connected-to-memory_mem_reset_n>),           //                 .mem_reset_n
		.memory_mem_dq                (<connected-to-memory_mem_dq>),                //                 .mem_dq
		.memory_mem_dqs               (<connected-to-memory_mem_dqs>),               //                 .mem_dqs
		.memory_mem_dqs_n             (<connected-to-memory_mem_dqs_n>),             //                 .mem_dqs_n
		.memory_mem_odt               (<connected-to-memory_mem_odt>),               //                 .mem_odt
		.memory_mem_dm                (<connected-to-memory_mem_dm>),                //                 .mem_dm
		.memory_oct_rzqin             (<connected-to-memory_oct_rzqin>),             //                 .oct_rzqin
		.neuron_control_clear         (<connected-to-neuron_control_clear>),         //   neuron_control.clear
		.neuron_control_done          (<connected-to-neuron_control_done>),          //                 .done
		.neuron_control_kernel_size   (<connected-to-neuron_control_kernel_size>),   //                 .kernel_size
		.neuron_control_out_neuron    (<connected-to-neuron_control_out_neuron>),    //                 .out_neuron
		.neuron_control_start         (<connected-to-neuron_control_start>),         //                 .start
		.neuron_control_addr_img      (<connected-to-neuron_control_addr_img>),      //                 .addr_img
		.neuron_control_addr_wei      (<connected-to-neuron_control_addr_wei>),      //                 .addr_wei
		.neuron_control_base_addr     (<connected-to-neuron_control_base_addr>),     //                 .base_addr
		.reset_reset_n                (<connected-to-reset_reset_n>),                //            reset.reset_n
		.master_weights_0_read        (<connected-to-master_weights_0_read>),        // master_weights_0.read
		.master_weights_0_write       (<connected-to-master_weights_0_write>),       //                 .write
		.master_weights_0_address     (<connected-to-master_weights_0_address>),     //                 .address
		.master_weights_0_writedata   (<connected-to-master_weights_0_writedata>),   //                 .writedata
		.master_weights_0_readdata    (<connected-to-master_weights_0_readdata>),    //                 .readdata
		.master_weights_0_waitrequest (<connected-to-master_weights_0_waitrequest>), //                 .waitrequest
		.master_img_1_read            (<connected-to-master_img_1_read>),            //     master_img_1.read
		.master_img_1_write           (<connected-to-master_img_1_write>),           //                 .write
		.master_img_1_address         (<connected-to-master_img_1_address>),         //                 .address
		.master_img_1_writedata       (<connected-to-master_img_1_writedata>),       //                 .writedata
		.master_img_1_readdata        (<connected-to-master_img_1_readdata>),        //                 .readdata
		.master_img_1_waitrequest     (<connected-to-master_img_1_waitrequest>)      //                 .waitrequest
	);
