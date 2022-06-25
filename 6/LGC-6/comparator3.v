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
---  Module Name: 3 Bits Comparator Gate Level
---  Description: Lab 06 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module comparator3 (
	input [2:0] A ,
	input [2:0] B ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output et ,
	output gt
);
	
	assign et = (A[0]~^B[0])&&(A[1]~^B[1])&&(A[2]~^B[2])&&e;
	assign gt = (A[2]&&(~B[2]))|
	            ((A[2]~^B[2])&&A[1]&&(~B[1]))|
	            ((A[1]~^B[1])&&(A[2]~^B[2])&&A[0]&&(~B[0]))|
	            ((A[0]~^B[0])&&(A[1]~^B[1])&&(A[2]~^B[2])&&g);
					
	assign lt = (B[2]&&(~A[2]))|
	            ((B[2]~^A[2])&&B[1]&&(~A[1]))|
	            ((B[1]~^A[1])&&(B[2]~^A[2])&&B[0]&&(~A[0]))|
	            ((B[0]~^A[0])&&(B[1]~^A[1])&&(B[2]~^A[2])&&l);
endmodule