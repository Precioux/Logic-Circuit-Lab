`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:08 04/26/2021 
// Design Name: 
// Module Name:    encoder4x2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1 ns/1 ns
module tb_encoder2x4 ();



reg [3:0] din;
wire [1:0] qout;
	encoder4x2 test_encoder4x2 (.din(din), .qout(qout));


	initial 
		begin
		
		din <= 4'b0000;
		# 10 ;
		din <= 4'b0001;
		# 10 ;
		din <= 4'b0010;
		# 10 ;
		din <= 4'b0011;
		# 10 ;
		din <= 4'b0100;
		# 10 ;
		din <= 4'b0101;
		# 10 ;
		din <= 4'b0110;
		# 10 ;
		din <= 4'b0111;
		# 10 ;
		din <= 4'b1000;
		# 10 ;
		din <= 4'b1001;
		# 10 ;
		din <= 4'b1010;
		# 10 ;
		din <= 4'b1011;
		# 10 ;
		din <= 4'b1100;
		# 10 ;
		din <= 4'b1101;
		# 10 ;
		din <= 4'b1110;
		# 10 ;
		din <= 4'b1111;
		# 10 ;		
	end

endmodule

module encoder4x2 (
	input [3:0] din ,
	output [1:0] qout	
);
	
wire not_d2,and_d1d2;
not n1(not_d2,din[2]);
and a1(and_d1d2,not_d2,din[1]);
and a2(qout[1],din[3],din[2]);
and a3(qout[0],din[3],and_d1d2);


endmodule
