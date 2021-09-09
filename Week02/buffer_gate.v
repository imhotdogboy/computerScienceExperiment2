`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/09/09 18:27:37
Module Name: buffer_gate
*/

module buffer_gate(
    input a,
    output y
    );
    
    assign y = ~(~a);
endmodule
