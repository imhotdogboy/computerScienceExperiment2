`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/07 15:42:06
Module Name: one_bit_comparator
*/

module one_bit_comparator(
    input a, b,
    output w, x, y, z
);

assign w = ~(a ^ b);
assign x = a ^ b;
assign y = a & ~b;
assign z = ~a & b;

endmodule