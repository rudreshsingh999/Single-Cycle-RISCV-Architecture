`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2020 07:55:45 PM
// Design Name: 
// Module Name: Mux
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


module Mux(
    input sel,
    input [31:0]data1,
    input [31:0]data2,
    output reg [31:0] out
    );
    
    always @ (data1 or data2)
    begin
        if(sel == 0)
            out = data1;
        else
            out = data2;
    end
endmodule
