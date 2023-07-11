`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2023 04:56:23 AM
// Design Name: 
// Module Name: load_store_unit
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


module load_store_unit(
    input clk, input flush, input [1:0] stores_to_commit,
    input [78:0] inOperation0, input [11:0] offset0, 
    output [31:0] commit_data, output [31:1] commit_loc, output commit_valid,
    output [31:1] mem_loc,
    input [31:0] mem_data,
    output [38:0] out_data,
    output load_stall
    );

    parameter LOAD_WAIT = 2;
    parameter LOAD_SIZE = 8;
    reg [6:0] load_rob [0:LOAD_SIZE-1];
    reg [32:0] load_data [0:LOAD_SIZE-1];
    reg [2:0] load_opcodeB [0:LOAD_SIZE-1];
    reg [3:0] head = 4'b0000;
    reg [3:0] tail = LOAD_SIZE - 1;
    integer i;
    
    reg [78:0] inOperation = 0;
    reg [11:0] offset = 0;

    wire [31:0] load_data_out = load_data[head][32] ? load_data[head][31:0] : mem_data;
    wire [31:0] op_load_data = (load_opcodeB[head] == 3'b000) ? {{25{load_data_out[7]}}, load_data_out[6:0]} :
                                (load_opcodeB[head] == 3'b001) ? {{17{load_data_out[15]}}, load_data_out[14:0]} :
                                (load_opcodeB[head] == 3'b010) ? load_data_out :
                                (load_opcodeB[head] == 3'b100) ? {{24{1'b0}}, load_data_out[7:0]} :
                                (load_opcodeB[head] == 3'b101) ? {{16{1'b0}}, load_data_out[15:0]} :
                                0;
    assign out_data = {load_rob[head], op_load_data};                             
    //inOperation: [78] valid, [77:74] opcode, [72:70] opcodeB, [69:64] rob_loc, [63:32] rs1, [31:0] rs2

    wire is_ld = (inOperation[77:74] == 4'b0000);
    wire [2:0] opcodeB = inOperation[72:70];
    wire [5:0] rob_loc = inOperation[69:64];
    wire [31:0] rs1 = inOperation[63:32];
    wire [31:0] rs2 = inOperation[31:0];
    wire [31:0] data = is_ld ? rs1 + rs2 : rs1 + {{22{offset[11]}}, offset[10:0]};

    wire store_buffer_valid;
    wire [31:0] store_buffer_data;

    always @(posedge clk) begin
        inOperation <= inOperation0;
        offset <= offset0;
    
        if(flush) begin
            head = 4'b0000;
            tail = LOAD_SIZE - 1;
            for(i = 0; i < LOAD_SIZE; i = i + 1) begin
                load_rob[i][6] = 1'b0;
                load_data[i][32] = 1'b0;
            end
        end
        else begin
            load_rob[tail] <= {inOperation[78], rob_loc};
            load_data[tail][32] <= 1'b0;
            load_opcodeB[tail] <= opcodeB;
            load_rob[head][6] <= 1'b0;
            head <= (head + 1) % LOAD_SIZE;
            tail <= (tail + 1) % LOAD_SIZE;

            if(store_buffer_valid) begin
                load_data[(tail + LOAD_SIZE - 1) % LOAD_SIZE] <= {1'b1, store_buffer_data};
            end
        end
    end

    assign mem_loc = data[31:1];
    assign mem_valid = is_ld;

    //sb & sh are not stored
    store_buffer store_buffer(
        .clk(clk),
        .flush(flush),
        .stores_to_commit(stores_to_commit),
        .data(rs2), .location(data), .input_valid(inOperation[78] & !is_ld),
        .search_location(data),
        .search_data(store_buffer_data), .search_valid(store_buffer_valid),
        .commit_data(commit_data), .commit_loc(commit_loc), .commit_valid(commit_valid),
        .store_stall(load_stall)
    );



    initial begin
        for(i = 0; i < LOAD_SIZE; i = i + 1) begin
            load_rob[i][6] <= 1'b0;
            load_data[i][32] <= 1'b0;
        end
    end

endmodule