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
    input [31:0] instruct, input [31:0] pc, input [5:0] ROB_loc, input in_valid,
    output [11:0] out_rd, output [4:0] out_rs1, output [4:0] out_rs2,
    input [38:0] data_rs1, input [38:0] data_rs2,
    output [100:0] output_data, output [15:0] output_loc, output [31:0] output_pc
    ); //TODO: Add stall and flush and validity
    
    wire [4:0] opcode = instruct[6:2];
    wire [4:0] rd  = instruct[11:7];
    wire [2:0] opcodeB = instruct[14:12];
    wire [4:0] rs1 = instruct[19:15];
    wire [4:0] rs2 = instruct[24:20];
    wire [1:0] opcodeC = instruct[31:30];
    
    
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

    wire is_alu = is_lui | is_auipc | is_mimm | is_mreg;
    wire is_mem_unit = is_load | is_store;
    wire is_branch_unit = is_jal | is_jalr | is_branch;
    
    wire is_branch_store = is_branch | is_store;
    wire use_imm = is_lui | is_auipc | is_mimm | is_load | is_jal | is_jalr;
    wire [31:0] imm = is_lui ? {instruct[31:12], {12'b0}} :
                        is_auipc ? {instruct[31:12], {12'b0}} :
                        is_mimm ? {{21{instruct[31]}}, instruct[30:20]} :
                        is_load ? {{21{instruct[31]}}, instruct[30:20]} :
                        is_store ? {{21{instruct[31]}}, instruct[30:25], instruct[11:7]} :
                        is_jal ? {{12{instruct[31]}}, instruct[19:12], instruct[20], instruct[30:21], 1'b0} :
                        is_jalr ? {{21{instruct[31]}}, instruct[30:20]} :
                        is_branch ? {{21{instruct[31]}}, instruct[7], instruct[30:25], instruct[11:8]} :
                        is_mreg ? {{27{1'b0}}, instruct[31:27]} : 
                        32'b0;

    // [11:6] ROB_loc, [5:1] rd, [0] use_rd
    assign out_rd = {ROB_loc, rd, use_rd};
    assign out_rs1 = rs1;
    assign out_rs2 = rs2;

    // // // // // // // //
    //decode section 2 //
    // // // // // // // //

    reg [4:0] d2_opcode = 5'b11111; //fill with temp so no x's
    reg [4:0] d2_rd = 5'b11111;
    reg [2:0] d2_opcodeB = 3'b111;
    reg [4:0] d2_rs1 = 5'b11111;
    reg [4:0] d2_rs2 = 5'b11111;
    reg [31:0] d2_pc = 32'h11111111;
    reg [5:0] d2_ROB_loc = 6'b111111;
    reg [1:0] d2_opcodeC = 2'b00;
    reg d2_valid = 1'b0;

    reg d2_use_rd = 1'b0;
    reg d2_use_rs1 = 1'b0;
    reg d2_use_rs2 = 1'b0;
    reg d2_is_alu = 1'b0;
    reg d2_is_mem_unit = 1'b0;
    reg d2_is_branch_unit = 1'b0;
    reg [31:0] d2_imm = 32'h11111111;
    reg d2_use_imm = 1'b0;
    reg d2_is_branch_store = 1'b0;
    reg d2_is_mreg = 1'b0;
    reg d2_is_auipc = 1'b0;
    
    wire [31:0] d2_rs1_data = d2_is_auipc ? d2_pc : data_rs1[38:7];
    wire [31:0] d2_rs2_data = d2_use_imm ? d2_imm : data_rs2[38:7];
    //data_rs = [38:7] data, [6] busy, [5:0] rob_loc
    wire d2_rs1_look = d2_use_rs1 & data_rs1[6];
    wire d2_rs2_look = d2_use_rs2 & data_rs2[6];

    // [100:96] d2_rd, [95:94] d2_opcodeC, [93:89] d2_opcode, [88:86] d2_opcodeB, [85:80] d2_ROB_loc
    // [79:48] d2_rs1_data, [47] d2_rs1_busy, [46:41] d2_rs1_loc, [40:9] d2_rs2_data, [8] d2_rs2_busy, [7:2] d2_rs2_loc
    // [1] d2_rs1_look, [0] d2_rs2_look 
    
    assign output_data = {d2_rd, d2_opcodeC, d2_opcode, d2_opcodeB, d2_ROB_loc, d2_rs1_data, data_rs1[6:0], d2_rs2_data, data_rs2[6:0], d2_rs1_look, d2_rs2_look};
    
    // [15] d2_valid, [14] d2_is_alu, [13] d2_is_mem, [12] d2_is_branch, [11:0] d2_imm
    assign output_loc = {d2_valid, d2_is_alu, d2_is_mem_unit, d2_is_branch_unit, d2_imm[11:0]};
    assign output_pc = d2_pc;

    always @(posedge clk) begin
        d2_opcode <= opcode;
        d2_rd <= rd;
        d2_opcodeB <= opcodeB;
        d2_rs1 <= rs1;
        d2_rs2 <= rs2;
        d2_pc <= pc;
        d2_ROB_loc <= ROB_loc;
        d2_opcodeC <= opcodeC;
        d2_valid <= in_valid;

        d2_is_alu <= in_valid && is_alu;
        d2_is_mem_unit <= in_valid && is_mem_unit;
        d2_is_branch_unit <= in_valid && is_branch_unit;
        d2_use_rd <= use_rd;
        d2_use_rs1 <= use_rs1;
        d2_use_rs2 <= use_rs2;
        d2_imm <= imm;
        d2_use_imm <= use_imm;
        d2_is_branch_store <= is_branch_store;
        d2_is_mreg <= is_mreg;
        d2_is_auipc <= is_auipc;
    end
    
endmodule
