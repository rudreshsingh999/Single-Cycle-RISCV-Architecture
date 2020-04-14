`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2020 08:35:22 PM
// Design Name: 
// Module Name: Control_tb
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


module Control_tb;
    reg clk;
    reg reset;
    
    wire [31:0] wr2;
    Control_Unit ut(clk, reset, wr2);
    
    initial
    begin
        clk = 0;
        reset = 0;
        #10 reset = 1;
        #500
        $finish;
    end
    
    always
        #15 clk = ~clk;
endmodule
