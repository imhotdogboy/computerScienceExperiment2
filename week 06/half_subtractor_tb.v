`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/14 15:22:59
Module Name: half_subtractor
*/

module half_subtractor_tb;

reg aa, bb;
wire d, bout;

half_subtractor u_half_subtractor (
    .a(aa),
    .bin(bb),
    .d(d),
    .bout(bout)
);

initial aa = 0'b0;
initial bb = 0'b0;

always aa = #50 ~aa;
always bb = #100 ~bb;

initial begin
#1000
$finish;
end

endmodule