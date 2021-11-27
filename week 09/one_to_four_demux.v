`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/11/04 17:08:36
Module Name: one_to_four_demux
*/

module one_to_four_demux(
    input x, s0, s1,
    output a, b, c, d
);

assign a = ~s0 & ~s1 & x;
assign b = s0 & ~s1 & x;
assign c = ~s0 & s1 & x;
assign d = s0 & s1 & x;

endmodule