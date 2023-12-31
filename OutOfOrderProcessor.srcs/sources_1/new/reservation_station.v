`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 07:01:34 PM
// Design Name: 
// Module Name: reservation_station
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


module reservation_station
    #(  parameter R_SIZE = 4,
        parameter LOG_R = 2)
    (
    input clk, input flush, 
    input [38:0] forwardA, input [38:0] forwardB, input [38:0] forwardC, input [38:0] forwardD,
    input [96:0] inOperation, output operationUsed, output [79:0] outOperation, output outOperationValid 
    );
    
    reg [96:0] operation [0 : R_SIZE - 1];
    reg [R_SIZE - 1 : 0] committed;
    wire [R_SIZE - 1 : 0] check;
    
    genvar j;
    generate
        for(j = 0; j < R_SIZE; j = j + 1) begin
            assign check[j] = committed[j] & operation[j][1:0] == 2'b00;
        end
    endgenerate
    
    assign operationUsed = (!committed[0]) | (!committed[1]) | (!committed[2]) | (!committed[3]);// | (!committed[4]); | 
                            //(!committed[5]) | (!committed[6]) | (!committed[7]);
    assign outOperationValid = check > 0;
    
    wire [LOG_R - 1 : 0] commit_loc = (!committed[0]) ? 0 : (!committed[1]) ? 1 : (!committed[2]) ? 2 : 3;//(!committed[3]) ? 3 : 4;//
                                     //(!committed[4]) ? 4 : (!committed[5]) ? 5 : (!committed[6]) ? 6 : (!committed[7]) ? 7 : 8;
                                     
    wire [LOG_R - 1 : 0] operationIndex = (committed[0] && (operation[0][1:0] == 2'b00)) ? 0 :
                                            (committed[1] && (operation[1][1:0] == 2'b00)) ? 1 :
                                            (committed[2] && (operation[2][1:0] == 2'b00)) ? 2 :
                                            (committed[3] && (operation[3][1:0] == 2'b00)) ? 3 : 4;
                                            //(committed[4] && (operation[4][1:0] == 2'b00)) ? 4 :
                                            //(committed[5] && (operation[5][1:0] == 2'b00)) ? 5 :
                                            //(committed[6] && (operation[6][1:0] == 2'b00)) ? 6 :
                                            //(committed[7] && (operation[7][1:0] == 2'b00)) ? 7 : 8;
                                            
    
//    wire [LOG_R - 1 : 0] commit_loc; //I have no clue how this works
//    generate
//        assign operationUsed = 1'b0;
//        for (j = 0; j < R_SIZE; j = j + 1) begin
//            assign operationUsed = operationUsed | (!committed[j]);
//            assign commit_loc = (!committed[j]) ? j : commit_loc;
//        end
//    endgenerate
    
//    
    
//    function [LOG_R - 1 : 0] getOperationIndex;
//        input [R_SIZE - 1 : 0] test;
//        integer k;
//        begin
//            for(k = 0; k < R_SIZE; k = k + 1) begin
//                 if (committed[k] && (operation[k][1:0] == 2'b00)) begin
//                    getOperationIndex = k;
//                 end
//            end
//        end
//    endfunction
    
//    wire [LOG_R - 1 : 0] operationIndex = getOperationIndex(committed); //TODO: Probably wrong
    
    // [98:94] d2_rd, [93:89] d2_opcode, [88:86] d2_opcodeB, [85:80] d2_ROB_loc
    // [79:48] d2_rs1_data, [47] d2_rs1_busy, [46:41] d2_rs1_loc, [40:9] d2_rs2_data, [8] d2_rs2_busy, [7:2] d2_rs2_loc
    // [1] d2_rs1_look, [0] d2_rs2_look 
    
    assign outOperation = {operation[operationIndex][95:80], operation[operationIndex][79:48], operation[operationIndex][40:9]};
    
    wire [31:0] in_rs1 = inOperation[1] ? 
                            (forwardA[38] && inOperation[46:41] === forwardA[37:32]) ? forwardA[31:0] :
                            (forwardC[38] && inOperation[46:41] === forwardC[37:32]) ? forwardC[31:0] :
                            (forwardD[38] && inOperation[46:41] === forwardD[37:32]) ? forwardD[31:0] :
                            inOperation[79:48] : inOperation[79:48];
    wire in_rs1_use = inOperation[1] && 
                            !((forwardA[38] && inOperation[46:41] === forwardA[37:32]) || 
                            (forwardC[38] && inOperation[46:41] === forwardC[37:32]) ||
                            (forwardD[38] && inOperation[46:41] === forwardD[37:32]));
    wire [31:0] in_rs2 = inOperation[0] ? 
                            (forwardA[38] && inOperation[7:2] === forwardA[37:32]) ? forwardA[31:0] :
                            (forwardC[38] && inOperation[7:2] === forwardC[37:32]) ? forwardC[31:0] :
                            (forwardD[38] && inOperation[7:2] === forwardD[37:32]) ? forwardD[31:0] :
                            inOperation[40:9] : inOperation[40:9];
                           
    wire in_rs2_use = inOperation[0] && 
                            !((forwardA[38] && inOperation[7:2] === forwardA[37:32]) ||
                            (forwardC[38] && inOperation[7:2] === forwardC[37:32]) ||
                            (forwardD[38] && inOperation[7:2] === forwardD[37:32]));
    
    
    integer i;
    
    initial begin
        for(i = 0; i < R_SIZE; i = i + 1) begin
            committed[i] <= 1'b0;
            operation[i][94] <= 1'b0;
        end
    end
    
    always @(posedge clk) begin
        if(flush) begin
            for(i = 0; i < R_SIZE; i = i + 1) begin
                committed[i] <= 1'b0;
            end
        end
        else begin
            if(operationUsed && inOperation[96]) begin
                operation[commit_loc] <= {inOperation[96:80], in_rs1, inOperation[47:41], in_rs2, inOperation[8:2],  in_rs1_use, in_rs2_use};
                committed[commit_loc] <= 1'b1;
            end
        end
        
        if(outOperationValid) begin
            committed[operationIndex] <= 1'b0;
        end
        
        for(i = 0; i < R_SIZE; i = i + 1) begin
            if(operation[i][96] == 1'b1) begin
                if(forwardA[38] == 1'b1) begin
                    if(operation[i][1] == 1'b1 && operation[i][46:41] == forwardA[37:32]) begin
                        operation[i][1] <= 1'b0;
                        operation[i][79:48] <= forwardA[31:0];
                    end

                    if(operation[i][0] == 1'b1 && operation[i][7:2] == forwardA[37:32]) begin
                        operation[i][0] <= 1'b0;
                        operation[i][40:9] <= forwardA[31:0];
                    end
                end

//                if(forwardB[38] == 1'b1) begin
//                    if(operation[i][1] == 1'b1 && operation[i][46:41] == forwardB[37:32]) begin
//                        operation[i][1] <= 1'b0;
//                        operation[i][79:48] <= forwardB[31:0];
//                    end

//                    if(operation[i][0] == 1'b1 && operation[i][7:2] == forwardB[37:32]) begin
//                        operation[i][0] <= 1'b0;
//                        operation[i][40:9] <= forwardB[31:0];
//                    end
//                end

                if(forwardC[38] == 1'b1) begin
                    if(operation[i][1] == 1'b1 && operation[i][46:41] == forwardC[37:32]) begin
                        operation[i][1] <= 1'b0;
                        operation[i][79:48] <= forwardC[31:0];
                    end

                    if(operation[i][0] == 1'b1 && operation[i][7:2] == forwardC[37:32]) begin
                        operation[i][0] <= 1'b0;
                        operation[i][40:9] <= forwardC[31:0];
                    end
                end

                if(forwardD[38] == 1'b1) begin
                    if(operation[i][1] == 1'b1 && operation[i][46:41] == forwardD[37:32]) begin
                        operation[i][1] <= 1'b0;
                        operation[i][79:48] <= forwardD[31:0];
                    end

                    if(operation[i][0] == 1'b1 && operation[i][7:2] == forwardD[37:32]) begin
                        operation[i][0] <= 1'b0;
                        operation[i][40:9] <= forwardD[31:0];
                    end
                end
            end
        end
    end
    
    
endmodule
