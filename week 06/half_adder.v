`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/14 15:07:26
Module Name: half_adder
*/

module half_adder(
    input a, b,
    output s, c
);

assign s = a ^ b;
assign c = a & b;

endmodule 