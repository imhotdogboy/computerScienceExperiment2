`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/10/14 15:58:16
Module Name: bcd_code_converter
*/

module bcd_code_converter_tb;

reg aa, bb, cc, dd;
wire w, x, y, z;

bcd_code_converter u_bcd_code_converter (
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .w(w),
    .x(x),
    .y(y),
    .z(z)
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