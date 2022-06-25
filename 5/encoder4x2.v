`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:36:50 04/26/2021 
// Design Name: 
// Module Name:    encoder4x2 
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
module encoder4x2 (
	input [3:0] din ,
	output [1:0] qout	
);
	wire d2Not,andO;
    not gN0(d2Not,din[2]);
    and gA0(andO,d2Not,din[1]);
    or gO0(qout[0],andO,din[3]);
    or gO1(qout[1],din[3],din[2]);

endmodule