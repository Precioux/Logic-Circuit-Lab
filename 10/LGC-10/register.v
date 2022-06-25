/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9833016              9839039
--  Student Name: Amirhossein Poolad & Samin Mahdipour
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Register 4 bit
---  Description: Lab 10 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module register (

	input        rst ,
	input        clk ,
	input        en ,
	input  [3:0] din ,
	output reg [3:0] qout
);
	/* write your code here */
	always @(posedge clk)
		if (~rst)
			qout = 4'b0000;
		else if (en)
			qout = din;
	/* write your code here */

endmodule
