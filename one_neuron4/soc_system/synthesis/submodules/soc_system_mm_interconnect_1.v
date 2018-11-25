// soc_system_mm_interconnect_1.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module soc_system_mm_interconnect_1 (
		input  wire        clk_0_clk_clk,                                              //                                            clk_0_clk.clk
		input  wire        neuron_master_pesos_reset_sink_reset_bridge_in_reset_reset, // neuron_master_pesos_reset_sink_reset_bridge_in_reset.reset
		input  wire [31:0] neuron_master_pesos_avalon_master_address,                  //                    neuron_master_pesos_avalon_master.address
		output wire        neuron_master_pesos_avalon_master_waitrequest,              //                                                     .waitrequest
		input  wire [3:0]  neuron_master_pesos_avalon_master_byteenable,               //                                                     .byteenable
		input  wire        neuron_master_pesos_avalon_master_read,                     //                                                     .read
		output wire [31:0] neuron_master_pesos_avalon_master_readdata,                 //                                                     .readdata
		input  wire        neuron_master_pesos_avalon_master_write,                    //                                                     .write
		input  wire [31:0] neuron_master_pesos_avalon_master_writedata,                //                                                     .writedata
		output wire [5:0]  pesos_s2_address,                                           //                                             pesos_s2.address
		output wire        pesos_s2_write,                                             //                                                     .write
		input  wire [31:0] pesos_s2_readdata,                                          //                                                     .readdata
		output wire [31:0] pesos_s2_writedata,                                         //                                                     .writedata
		output wire [3:0]  pesos_s2_byteenable,                                        //                                                     .byteenable
		output wire        pesos_s2_chipselect,                                        //                                                     .chipselect
		output wire        pesos_s2_clken                                              //                                                     .clken
	);

	wire         neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_waitrequest;   // pesos_s2_translator:uav_waitrequest -> neuron_master_pesos_avalon_master_translator:uav_waitrequest
	wire  [31:0] neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_readdata;      // pesos_s2_translator:uav_readdata -> neuron_master_pesos_avalon_master_translator:uav_readdata
	wire         neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_debugaccess;   // neuron_master_pesos_avalon_master_translator:uav_debugaccess -> pesos_s2_translator:uav_debugaccess
	wire  [31:0] neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_address;       // neuron_master_pesos_avalon_master_translator:uav_address -> pesos_s2_translator:uav_address
	wire         neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_read;          // neuron_master_pesos_avalon_master_translator:uav_read -> pesos_s2_translator:uav_read
	wire   [3:0] neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_byteenable;    // neuron_master_pesos_avalon_master_translator:uav_byteenable -> pesos_s2_translator:uav_byteenable
	wire         neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_readdatavalid; // pesos_s2_translator:uav_readdatavalid -> neuron_master_pesos_avalon_master_translator:uav_readdatavalid
	wire         neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_lock;          // neuron_master_pesos_avalon_master_translator:uav_lock -> pesos_s2_translator:uav_lock
	wire         neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_write;         // neuron_master_pesos_avalon_master_translator:uav_write -> pesos_s2_translator:uav_write
	wire  [31:0] neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_writedata;     // neuron_master_pesos_avalon_master_translator:uav_writedata -> pesos_s2_translator:uav_writedata
	wire   [2:0] neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_burstcount;    // neuron_master_pesos_avalon_master_translator:uav_burstcount -> pesos_s2_translator:uav_burstcount

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (32),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (32),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (0),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) neuron_master_pesos_avalon_master_translator (
		.clk                    (clk_0_clk_clk),                                                                        //                       clk.clk
		.reset                  (neuron_master_pesos_reset_sink_reset_bridge_in_reset_reset),                           //                     reset.reset
		.uav_address            (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount         (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read               (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write              (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest        (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid      (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable         (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata           (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata          (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock               (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess        (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address             (neuron_master_pesos_avalon_master_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest         (neuron_master_pesos_avalon_master_waitrequest),                                        //                          .waitrequest
		.av_byteenable          (neuron_master_pesos_avalon_master_byteenable),                                         //                          .byteenable
		.av_read                (neuron_master_pesos_avalon_master_read),                                               //                          .read
		.av_readdata            (neuron_master_pesos_avalon_master_readdata),                                           //                          .readdata
		.av_write               (neuron_master_pesos_avalon_master_write),                                              //                          .write
		.av_writedata           (neuron_master_pesos_avalon_master_writedata),                                          //                          .writedata
		.av_burstcount          (1'b1),                                                                                 //               (terminated)
		.av_beginbursttransfer  (1'b0),                                                                                 //               (terminated)
		.av_begintransfer       (1'b0),                                                                                 //               (terminated)
		.av_chipselect          (1'b0),                                                                                 //               (terminated)
		.av_readdatavalid       (),                                                                                     //               (terminated)
		.av_lock                (1'b0),                                                                                 //               (terminated)
		.av_debugaccess         (1'b0),                                                                                 //               (terminated)
		.uav_clken              (),                                                                                     //               (terminated)
		.av_clken               (1'b1),                                                                                 //               (terminated)
		.uav_response           (2'b00),                                                                                //               (terminated)
		.av_response            (),                                                                                     //               (terminated)
		.uav_writeresponsevalid (1'b0),                                                                                 //               (terminated)
		.av_writeresponsevalid  ()                                                                                      //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (6),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (1),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (0),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (0),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) pesos_s2_translator (
		.clk                    (clk_0_clk_clk),                                                                        //                      clk.clk
		.reset                  (neuron_master_pesos_reset_sink_reset_bridge_in_reset_reset),                           //                    reset.reset
		.uav_address            (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount         (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read               (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write              (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest        (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid      (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable         (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata           (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata          (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock               (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess        (neuron_master_pesos_avalon_master_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_address             (pesos_s2_address),                                                                     //      avalon_anti_slave_0.address
		.av_write               (pesos_s2_write),                                                                       //                         .write
		.av_readdata            (pesos_s2_readdata),                                                                    //                         .readdata
		.av_writedata           (pesos_s2_writedata),                                                                   //                         .writedata
		.av_byteenable          (pesos_s2_byteenable),                                                                  //                         .byteenable
		.av_chipselect          (pesos_s2_chipselect),                                                                  //                         .chipselect
		.av_clken               (pesos_s2_clken),                                                                       //                         .clken
		.av_read                (),                                                                                     //              (terminated)
		.av_begintransfer       (),                                                                                     //              (terminated)
		.av_beginbursttransfer  (),                                                                                     //              (terminated)
		.av_burstcount          (),                                                                                     //              (terminated)
		.av_readdatavalid       (1'b0),                                                                                 //              (terminated)
		.av_waitrequest         (1'b0),                                                                                 //              (terminated)
		.av_writebyteenable     (),                                                                                     //              (terminated)
		.av_lock                (),                                                                                     //              (terminated)
		.uav_clken              (1'b0),                                                                                 //              (terminated)
		.av_debugaccess         (),                                                                                     //              (terminated)
		.av_outputenable        (),                                                                                     //              (terminated)
		.uav_response           (),                                                                                     //              (terminated)
		.av_response            (2'b00),                                                                                //              (terminated)
		.uav_writeresponsevalid (),                                                                                     //              (terminated)
		.av_writeresponsevalid  (1'b0)                                                                                  //              (terminated)
	);

endmodule
