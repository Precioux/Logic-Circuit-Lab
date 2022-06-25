/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9839039
--  Student Name: samin mahdipour
--  Student Mail: uni.mahdipour@gmail.com
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name:  Multiplexer Testbench
---  Description: Lab 05 Part 1 Testbench
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module tb_multiplexer ();

reg [3:0] w;
reg[1:0] sel;
wire  y;
	
	multiplexer4x1 test_multiplexer4x1 (.w(w), .sel(sel), .y(y));


	initial 
		begin
		sel <= 2'b00;
		w <= 4'b0000;
		# 10 ;
		w <= 4'b0001;
		# 10 ;
		w <= 4'b0010;
		sel <= 2'b01;
		# 10 ;
		w <= 4'b0011;
		# 10 ;
		w <= 4'b0100;
		# 10 ;
		w <= 4'b0101;
		sel <= 2'b11;
		# 10 ;
		w <= 4'b0110;
		# 10 ;
		w <= 4'b0111;
		# 10 ;
		w <= 4'b1000;
		# 10 ;
		w <= 4'b1001;
		sel <= 2'b01;
		# 10 ;
		w <= 4'b1010;
		# 10 ;
		w <= 4'b1011;
		# 10 ;
		w <= 4'b1100;
		sel <= 2'b11;
		# 10 ;
		w <= 4'b1101;
		# 10 ;
		sel <= 2'b00;
		w <= 4'b1110;
		# 10 ;
		w <= 4'b1111;
		# 10 ;
	end

endmodule

module multiplexer4x1 (
	input [3:0] w ,
	input [1:0]	sel ,
	output  y
);
wire [1:0] not_sel;
wire [3:0] And_w;
not n1(not_sel[1],sel[1]);
not n2(not_sel[0],sel[0]);
and b0(And_w[0],not_sel[1],not_sel[0],w[0]);
and b1(And_w[1],not_sel[1],sel[0],w[1]);
and b2(And_w[2],sel[1],not_sel[0],w[2]);
and b3(And_w[3],sel[1],sel[0],w[3]);
or c1(y,And_w[0],And_w[1],And_w[2],And_w[3]);

endmodule
