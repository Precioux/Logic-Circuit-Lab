`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:02 06/07/2021 
// Design Name: 
// Module Name:    sq_circuit 
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

/////////////////////////////////////////////////
module sq_circuit (
	input rst ,
	input clk ,
	input a ,
	input b ,
	output y ,
	output z
);

	assign #20 d1 = a | (b & qb_2);
	assign #10 d2 = ~(d1 |qb_1);
	assign #20 z = (b & qb_2) | qb_1;
DFF f1(rst , clk , d1 , y , qb_1);
DFF f2(rst , clk , d2 , q_2 , qb_2);

endmodule