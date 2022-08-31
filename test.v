`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:28:31 12/08/2021
// Design Name:   yiweijicunqi
// Module Name:   D:/szdl/yiweijicunqi/test.v
// Project Name:  yiweijicunqi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: yiweijicunqi
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg oe;
	reg [1:0] s;
	reg clk;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	yiweijicunqi uut (
		.oe(oe), 
		.s(s), 
		.clk(clk), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		oe = 1;
		s = 0;
		clk = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
		oe = 0;
		s = 2'b11;
		d = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
		oe = 0;
		s = 2'b00;
		d = 4'b1010;
		#100
		oe = 0;
		s = 2'b01;
		d = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
		oe = 0;
		s = 2'b01;
		d = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
		oe = 0;
		s = 2'b10;
		d = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
		oe = 0;
		s = 2'b10;
		d = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
		oe = 0;
		s = 2'b11;
		d = 4'b1110;

		// Wait 100 ns for global reset to finish
		#100;
		oe = 0;
		s = 2'b10;
		d = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
		oe = 0;
		s = 2'b00;
		d = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always #20 clk = ~clk;
endmodule

