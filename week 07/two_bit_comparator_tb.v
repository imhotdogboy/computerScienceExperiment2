`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/28 16:16:12
Module Name: two_bit_comparator
*/

module two_bit_comparator_tb;

reg aa, bb, cc, dd;
wire x, y, z;

two_bit_comparator u_two_bit_comparator (
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .x(x),
    .y(y),
    .z(z)
);

initial aa = 0'b0;
initial bb = 0'b0;
initial cc = 0'b0;
initial dd = 0'b0;

always aa = #400 ~aa;
always bb = #200 ~bb;
always cc = #100 ~cc;
always dd = #50 ~dd;

initial begin
#1000
$finish;
end

endmodule