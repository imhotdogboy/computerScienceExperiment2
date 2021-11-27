`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/11/04 16:01:07
Module Name: four_to_two_encoder
*/

module four_to_two_encoder_tb;

reg aa, bb, cc, dd;
wire e0, e1;

four_to_two_encoder u_four_to_two_encoder (
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .e0(e0),
    .e1(e1)
);

initial aa = 0'b0;
initial bb = 0'b0;
initial cc = 0'b0;
initial dd = 0'b0;

always aa = #400 ~aa;
always bb = #200 ~bb;
always cc = #100 ~cc;
always dd = #50 ~dd;

initial begin
#4000
$finish;
end

endmodule