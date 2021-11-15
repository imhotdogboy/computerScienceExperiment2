`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/28 16:00:16
Module Name: parity_bit_checker
*/

module parity_bit_checker_tb;

reg aa, bb, cc, dd, pp;
wire e;

parity_bit_checker u_parity_bit_checker (
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .p(pp),
    .e(e)
);

initial aa = 0'b0;
initial bb = 0'b0;
initial cc = 0'b0;
initial dd = 0'b0;
initial pp = 0'b0;

always aa = #400 ~aa;
always bb = #200 ~bb;
always cc = #100 ~cc;
always dd = #50 ~dd;
always pp = #25 ~pp;

initial begin
#4000
$finish;
end

endmodule