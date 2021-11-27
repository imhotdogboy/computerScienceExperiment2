`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/11/04 17:11:02
Module Name: one_to_four_demux
*/

module one_to_four_demux_tb;

reg xx, ss0, ss1;
wire a, b, c, d;

one_to_four_demux u_one_to_four_demux_ (
    .x(xx),
    .s0(ss0),
    .s1(ss1),
    .a(a),
    .b(b),
    .c(c),
    .d(d)
);

initial xx = 0'b0;
initial ss0 = 0'b0;
initial ss1 = 0'b0;

always ss1 = #200 ~ss1;
always ss0 = #100 ~ss0;
always xx = #50 ~xx;

initial begin
#4000
$finish;
end

endmodule