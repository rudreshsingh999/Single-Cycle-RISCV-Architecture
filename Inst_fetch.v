`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2020 04:42:22 PM
// Design Name: 
// Module Name: Instr_fetch
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


module Instr_fetch(
    input clk,
    input reset,
    output [31:0]Instr_Code
    );
    reg [31:0]PC;
    Inst_Memory im(PC, reset, Instr_Code);
    always @ (posedge clk, negedge reset)
    begin
        if(reset == 0)
            PC = 32'b0;
        else
            PC = PC + 4;
    end
endmodule
