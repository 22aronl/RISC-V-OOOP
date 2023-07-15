`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2023 03:29:47 AM
// Design Name: 
// Module Name: alu
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


module alu(
    input clk,
    input [79:0] inOperation, input inValid,
    output [38:0] outData
    );

    
    //inOperation: [77:73] opcode, [72:70] opcodeB, [69:64] rob, [63:32] data1, [31:0] data2
    wire [4:0] opcode = inOperation[77:73];
    wire [2:0] opcodeB = inOperation[72:70];
    wire [1:0] opcodeC = inOperation[79:78];
    wire [5:0] rob_loc = inOperation[69:64];
    wire [31:0] data_rs1 = inOperation[63:32];
    wire [31:0] data_rs2 = inOperation[31:0];

    reg [31:0] opcodeC_4;

    always @(*) begin
        case(opcodeC)
            2'b00: opcodeC_4 = data_rs1 >>> data_rs2[4:0];
            2'b01: opcodeC_4 = data_rs1 >> data_rs2[4:0];
            default: opcodeC_4 = 32'b0;
        endcase
    end

    reg [31:0] opcodeB_4;
    always @(*) begin
        case(opcodeB) 
            3'b000: opcodeB_4 = data_rs1 + data_rs2;
            3'b001: opcodeB_4 = data_rs1 << data_rs2[4:0];
            3'b010: opcodeB_4 = ($signed(data_rs1) < $signed(data_rs2));
            3'b011: opcodeB_4 = data_rs1 < data_rs2;
            3'b100: opcodeB_4 = data_rs1 ^ data_rs2;
            3'b101: opcodeB_4 = opcodeC_4;
            3'b110: opcodeB_4 = data_rs1 | data_rs2;
            3'b111: opcodeB_4 = data_rs1 & data_rs2;
        endcase
    end

    reg [31:0] data;

    always @(*) begin
        case(opcode)
            5'b01101: data = data_rs2;
            5'b00101: data = data_rs1 + data_rs2;
            5'b00100: data = opcodeB_4;
            5'b01100: data = opcodeB_4;
            default: data = 32'b0; 
        endcase
    end
    
    // wire [31:0] data = (opcode == 5'b01101) ? data_rs2 : //this not too efficient, can directly place into ROB
    //                     (opcode == 5'b00101) ? data_rs1 + data_rs2 :
    //                     (opcode == 5'b00100) ? 
    //                         (opcodeB == 3'b000) ? data_rs1 + data_rs2 :
    //                         (opcodeB == 3'b010) ? ($signed(data_rs1) < $signed(data_rs2)) :
    //                         (opcodeB == 3'b011) ? data_rs1 < data_rs2 :
    //                         (opcodeB == 3'b100) ? data_rs1 ^ data_rs2 :
    //                         (opcodeB == 3'b110) ? data_rs1 | data_rs2 :
    //                         (opcodeB == 3'b111) ? data_rs1 & data_rs2 :
    //                         (opcodeB == 3'b001) ? data_rs1 << data_rs2[4:0] :
    //                         (opcodeB == 3'b101) ? data_rs2[11] == 1'b0 ? data_rs1 >>> data_rs2[4:0] :
    //                             data_rs1 >> data_rs2[4:0] : 1'b0 :
    //                      (opcode == 5'b01100) ? 
    //                          (opcodeB == 3'b000) ? (opcodeC == 2'b00) ? data_rs1 + data_rs2 : data_rs1 - data_rs2 :
    //                          (opcodeB == 3'b001) ? data_rs1 << data_rs2[4:0] :
    //                          (opcodeB == 3'b010) ? ($signed(data_rs1) < $signed(data_rs2)) :
    //                          (opcodeB == 3'b011) ? data_rs1 < data_rs2 :
    //                          (opcodeB == 3'b110) ? data_rs1 ^ data_rs2 :
    //                          (opcodeB == 3'b101) ? (opcodeC == 2'b00) ? data_rs1 >>> data_rs2 : data_rs1 >> data_rs2 :
    //                          (opcodeB == 3'b110) ? data_rs1 | data_rs2 :
    //                          (opcodeB == 3'b111) ? data_rs1 & data_rs2 : 1'b0 :
    //                      1'b0;
                         
    reg [5:0] d2_rob_loc = 6'b000000;                     
    reg [31:0] d2_data = 32'b0;
    reg d2_valid = 1'b0;
    
    assign outData = {d2_valid, d2_rob_loc, d2_data};
    
    always @(posedge clk) begin

        d2_valid <= inValid;
        d2_data <= data;
        d2_rob_loc <= rob_loc;
    end
                         
    
endmodule
