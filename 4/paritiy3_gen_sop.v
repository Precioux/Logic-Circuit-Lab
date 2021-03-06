/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : masoud
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Paritiy Generator Sum of Products
---  Description: Lab 04 Part 4
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module paritiy3_gen_sop (
	input a,
	input b,
	input c,
	output f	
);
	/* write your code here */
	wire notA, notB, notC, and1,and2,and3,and4;
    not gNA(notA,a);
    not gNB(notB,b);
    not gNC(notC,c);
    and gA1(and1,notA,notB,notC);
    and gA2(and2,notA,b,c);
    and gA3(and3,a,notB,c);
    and gA4(and4,a,b,notC);
    or gO1(f,and1,and2,and3,and4);
	/* write your code here */

endmodule