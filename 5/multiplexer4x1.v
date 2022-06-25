`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:38:14 04/26/2021 
// Design Name: 
// Module Name:    multiplexer4x1 
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
module multiplexer4x1 (
	input [3:0] w ,
	input [1:0]	sel ,
	output y
);
	wire [1:0] notSel;
    wire [3:0] andOut;
    not gN0(notSel[0],sel[0]);
    not gN1(notSel[1],sel[1]);
    and gA0(andOut[0],notSel[1],notSel[0],w[0]);
    and gA1(andOut[1],notSel[1],sel[0],w[1]);
    and gA2(andOut[2],sel[1],notSel[0],w[2]);
    and gA3(andOut[3],sel[1],sel[0],w[3]);
    or gO0(y,andOut[0],andOut[1],andOut[2],andOut[3]);

endmodule