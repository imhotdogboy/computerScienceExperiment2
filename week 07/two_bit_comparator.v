`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/28 16:15:33
Module Name: two_bit_comparator
*/

module two_bit_comparator(
    input a, b, c, d,
    output x, y, z
);

assign x = (a & ~c & d) | (a & b & ~d) | (b & ~c & ~d) | (a & ~c & ~d);
assign y = (~a & b & ~c & d) | (a & b & c & d) | (a & ~b & c & ~d) | (~a & ~b & ~c & ~d);
assign z = (~a & b & c) | (~a & ~b & d) | (~a & ~b & c) | (~b & c & d);

endmodule