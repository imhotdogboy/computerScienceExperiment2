`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/11/04 16:00:53
Module Name: four_to_two_encoder
*/

module four_to_two_encoder(
    input a, b, c, d,
    output e0, e1
);

assign e0 = a | c;
assign e1 = a | b;

endmodule