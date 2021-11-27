`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/11/04 16:46:03
Module Name: four_to_one_mux
*/

module four_to_one_mux(
    input a, b, c, d, s0, s1,
    output f
);

assign f = (~s1 & ~s0 & a) | (~s1 & s0 & b) | (s1 & ~s0 & c) | (s1 & s0 & d);

endmodule