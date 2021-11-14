`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/14 15:22:23
Module Name: half_subtractor
*/

module half_subtractor(
    input a, bin,
    output d, bout
);

assign d = a ^ bin;
assign bout = ~a & bin;

endmodule 