`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/14 15:40:10
Module Name: bcd_code_converter
*/

module bcd_code_converter(
    input a, b, c, d,
    output w, x, y, z
);
    
assign w = (a & ~c) | (b & d) | (b & c);
assign x = (a & ~b) | (b & c) | (b & ~c & ~d);
assign y = (a & ~b) | (b & ~c & d) | (~a & ~b & c);
assign z = d;
    
endmodule