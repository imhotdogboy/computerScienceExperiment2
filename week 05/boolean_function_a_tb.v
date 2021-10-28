`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/07 15:22:01
Module Name: boolean_function_a
*/

module boolean_function_a_tb;

reg aa, bb, cc;
wire x, y;

boolean_function_a u_boolean_function_a (
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