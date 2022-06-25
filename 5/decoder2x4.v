`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:45:22 04/26/2021 
// Design Name: 
// Module Name:    decoder2x4 
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
module decoder2x4 (
	input [1:0] in ,
	input en ,
	output [3:0] dout
);
	wire [1:0]notIn;
    not gN0(notIn[0],in[0]);
    not gN1(notIn[1],in[1]);
    and gA0(dout[0],notIn[0],notIn[1]);
    and gA1(dout[1],notIn[0],in[1]);
    and gA2(dout[2],in[0],notIn[1]);
    and gA3(dout[3],in[0],in[1]);

endmodule