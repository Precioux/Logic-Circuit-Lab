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
---  Module Name: Arithmetic and Logic Unit
---  Description: Lab 08
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module alu (
	input [1:0] A ,
	input [1:0] B ,
	input [1:0]	sel ,
	output [3:0] Y
);

	/* write your code here */
	wire [3:0] _sum,_multiply,_nand,_notA;
	assign {_sum[3],_sum[2:0]} = A + B;
	//assign _multiply = A&{B[0],B[0]} + {A&{B[1],B[1]},1'b0};
	wire c1;
	assign _multiply[0] = A[0]&B[0];
	assign _multiply[1] = (A[0]&B[1])^(A[1]&B[0]);
	assign c1 = (A[0]&B[1])&(A[1]&B[0]);
	assign _multiply[2] = c1^(A[1]&B[1]);
	assign _multiply[3] = c1&(A[1]&B[1]);
	assign _nand = {2'b00,~(A&B)};
	assign _notA = {A,~A};
	multiplexer4x4 mux(_multiply,_sum,_nand,_notA,sel,Y);
	/* write your code here */

	// use multiplexer4x4 here
endmodule