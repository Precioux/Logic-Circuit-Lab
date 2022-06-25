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
---  Module Name: 8 Bit Comparator Testbench
---  Description: Lab 06 Part 2 Testbench
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module tb_comparator8 ();

reg [7:0] A;
reg [7:0] B;
reg l;
reg e;
reg g;
wire lt;
wire et;
wire gt;

	comparator8 test_comparator8 (.A(A), .B(B), .l(l), .e(e), .g(g), .lt(lt), .et(et), .gt(gt));


	initial 
		begin
		A = 8'b0010000;
		B = 8'b0010000;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20 ;
		//////////////////
		A = 8'b0010000;
		B = 8'b0100000;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20;
		//////////////////
		A = 8'b0100000;
		B = 8'b0010000;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20;
		$finish;
		// write your code here
		
	end

endmodule