`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/28 16:53:50
Module Name: seven_segment_display
*/

module seven_segment_display_tb;

reg ww, xx, yy, zz;
wire a, b, c, d, e, f, g, dp, di;

seven_segment_display u_seven_segment_display (
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
    .dp(dp),
    .di(di)
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
#1000
$finish;
end

endmodule