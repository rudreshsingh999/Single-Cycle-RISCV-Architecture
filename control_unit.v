`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2020 06:48:00 PM
// Design Name: 
// Module Name: Control_Unit
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

module Control_Unit(
    input clk,
    input reset,
    output [31:0] wr2
    );
    wire [31:0] Instr_Code;
    wire [31:0] wr1;
    wire [31:0] reg_wr;
//    wire [31:0] wr2;
    wire [31:0] rd1;
    wire [31:0] rd2;
    wire [31:0]rd2o;
    wire [31:0] rd2f;
    Instr_fetch ife(clk, reset, Instr_Code);
    Register_file rf(reg_wr, Instr_Code[25:21], Instr_Code[20:16], Instr_Code[15:11], reset, rd1, rd2);
    Mux m2(Instr_Code[5], rd2o, rd2, rd2f);
    Sign_ext1 ex1(Instr_Code[10:6], rd2o);  
    Sign_ext2 ex2(Instr_Code[20:0], wr1);
    ALU alu(rd1, rd2f, {Instr_Code[5], Instr_Code[2:0]}, wr2);
    Mux m1(Instr_Code[31], wr2, wr1, reg_wr);
endmodule
