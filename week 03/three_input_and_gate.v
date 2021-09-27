`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/09/16 15:28:50
Module Name: three_input_and_gate
*/

module three_input_and_gate(
    input a, b, c,
    output x, y
    );
    
    assign x = a & b;
    assign y = x & c;
    
endmodule