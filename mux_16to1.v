`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2024 17:00:33
// Design Name: 
// Module Name: mux_16to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module mux_2to1(in,sel,out);
input[1:0]in;
input sel;
output out;
wire t1,t2,t3;
not G0(t1,sel);
and G1(t2,in[0],t1);
and G2(t3,in[1],sel);
or G3(out,t2,t3);
endmodule

module mux_4to1(in,sel,out);
input [3:0]in;
input[1:0]sel;
output out;
wire[1:0] t;
mux_2to1 mo(in[1:0],sel[0],t[0]);
mux_2to1 m1(in[3:2],sel[0],t[1]);
mux_2to1 m2(t,sel[1],out);
endmodule

module mux_16to1(in,sel,out);
input [15:0]in;
input [3:0]sel;
output out;
wire[3:0] t;
mux_4to1 mo(in[3:0],sel[1:0],t[0]);
mux_4to1 m1(in[7:4],sel[1:0],t[1]);
mux_4to1 m2(in[11:8],sel[1:0],t[2]);
mux_4to1 m3(in[15:12],sel[1:0],t[3]);
mux_4to1 m4(t,sel[3:2],out);
endmodule
