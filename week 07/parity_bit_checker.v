`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/28 15:59:57
Module Name: parity_bit_checker
*/

module parity_bit_checker(
    input a, b, c, d, p,
    output e
);

assign e = a ^ b ^ c ^ d ^ p;

endmodule