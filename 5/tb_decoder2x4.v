//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:30 04/26/2021 
// Design Name: 
// Module Name:    tb_decoder2x4 
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


module tb_decoder2x4 ();

reg [1:0] in;
reg en;
wire [3:0] dout;

	decoder2x4 test_decoder2x4 (.in(in), .en(en), .dout(dout));


	initial 
		begin
		en <= 1'b0;
		
		in <= 2'b00;
		# 10 ;
		in <= 2'b01;
		# 10 ;
		in <= 2'b10;
		# 10 ;
		in <= 2'b11;
		# 20 ;

		en <= 1'b1;
		
		in <= 2'b00;
		# 10 ;
		in <= 2'b01;
		# 10 ;
		in <= 2'b10;
		# 10 ;
		in <= 2'b11;
		# 20 ;
		$finish;
	end

endmodule