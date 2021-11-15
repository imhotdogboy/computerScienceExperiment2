`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/28 15:35:09
Module Name: parity_bit_generator
*/

module parity_bit_generator(
    input a, b, c, d,
    output p
);

assign p = (~a & b & c & d) | (~a & b & ~c & ~d) | (a & b & ~c & d) | (a & b & c & ~d) | (a & ~b & c & d) | (a & ~b & ~c & ~d) | (~a & ~b & ~c & d) | (~a & ~b & c & ~d);

endmodule