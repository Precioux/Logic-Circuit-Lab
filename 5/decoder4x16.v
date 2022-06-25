`timescale 1ns / 1ps
  
/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9839039
--  Student Name: Samin Mahdipour
--  Student Mail: Uni.mahdipour
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Decoder 4 to 16
---  Description: Lab 05 Part 2
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module tb_decoder4x16 ();

reg [3:0] in;
reg en;
wire [15:0] dout;

	decoder4x16 test_decoder4x16 (.in(in), .en(en), .dout(dout));


	initial 
		begin
		en <= 1'b0;
		
		in <= 4'b0000;
		# 10 ;
		in <= 4'b0001;
		# 10 ;
		in <= 4'b0010;
		# 10 ;
		in <= 4'b0011;
		# 10 ;
		in <= 4'b0100;
		# 10 ;
		in <= 4'b0101;
		# 10 ;
		in <= 4'b0110;
		# 10 ;
		in <= 4'b0111;
		# 10 ;
		in <= 4'b1000;
		# 10 ;
		in <= 4'b1001;
		# 10 ;
		in <= 4'b1010;
		# 10 ;
		in <= 4'b1011;
		# 10 ;
		in <= 4'b1100;
		# 10 ;
		in <= 4'b1101;
		# 10 ;
		in <= 4'b1110;
		# 10 ;
		in <= 4'b1111;
		# 20 ;

		en <= 1'b1;
		
		in <= 4'b0000;
		# 10 ;
		in <= 4'b0001;
		# 10 ;
		in <= 4'b0010;
		# 10 ;
		in <= 4'b0011;
		# 10 ;
		in <= 4'b0100;
		# 10 ;
		in <= 4'b0101;
		# 10 ;
		in <= 4'b0110;
		# 10 ;
		in <= 4'b0111;
		# 10 ;
		in <= 4'b1000;
		# 10 ;
		in <= 4'b1001;
		# 10 ;
		in <= 4'b1010;
		# 10 ;
		in <= 4'b1011;
		# 10 ;
		in <= 4'b1100;
		# 10 ;
		in <= 4'b1101;
		# 10 ;
		in <= 4'b1110;
		# 10 ;
		in <= 4'b1111;
		# 20 ;		
	end

endmodule

module decoder4x16 (
input [3:0] in ,
input en ,
output [15:0] dout   
);
wire [3:0] Not_in;

not n0(Not_in[0],in[0]);
not n1(Not_in[1],in[1]);
not n2(Not_in[2],in[2]);
not n3(Not_in[3],in[3]);

and a1(dout[0],Not_in[0],Not_in[1],Not_in[2],Not_in[3]);  //0000
and a2(dout[1],in[0],Not_in[1],Not_in[2],Not_in[3]);      //0001
and a3(dout[2],Not_in[0],in[1],Not_in[2],Not_in[3]);      //0010
and a4(dout[3],in[0],in[1],Not_in[2],Not_in[3]);          //0011
and a5(dout[4],Not_in[0],Not_in[1],in[2],Not_in[3]);      //0100
and a6(dout[5],in[0],Not_in[1],in[2],Not_in[3]);          //0101
and a7(dout[6],Not_in[0],in[1],in[2],Not_in[3]);          //0110
and a8(dout[7],in[0],in[1],in[2],Not_in[3]);              //0111
and a9(dout[8],Not_in[0],Not_in[1],Not_in[2],in[3]);      //1000
and a10(dout[9],in[0],Not_in[1],Not_in[2],in[3]);         //1001
and a11(dout[10],Not_in[0],in[1],Not_in[2],in[3]);        //1010
and a12(dout[11],in[0],in[1],Not_in[2],in[3]);        //1011
and a13(dout[12],Not_in[0],Not_in[1],in[2],in[3]);         //1100
and a14(dout[13],in[0],Not_in[1],in[2],in[3]);            //1101
and a15(dout[14],Not_in[0],in[1],in[2],in[3]);            //1110
and a16(dout[15],in[0],in[1],in[2],in[3]);                //1111

endmodule
