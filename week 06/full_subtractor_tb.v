`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/14 15:29:49
Module Name: full_subtractor
*/

module full_subtractor_tb;

reg aa, bb, bin;
wire d, bout;

full_subtractor u_full_subtractor (
    .a(aa),
    .b(bb),
    .bin(bin),
    .d(d),
    .bout(bout)
);

initial aa = 0'b0;
initial bb = 0'b0;
initial bin = 0'b0;

always aa = #50 ~aa;
always bb = #100 ~bb;
always bin = #200 ~bin;

initial begin
#1000
$finish;
end

endmodule