`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/11/04 16:33:05
Module Name: bcd_to_decimal
*/

module bcd_to_decimal_tb;

reg ww, xx, yy, zz;
wire a, b, c, d, e, f, g, h, i;

bcd_to_decimal u_bcd_to_decimal (
    .w(ww),
    .x(xx),
    .y(yy),
    .z(zz),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g),
    .h(h),
    .i(i)
);

initial ww = 0'b0;
initial xx = 0'b0;
initial yy = 0'b0;
initial zz = 0'b0;

always ww = #400 ~ww;
always xx = #200 ~xx;
always yy = #100 ~yy;
always zz = #50 ~zz;

initial begin
#4000
$finish;
end

endmodule