`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 06:45:51 PM
// Design Name: 
// Module Name: buffer
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


module buffer    
    #(  parameter Q_SIZE = 16,
        parameter Q_LOG_SIZE = 4)
    (
    input clk, input flush, input [1:0] taken,
    input [38:0] forwardA, input [38:0] forwardB, input [38:0] forwardC, input [38:0] forwardD,
    input validA, input validB, input validC,
    input [95:0] input_dataA, input [95:0] input_dataB, input [95:0] input_dataC,
    output [96:0] outOperation0, output [96:0] outOperation1
    );
    
    reg valid [0:Q_SIZE-1];
    reg [95:0] queue [0: Q_SIZE-1];
    
    reg [Q_LOG_SIZE:0] head = 0;
    reg [Q_LOG_SIZE:0] tail = 0;

    assign outOperation0 = {valid[head], queue[head]};
    assign outOperation1 = {valid[(head + 1)%Q_SIZE], queue[(head + 1)%Q_SIZE]};

    integer i;

    initial begin
        for(i = 0; i < Q_SIZE; i = i + 1) begin
            valid[i] <= 1'b0;
        end
    end

    always @(posedge clk) begin
        if(taken == 2'b01)
            valid[(head)%Q_SIZE] <= 1'b0;
        if(taken == 2'b10)
            valid[(head + 1)%Q_SIZE] <= 1'b0;

        head <= (head + taken) % Q_SIZE;

        if(validA) begin
            valid[tail] <= 1'b1;
            queue[tail] <= input_dataA;
        end

        if(validB) begin
            valid[(tail + 1)%Q_SIZE] <= 1'b1;
            queue[(tail + 1)%Q_SIZE] <= input_dataB;
        end

        if(validC) begin
            valid[(tail + 2)%Q_SIZE] <= 1'b1;
            queue[(tail + 2)%Q_SIZE] <= input_dataC;
        end

        tail <= (tail + validA + validB + validC) % Q_SIZE;
        
        for(i = 0; i < Q_SIZE; i = i + 1) begin
            if(valid[i] == 1'b1) begin
                if(forwardA[38] == 1'b1) begin
                    if(queue[i][1] == 1'b1 && queue[i][46:41] == forwardA[37:32]) begin
                        queue[i][1] <= 1'b0;
                        queue[i][79:48] <= forwardA[31:0];
                    end

                    if(queue[i][0] == 1'b1 && queue[i][7:2] == forwardA[37:32]) begin
                        queue[i][0] <= 1'b0;
                        queue[i][40:9] <= forwardA[31:0];
                    end
                end

//                if(forwardB[38] == 1'b1) begin
//                    if(queue[i][1] == 1'b1 && queue[i][46:41] == forwardB[37:32]) begin
//                        queue[i][1] <= 1'b0;
//                        queue[i][79:48] <= forwardB[31:0];
//                    end

//                    if(queue[i][0] == 1'b1 && queue[i][7:2] == forwardB[37:32]) begin
//                        queue[i][0] <= 1'b0;
//                        queue[i][40:9] <= forwardB[31:0];
//                    end
//                end

                if(forwardC[38] == 1'b1) begin
                    if(queue[i][1] == 1'b1 && queue[i][46:41] == forwardC[37:32]) begin
                        queue[i][1] <= 1'b0;
                        queue[i][79:48] <= forwardC[31:0];
                    end

                    if(queue[i][0] == 1'b1 && queue[i][7:2] == forwardC[37:32]) begin
                        queue[i][0] <= 1'b0;
                        queue[i][40:9] <= forwardC[31:0];
                    end
                end

                if(forwardD[38] == 1'b1) begin
                    if(queue[i][1] == 1'b1 && queue[i][46:41] == forwardD[37:32]) begin
                        queue[i][1] <= 1'b0;
                        queue[i][79:48] <= forwardD[31:0];
                    end

                    if(queue[i][0] == 1'b1 && queue[i][7:2] == forwardD[37:32]) begin
                        queue[i][0] <= 1'b0;
                        queue[i][40:9] <= forwardD[31:0];
                    end
                end
            end
        end
    end

    //forward: [38] valid, [37:32] rob_loc, [31:0] data
    // [79:48] d2_rs1_data, [47] d2_rs1_busy, [46:41] d2_rs1_loc, [40:9] d2_rs2_data, [8] d2_rs2_busy, [7:2] d2_rs2_loc\

    
endmodule
