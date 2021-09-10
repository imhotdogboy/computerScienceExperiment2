`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/09/09 18:07:24
Module Name: inverter
*/

module inverter(
    input a,
    output y
    );
    
    assign y = ~a;
endmodule
