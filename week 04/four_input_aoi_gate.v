`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/09/30 15:41:16
Module Name: four_input_aoi_gate
*/

module four_input_aoi_gate(
    input a, b, c, d,
    output x, y, z
);

assign x = a & b;
assign y = c & d;
assign z = ~(x | y);

endmodule