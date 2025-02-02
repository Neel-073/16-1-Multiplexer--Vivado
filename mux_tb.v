`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2024 17:04:48
// Design Name: 
// Module Name: mux_tb
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


module mux_tb();

reg [15:0]A;
reg [3:0]B;
wire F;
mux_16to1 tb(.in(A),.sel(B),.out(F));
initial
    begin
        A=16'b1010101010101010;
        #50 B=4'b0000;//1
        #50 B=4'b0001;//2
        #50 B=4'b0010;//3
        #50 B=4'b0011;//4
        #50 B=4'b0100;//5
        #50 B=4'b0101;//6
        #50 B=4'b0110;//7
        #50 B=4'b0111;//8
        #50 B=4'b1000;//9
        #50 B=4'b1001;//10
        #50 B=4'b1010;//11
        #50 B=4'b1011;//12
        #50 B=4'b1100;//13
        #50 B=4'b1101;//14
        #50 B=4'b1110;//15
        #50 B=4'b1111;//16
     
    end
endmodule
