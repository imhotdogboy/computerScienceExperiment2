`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/14 15:16:21
Module Name: full_adder
*/

module full_adder(
    input a, b, cin,
    output s, cout
);

assign s = a ^ b ^ cin;
assign cout = (a & b) | (cin & (a ^ b));

endmodule