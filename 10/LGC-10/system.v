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
---  Module Name: Sequential System
---  Description: Lab 10 Part 3
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module system (
	input        rst ,
	input        clk ,
	input        confirm,
	input  [3:0] din ,
	output [3:0] dout_left ,
	output [3:0] dout_right
);

	/* write your code here */
	wire       en_left;
	wire       en_right;
	wire [3:0] dout;
	fsm state_machine(rst,clk,confirm,din,en_left,en_right,dout);
	register l_reg(rst,clk,en_left,dout,dout_left);
	register r_reg(rst,clk,en_right,dout,dout_right);
	/* write your code here */

endmodule
