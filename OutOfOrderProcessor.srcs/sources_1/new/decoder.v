`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2023 02:36:55 AM
// Design Name: 
// Module Name: decoder
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


module decoder(
    input clk,
    input [31:0] instruct, input [31:0] pc, input [5:0] ROB_loc,
    output [11:0] out_rd, output [4:0] out_rs1, output [4:0] out_rs2,
    input [38:0] data_rs1, input [38:0] data_rs2
    );
    
    wire [6:2] opcode = instruct[6:2];
    wire [4:0] rd  = instruct[11:7];
    wire [2:0] opcodeB = instruct[14:12];
    wire [4:0] rs1 = instruct[19:15];
    wire [4:0] rs2 = instruct[24:20];
    
    
    //01101 family: lui
    wire is_lui = (opcode == 5'b01101);
    //00101 family: auipc
    wire is_auipc = (opcode == 5'b00101);
    //00100 family: mimm -> addi, slti, sltiu, xori, ori, andi, slli, srli, srai, 
    wire is_mimm = (opcode == 5'b00100);
    //01100 family: mreg -> add, sub, sll, slt, sltu, xor, srl, or, and, 
    wire is_mreg = (opcode == 5'b01100);
    //00011 family: interaction between modes (ignore for now) -> fence, fence.i, 
    //11100 family: csr registers (ignore for now) -> csrrw, csrrs, csrrc, csrrwi, csrrsi, csrrci, ecall, ebreak, uret, sret, mret, wfi, sfence.vma
    //00000 family: load -> lb, lh, lw, lbu, lhu
    wire is_load = (opcode == 5'b00000);
    //01000 family: store -> sb, sh, sw
    wire is_store = (opcode == 5'b01000);
    //11011 family: jal
    wire is_jal = (opcode == 5'b11011);
    //11001 family: jalr
    wire is_jalr = (opcode == 5'b11001);
    //11000 family: branch -> beq, bne, blt, bge, bltu, bgeu
    wire is_branch = (opcode == 5'b11000);
    
    wire use_rd = is_lui | is_auipc | is_mimm | is_mreg | is_load | is_jal | is_jalr;
    wire use_rs1 = is_mimm | is_mreg | is_load | is_store | is_jalr | is_branch;
    wire use_rs2 = is_mreg | is_store | is_branch;
    
    assign out_rd = {ROB_loc, rd, use_rd};
    assign out_rs1 = rs1;
    assign out_rs2 = rs2;
    
endmodule
