`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/11/04 15:41:56
Module Name: two_to_four_decoder
*/

module two_to_four_decoder_tb;

reg aa, bb;
wire d0, d1, d2, d3;

two_to_four_decoder u_two_to_four_decoder (
    .a(aa),
    .b(bb),
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3)
);

initial aa = 0'b0;
initial bb = 0'b0;

always aa = #100 ~aa;
always bb = #200 ~bb;

initial begin
#4000
$finish;
end

endmodule