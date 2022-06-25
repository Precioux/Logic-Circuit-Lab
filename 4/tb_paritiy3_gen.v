`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:49:39 04/19/2021
// Design Name:   paritiy3_gen_sop
// Module Name:   j:/LGC/LGC-4/tb_paritiy3_gen.v
// Project Name:  LGC-4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: paritiy3_gen_sop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_paritiy3 ();

reg a;
reg b;
reg c;
wire f_parity_gen;
wire f_parity_gen_sop;
	
	paritiy3_gen t_paritiy3_gen (
		.a(a),
		.b(b),
		.c(c),
		.f(f_parity_gen));

	paritiy3_gen_sop t_paritiy3_gen_sop (
		.a(a), 
		.b(b), 
		.c(c), 
		.f(f_parity_gen_sop));


	initial 
		begin
		a <= 1'b0;
		b <= 1'b0;
		c <= 1'b0;
		# 10;
		a <= 1'b0;
		b <= 1'b0;
		c <= 1'b1;
		# 10;
		a <= 1'b0;
		b <= 1'b1;
		c <= 1'b0;
		# 10;
		a <= 1'b0;
		b <= 1'b1;
		c <= 1'b1;
		# 10;
		a <= 1'b1;
		b <= 1'b0;
		c <= 1'b0;
		# 10;
		a <= 1'b1;
		b <= 1'b0;
		c <= 1'b1;
		# 10;
		a <= 1'b1;
		b <= 1'b1;
		c <= 1'b0;
		# 10;
		a <= 1'b1;
		b <= 1'b1;
		c <= 1'b1;
		# 10;
		$finish;
		
		// write your code here
		
	end

endmodule

