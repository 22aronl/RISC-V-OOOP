`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2023 04:56:23 AM
// Design Name: 
// Module Name: store_buffer
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


module store_buffer(
    input clk, input flush, input [1:0] stores_to_commit, //commit stores 
    input [31:0] data, input [31:0] location, input input_valid, //a store instruction
    input [31:0] search_location, //location to search for in a load,
    output [31:0] search_data, output search_valid, //the output for search_location one cycle later
    output [31:0] commit_data, output [31:0] commit_loc, output commit_valid, //committing to memory
    output store_stall //stall if the store buffer is full
    );

    parameter STORE_SIZE = 16;
    parameter LOG_STORE_SIZE = 4;

    // [65] committed, [64] valid, [63:32] location, [31:0] data
    reg [65:0] store_buffer [0:STORE_SIZE-1];
    reg [LOG_STORE_SIZE-1:0] head = 0;
    reg [LOG_STORE_SIZE-1:0] tail = 0;
    reg [LOG_STORE_SIZE-1:0] count = 0;

    assign store_stall = count == (STORE_SIZE - 1);

    reg rcommit_write = 1'b0;
    reg rcommit_valid = 1'b0;
    reg [31:0] rcommit_data = 32'b00;
    reg [31:0] rcommit_loc = 32'b0;
    assign commit_data = rcommit_data;
    assign commit_loc = rcommit_loc;
    assign commit_valid = rcommit_valid & rcommit_write;


    reg [31:0] search_data_ = 32'b0;
    reg search_valid_ = 1'b0;

    assign search_data = search_data_;
    assign search_valid = search_valid_;

    integer i;

    always @(posedge clk) begin
        search_valid_ <= 1'b0;

        for(i = 0; i < STORE_SIZE; i = i + 1) begin
            if(store_buffer[i][64] == 1'b1 && store_buffer[i][63:32] == search_location) begin
                search_data_ <= store_buffer[i][31:0];
                search_valid_ <= 1'b1;
            end
        end

        rcommit_write <= store_buffer[0][65];
        rcommit_valid <= store_buffer[0][64];
        rcommit_data <= store_buffer[0][31:0];
        rcommit_loc <= store_buffer[0][63:32];

        if(store_buffer[0][65:64] == 2'b11) begin
            if(flush) begin
                for(i = 0; i < STORE_SIZE - 1; i = i + 1) begin
                    if(store_buffer[i+1][65:64] == 2'b11) begin
                        store_buffer[i] <= store_buffer[i + 1];
                    end
                    else begin
                        store_buffer[i][65:64] <= 2'b00;
                    end
                end
                head <= head - 1;
                tail <= head - 1;
                count <= head - 1;
            end else begin
                for(i = 0; i < STORE_SIZE - 1; i = i + 1) begin
                    store_buffer[i] <= store_buffer[i + 1];
                end
                store_buffer[STORE_SIZE - 1][65:64] <= 2'b00;
                count <= count - 1;
                head <= head - 1;
                tail <= tail - 1;
            end
        end else begin
            if(flush) begin
                tail <= head;
                count <= head;
                for(i = 0; i < STORE_SIZE; i = i + 1) begin
                    if(store_buffer[i][65] == 1'b0) begin
                        store_buffer[i][64] <= 1'b0;
                    end
                end
            end else begin
                if(input_valid) begin
                    store_buffer[tail] <= {2'b01, location, data};
                    tail <= tail + 1;
                    count <= count + 1;
                end

                if(stores_to_commit > 0) begin
                    for(i = 0; i < stores_to_commit; i = i + 1) begin
                        store_buffer[i][65] <= 1'b1;
                    end
                    head <= head + stores_to_commit;
                end
            end
        end
    end

    initial begin
        for(i = 0; i < STORE_SIZE; i = i + 1) begin
            store_buffer[i][65:64] = 2'b00;
        end
    end

endmodule
