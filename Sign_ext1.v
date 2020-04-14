`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2020 05:45:49 PM
// Design Name: 
// Module Name: Sign_ext1
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


module Sign_ext1(
    input [4:0] inp,
    output [31:0] out
    );
    assign out = {27'b0, inp};
endmodule
