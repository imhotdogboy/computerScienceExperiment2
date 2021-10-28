`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/07 15:27:48
Module Name: boolean_function_b
*/

module boolean_function_b(
    input a, b, c,
    output x, y
);

assign x = (~a & ~b) | ~c;
assign y = ~((a | b) & c);

endmodule