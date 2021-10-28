`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/07 15:42:42
Module Name: one_bit_comparator
*/

module one_bit_comparator_tb;

reg aa, bb;
wire w, x, y, z;

one_bit_comparator u_one_bit_comparator (
    .a(aa),
    .b(bb),
    .w(w),
    .x(x),
    .y(y),
    .z(z)
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