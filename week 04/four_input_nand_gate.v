`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/09/30 15:12:10
Module Name: four_input_nand_gate
*/

module four_input_nand_gate(
    input a, b, c, d,
    output x, y, z
);
    
assign x = ~(a & b);
assign y = ~(x & c);
assign z = ~(y & d);
    
endmodule