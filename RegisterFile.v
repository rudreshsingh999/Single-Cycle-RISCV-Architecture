`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2020 06:02:29 PM
// Design Name: 
// Module Name: Register_file
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


module Register_file(
    input [31:0] wr_data,
    input [4:0] wr_reg,
    input [4:0] rd_reg1,
    input [4:0] rd_reg2,
    input reset,
    output reg [31:0] rd_data1,
    output reg [31:0] rd_data2
    );
    reg [31:0] Mem[31:0];
    always @ (wr_data or wr_reg)
        Mem[wr_reg] = wr_data;
        
    always @ (rd_reg1 or rd_reg2)
    begin
        rd_data1 = Mem[rd_reg1];
        rd_data2 = Mem[rd_reg2];
    end
    
    
    
    always @ (reset)
    begin
        if(reset == 0)
        begin
            Mem[3] = 0;
            Mem[2] = 0;
            Mem[1] = 0;
            Mem[0] = 0;
            
            Mem[4] = 0;
            Mem[5] = 0;
            Mem[6] = 0;
            Mem[7] = 0;
            
            Mem[8] = 0;
            Mem[9] = 0;
            Mem[10] = 0;
            Mem[11] = 0;
        end
    end    
    
endmodule
