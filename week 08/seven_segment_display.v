`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/28 16:27:23
Module Name: seven_segment_display
*/

module seven_segment_display(
    input w, x, y, z,
    output a, b, c, d, e, f, g, dp, di
);

assign dp = 1;
assign di = 1;
assign a = (~w & x & z) | (w & x & ~z) | (w & ~x & ~y) | (~w & y & z) | (x & y) | (~x & ~z);
assign b = (w & ~y & z) | (~w & y & z) | (~w & ~y & ~z) | (~w & ~x) | (~x & ~z);
assign c = (~w & z) | (~w & ~y & ~z) | (w & ~x) | (~y & z) | (~w & x);
assign d = (x & ~y & z) | (~x & y & z) | (x & y & ~z) | (~w & ~x & ~z) | (w & ~y & ~z);
assign e = (w & x) | (y & ~z) | (w & ~x & y) | (~x & ~z);
assign f = (w & ~x) | (~y & ~z) | (w & y) | (x & ~z) | (~w & x & ~y);
assign g = (y & ~z) | (w & ~x) | (w & z) | (~x & y) | (~w & x & ~y);

endmodule