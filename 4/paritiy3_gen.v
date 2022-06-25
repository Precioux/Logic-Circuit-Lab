/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9833016
--  Student Name: Amirhossen Poolad
--  Student Mail: amir.poolad@aut.ac.ir
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Paritiy Generator
---  Description: Lab 04 Part 2
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module paritiy3_gen (
	input a,
	input b,
	input c,
	output f	
);
	/* write your code here */
	xnor gXN1(f,a,b,c);
	/* write your code here */

endmodule