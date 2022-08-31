`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:11 12/08/2021 
// Design Name: 
// Module Name:    yiweijicunqi 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module yiweijicunqi(oe,s,clk,d,q);
	input oe,clk;
	input[1:0] s;
	input[3:0] d;
	output reg[3:0] q;
	always@(posedge oe or posedge clk)
	begin
		if(oe)
			q = 4'bzzzz;
		else if(s==2'b01)
		begin
			q = {q[2:0],q[3]};
		end
		else if(s==2'b10)
		begin
			q = {q[0],q[3:1]};
		end
		else if(s==2'b11)
			q = d;
	end

endmodule
