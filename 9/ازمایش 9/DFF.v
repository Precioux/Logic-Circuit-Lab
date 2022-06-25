`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:54 06/07/2021 
// Design Name: 
// Module Name:    DFF 
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


/////////////////////////////////////////////////////
module DFF(
	input rst ,
	input clk ,
	input din ,
	output Q ,
	output Qb
);
   reg Q;
	reg Qb;
   always @(negedge clk or posedge rst) 
	begin
     if (rst == 1) Q = 1'b0;   
     else #5
	     Q = din;
	    Qb = ~Q;
	end 
endmodule 


