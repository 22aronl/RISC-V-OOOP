`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2023 01:05:20 AM
// Design Name: 
// Module Name: queue
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


module queue
    #(  parameter Q_SIZE = 16,
        parameter Q_LOG_SIZE = 4,
        parameter R_SIZE = 4,
        parameter R_LOG_SIZE = 2
    )
    (
    input clk, input flush, input taken,
    input [38:0] forwardA, input [38:0] forwardC, input [38:0] forwardD,
    input validA, input validB, 
    input [95:0] input_dataA, input [95:0] input_dataB,
    output [96:0] outOperation0 
    );

    reg valid [0:Q_SIZE - 1];
    reg [95:0] queue [0: Q_SIZE - 1];

    reg [Q_LOG_SIZE - 1:0] head = 0;

    assign outOperation0 = {valid[0], queue[0]};

    wire head_valid = valid[head];
    integer i;
    always @(posedge clk) begin
        if(head_valid && !taken) begin
            valid[head] <= validA;
            queue[head] <= input_dataA;
            valid[head + 1] <= validB;
            queue[head + 1] <= input_dataB;
            head <= (head + validA + validB);
        end
        else begin
            for(i = 0; i < Q_SIZE - 2; i = i + 1) begin
                valid[i] <= valid[i + 1];
                queue[i] <= queue[i + 1];
            end
            valid[Q_SIZE - 1] <= 1'b0;
            head <= (head + validA + validB - taken);
            valid[head - 1] <= validA;
            queue[head - 1] <= input_dataA;
            valid[head] <= validB;
            queue[head] <= input_dataB;
        end
    end
    
    initial begin
        for(i = 0; i < Q_SIZE; i = i + 1) begin
            valid[i] <= 1'b0;
        end
    end

    //reservation station
    //

endmodule
