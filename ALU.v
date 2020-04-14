`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2020 05:32:35 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] inp1,
    input [31:0] inp2,
    input [3:0] ctrl,
    output reg [31:0] out1
    );
    always @ (inp1 or inp2 or ctrl)
    begin
        case (ctrl)
            4'b1000: out1 = inp1 + inp2;
            4'b1010: out1 = inp1 - inp2;
            4'b1100: out1 = inp1 & inp2;
            4'b1101: out1 = inp1 | inp2;
            4'b0000: out1 = inp1 << inp2;
            4'b0010: out1 = inp1 >> inp2;   
        endcase
    end


endmodule
