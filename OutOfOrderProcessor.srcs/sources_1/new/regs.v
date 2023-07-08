`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2023 04:40:46 AM
// Design Name: 
// Module Name: regs
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


module regs(
    input clk, input stall, input flush,
    input [4:0] reg0, output [38:0] rdata0,
    input [4:0] reg1, output [38:0] rdata1,
    input [4:0] reg2, output [38:0] rdata2,
    input [4:0] reg3, output [38:0] rdata3,
    input [4:0] reg4, output [38:0] rdata4,
    input [4:0] reg5, output [38:0] rdata5,
    input [5:0] rob_locA, input [4:0] rob_waddrA, input rob_wenA,
    input [5:0] rob_locB, input [4:0] rob_waddrB, input rob_wenB,
    input [5:0] rob_locC, input [4:0] rob_waddrC, input rob_wenC,
    input wen0, input [2:0]waddr0, input [15:0]wdata0, input [5:0] wrob0,
    input wen1, input [2:0]waddr1, input [15:0]wdata1, input [5:0] wrob1
    );
    
    reg [31:0] data [0:31];
    reg busy[0:31];
    reg [5:0] rob_loc[0:31];
    
    reg [4:0]raddr0;
    reg [4:0]raddr1;
    reg [4:0]raddr2;
    reg [4:0]raddr3;
    reg [4:0]raddr4;
    reg [4:0]raddr5;
    
    assign rdata0 = {data[raddr0], busy[raddr0], rob_loc[raddr0]};
    assign rdata1 = {data[raddr1], busy[raddr1], rob_loc[raddr1]};
    assign rdata2 = {data[raddr2], busy[raddr2], rob_loc[raddr2]};
    assign rdata3 = {data[raddr3], busy[raddr3], rob_loc[raddr3]};
    assign rdata4 = {data[raddr4], busy[raddr4], rob_loc[raddr4]};
    assign rdata5 = {data[raddr5], busy[raddr5], rob_loc[raddr5]};
    
    integer i;
    initial begin
        for(i = 0; i < 32; i = i + 1) begin
            busy[i] = 1'b0;
        end

        for(i = 0; i < 32; i = i + 1) begin
            data[i] = 32'h00000000;
        end
    end

    always @(posedge clk) begin
        raddr0 <= stall ? raddr0 : reg0;
        raddr1 <= reg1;
        raddr2 <= reg2;
        raddr3 <= reg3;
        raddr4 <= reg4;
        raddr5 <= reg5;

        if (wen0) begin
            data[waddr0] <= wdata0;
            if(rob_loc[waddr0] === wrob0) begin
                busy[waddr0] <= 1'b0;
            end
        end

        if(wen1) begin
            data[waddr1] <= wdata1;
            if(rob_loc[waddr1] === wrob1) begin
                busy[waddr1] <= 1'b0;
            end
        end

        if (rob_wenC) begin
            rob_loc[rob_waddrC] <= rob_locC;
            busy[rob_waddrC] <= 1'b1;
        end
        if (rob_wenB) begin
            rob_loc[rob_waddrB] <= rob_locB;
            busy[rob_waddrB] <= 1'b1;
        end
        if (rob_wenA) begin
            rob_loc[rob_waddrA] <= rob_locA;
            busy[rob_waddrA] <= 1'b1;
        end

        if(flush) begin
            for(i = 0; i < 8; i = i + 1) begin
                busy[i] <= 1'b0;
            end
        end
    end
    
endmodule
