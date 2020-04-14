`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2020 10:48:00 AM
// Design Name: 
// Module Name: Inst_Memory
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


module Inst_Memory(
    input [31:0]PC,
    input reset,
    output [31:0] Instr_Code
    );
    
    reg [7:0] Mem[35:0];
    
    assign Instr_Code = {Mem[PC+3], Mem[PC+2], Mem[PC+1], Mem[PC]};
    
    always @ (reset)
    begin
        if(reset == 0)
        begin
            Mem[3] = 8'hfc;
            Mem[2] = 8'h20;
            Mem[1] = 8'h00;
            Mem[0] = 8'h02;
            
            Mem[7] = 8'hfc;
            Mem[6] = 8'h00;
            Mem[5] = 8'h00;
            Mem[4] = 8'h03;
            
            Mem[11] = 8'hfc;
            Mem[10] = 8'h40;
            Mem[9] = 8'h00;
            Mem[8] = 8'h08;
            
            Mem[15] = 8'h00;
            Mem[14] = 8'h61;
            Mem[13] = 8'h10;
            Mem[12] = 8'h20;
            
            Mem[19] = 8'h00;
            Mem[18] = 8'h82;
            Mem[17] = 8'h00;
            Mem[16] = 8'h22;
            
            Mem[23] = 8'h01;
            Mem[22] = 8'h8d;
            Mem[21] = 8'h01;
            Mem[20] = 8'h40;
            
            Mem[27] = 8'h00;
            Mem[26] = 8'h01;
            Mem[25] = 8'h10;
            Mem[24] = 8'h20;
            
        end
    end
endmodule
