// PLL.v

// Generated using ACDS version 23.1 993

`timescale 1 ps / 1 ps
module PLL (
		input  wire        altpll_0_pll_slave_read,      // altpll_0_pll_slave.read
		input  wire        altpll_0_pll_slave_write,     //                   .write
		input  wire [1:0]  altpll_0_pll_slave_address,   //                   .address
		output wire [31:0] altpll_0_pll_slave_readdata,  //                   .readdata
		input  wire [31:0] altpll_0_pll_slave_writedata, //                   .writedata
		input  wire        clk_in_clk,                   //             clk_in.clk
		output wire        clk_out_clk,                  //            clk_out.clk
		input  wire        reset_reset                   //              reset.reset
	);

	PLL_altpll_0 altpll_0 (
		.clk                (clk_in_clk),                   //       inclk_interface.clk
		.reset              (reset_reset),                  // inclk_interface_reset.reset
		.read               (altpll_0_pll_slave_read),      //             pll_slave.read
		.write              (altpll_0_pll_slave_write),     //                      .write
		.address            (altpll_0_pll_slave_address),   //                      .address
		.readdata           (altpll_0_pll_slave_readdata),  //                      .readdata
		.writedata          (altpll_0_pll_slave_writedata), //                      .writedata
		.c0                 (clk_out_clk),                  //                    c0.clk
		.scandone           (),                             //           (terminated)
		.scandataout        (),                             //           (terminated)
		.c1                 (),                             //           (terminated)
		.c2                 (),                             //           (terminated)
		.c3                 (),                             //           (terminated)
		.c4                 (),                             //           (terminated)
		.areset             (1'b0),                         //           (terminated)
		.locked             (),                             //           (terminated)
		.phasedone          (),                             //           (terminated)
		.phasecounterselect (3'b000),                       //           (terminated)
		.phaseupdown        (1'b0),                         //           (terminated)
		.phasestep          (1'b0),                         //           (terminated)
		.scanclk            (1'b0),                         //           (terminated)
		.scanclkena         (1'b0),                         //           (terminated)
		.scandata           (1'b0),                         //           (terminated)
		.configupdate       (1'b0)                          //           (terminated)
	);

endmodule
