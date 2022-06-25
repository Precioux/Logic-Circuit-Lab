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
---  Module Name: FSM
---  Description: Lab 10 Part 2
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module fsm (
  input        rst , //request
  input        clk ,
  input        confirm ,
  input  [3:0] pass_data ,
  output       en_left ,
  output       en_right ,
  output [3:0] dout
);

  /* write your code here */
  reg [2:0] state;
  parameter init = 3'b000, active = 3'b001, request = 3'b101, trap = 3'b111;
  parameter password = 4'b0000;
  always @(posedge clk or negedge rst)
    begin
      if(~rst) state <= init;
      else
        case (state)
          init: 
            if(rst) state <= active;
          active: 
            if(confirm && pass_data == password) 
              state <= request;
          else if (confirm && ~(pass_data == 4'b000)) state <= trap;
          //request: 
          //if(confirm && (pass_data[0] == 1'b0)) begin en_left = 1'b0; en_right = 1'b1; end 
          //else if (confirm && (pass_data[0] == 1'b1)) begin en_left = 1'b1; en_right = 1'b0; end
        endcase
    end
  assign en_left = confirm&state[2]&(~state[1])&state[0]&pass_data[0];
  assign en_right = confirm&state[2]&(~state[1])&state[0]&(~pass_data[0]);
  assign dout = pass_data;
  /* write your code here */

endmodule
