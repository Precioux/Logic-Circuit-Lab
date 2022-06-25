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
---  Module Name: System Testbench
---  Description: Lab 10 Part 4
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module tb_system ();

reg        rst ;
reg        clk ;
reg        confirm;
reg  [3:0] din ;
wire [3:0] dout_left ;
wire [3:0] dout_right ;

	system sys(rst, clk, confirm, din, dout_left, dout_right);
	
	initial
	begin
	clk = 1'b0;
	repeat(30)
	#10 clk=~clk;
	end
	
	initial 
		begin
		#8
		rst <= 1'b0;
		confirm <= 1'b0;
		#20;
		rst <=1'b1;
		#20;
		din <= 4'b0000;
		confirm <= 1'b1;
		#20;
		din <= 4'b1101;
		#20;
		din <= 4'b1100;
		#50;
		$finish;
		// write your code here	
	end
	

endmodule
