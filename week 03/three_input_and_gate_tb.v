`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/09/16 15:31:33
Module Name: three_input_and_gate
*/

module three_input_and_gate_tb;

reg aa, bb, cc;
wire x, y;
    
three_input_and_gate u_three_input_and_gate (
    .a(aa),
    .b(bb),
    .c(cc),
    .x(x),
    .y(y)
    );
    
initial aa = 0'b0;
initial bb = 0'b0;
initial cc = 0'b0;

always aa = #50 ~aa;
always bb = #100 ~bb;
always cc = #200 ~cc;

initial begin
#1000
$finish;
end

endmodule