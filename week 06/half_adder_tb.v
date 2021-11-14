`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/14 15:08:03
Module Name: half_adder
*/

module half_adder_tb;

reg aa, bb;
wire s, c;

half_adder u_half_adder (
    .a(aa),
    .b(bb),
    .s(s),
    .c(c)
);

initial aa = 0'b0;
initial bb = 0'b0;

always aa = #50 ~aa;
always bb = #100 ~bb;

initial begin
#1000
$finish;
end

endmodule