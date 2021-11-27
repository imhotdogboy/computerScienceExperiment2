`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/11/04 15:41:20
Module Name: two_to_four_decoder
*/

module two_to_four_decoder(
    input a, b,
    output d0, d1, d2, d3
);

assign d0 = ~a & ~b;
assign d1 = ~a & b;
assign d2 = a & ~b;
assign d3 = a & b;

endmodule