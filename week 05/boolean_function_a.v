`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/07 15:14:36
Module Name: boolean_function_a
*/

module boolean_function_a(
    input a, b, c,
    output x, y
);

assign x = (~a | ~b) & ~c;
assign y = ~((a & b) | c);

endmodule 