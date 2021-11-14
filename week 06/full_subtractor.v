`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/14 15:28:49
Module Name: full_subtractor
*/

module full_subtractor(
    input a, b, bin,
    output d, bout
);

assign d = a ^ b ^ bin;
assign bout = (~(a ^ b) & bin) | (~a & b);

endmodule