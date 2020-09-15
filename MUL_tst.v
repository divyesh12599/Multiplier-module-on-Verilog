`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:58:25 09/12/2020
// Design Name:   MUL
// Module Name:   C:/Users/Divyesh/Desktop/HDL PROJECT/Project 1/MUL/MUL_tst.v
// Project Name:  MUL
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUL_tst;

	// Inputs
	reg clk;
	reg start;
	reg [15:0] data_in;

	// Outputs
	wire done;

	// Instantiate the Unit Under Test (UUT)
	MUL uut (
		.done(done), 
		.clk(clk), 
		.start(start), 
		.data_in(data_in)
	);
	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 1;
		start = 0;
		data_in = 0;
		#20;
		start=1;
		data_in = 16'd15;
		#20;
		data_in = 16'd15;
		#20;
		data_in = 16'd5;
	end
      
endmodule

