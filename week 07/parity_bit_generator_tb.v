`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/28 15:44:51
Module Name: parity_bit_generator
*/

module parity_bit_generator_tb;

reg aa, bb, cc, dd;
wire p;

parity_bit_generator u_parity_bit_generator (
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .p(p)
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
#1000
$finish;
end

endmodule