`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/09/09 18:29:16
Module Name: buffer_gate
*/

module buffer_gate_tb;

reg aa;
wire y;

buffer_gate u_buffer_gate (
.a(aa),
.y(y)
);

initial aa = 1'b0;
always aa = #100 ~aa;

initial begin
#1000
$finish;
end

endmodule
