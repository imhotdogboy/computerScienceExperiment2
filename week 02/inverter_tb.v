`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/09/09 18:11:18
Module Name: inverter
*/

module inverter_tb;

reg aa;
wire y;

inverter u_inverter (
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
