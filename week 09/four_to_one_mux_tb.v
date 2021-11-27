`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/11/04 17:01:10
Module Name: four_to_one_mux
*/

module four_to_one_mux_tb;

reg aa, bb, cc, dd, ss0, ss1;
wire f;

four_to_one_mux u_four_to_one_mux (
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .s0(ss0),
    .s1(ss1),
    .f(f)
);

initial aa = 0'b0;
initial bb = 0'b0;
initial cc = 0'b0;
initial dd = 0'b0;
initial ss0 = 0'b0;
initial ss1 = 0'b0;

always ss1 = #800 ~ss1;
always ss0 = #400 ~ss0;
always aa = #200 ~aa;
always bb = #100 ~bb;
always cc = #50 ~cc;
always dd = #25 ~dd;

initial begin
#4000
$finish;
end

endmodule