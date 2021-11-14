`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/14 15:17:37
Module Name: full_adder
*/

module full_adder_tb;

reg aa, bb, cin;
wire s, cout;

full_adder u_full_adder (
    .a(aa),
    .b(bb),
    .cin(cin),
    .s(s),
    .cout(cout)
);

initial aa = 0'b0;
initial bb = 0'b0;
initial cin = 0'b0;

always aa = #50 ~aa;
always bb = #100 ~bb;
always cin = #200 ~cin;

initial begin
#1000
$finish;
end

endmodule