`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2023 02:25:48 AM
// Design Name: 
// Module Name: mem
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


module mem 
    #(  parameter INSTR_TIMING = 2,  
        parameter CYCLE_TIMING = 4)
    (   input clk,
        input [31:1] raddr0, output [31:0] rdata0,
        input [31:1] raddr1, output [31:0] rdata1,
//        input [31:1] raddr2, output [31:0] rdata2,
        input [31:1] raddr3, output [31:0] rdata3,
        input wen, input [31:1] waddr, input [31:0] wdata);

    reg [31:0]data[0:16'h1d00];

    /* Simulation -- read initial content from file */
    initial begin
        $readmemh("file2.mem",data);
    end
    
    reg [31:0] buf_raddr0 [0 : INSTR_TIMING - 1];
    reg [31:0] buf_raddr1 [0 : INSTR_TIMING - 1];
//    reg [31:1] buf_raddr2 [0 : INSTR_TIMING - 1];
    reg [31:0] buf_raddr3 [0 : CYCLE_TIMING - 1];
    
    reg [31:0] rdata0_;
    reg [31:0] rdata1_;
//    reg [31:0] rdata2_;
    reg [31:0] rdata3_;
    assign rdata0 = rdata0_;
    assign rdata1 = rdata1_;
//    assign rdata2 = rdata2_;
    assign rdata3 = rdata3_;
    
    
    reg [31:1] buf_waddr [0 : CYCLE_TIMING - 1];
    reg buf_wen [0 : CYCLE_TIMING - 1];
    reg [31:0] buf_wdata [0 : CYCLE_TIMING - 1];

    integer i;
    always @(posedge clk) begin
        buf_raddr0[INSTR_TIMING - 1] <= data[raddr0];
        buf_raddr1[INSTR_TIMING - 1] <= data[raddr1];
//        buf_raddr2[INSTR_TIMING - 1] <= data[raddr2];
        buf_raddr3[CYCLE_TIMING - 1] <= data[raddr3];
        buf_wen[CYCLE_TIMING - 1] <= wen;
        buf_waddr[CYCLE_TIMING - 1] <= waddr;
        buf_wdata[CYCLE_TIMING - 1] <= wdata;
    
        for(i = 0; i < INSTR_TIMING - 1; i = i + 1) begin
            buf_raddr0[i] <= buf_raddr0[i + 1];
            buf_raddr1[i] <= buf_raddr1[i + 1];
//            buf_raddr2[i] <= buf_raddr2[i + 1];
        end
        
        for(i = 0; i < CYCLE_TIMING - 1; i = i + 1) begin
           buf_raddr3[i] <= buf_raddr3[i + 1];
        end
        
        rdata0_ <= buf_raddr0[0];
        rdata1_ <= buf_raddr1[0];
//        rdata2_ <= buf_raddr2[0];
        
        for(i = 0; i < CYCLE_TIMING - 1; i = i + 1) begin
            buf_raddr3[i] <= buf_raddr3[i + 1];
            buf_waddr[i] <= buf_waddr[i + 1];
            buf_wen[i] <= buf_wen[i + 1];
            buf_wdata[i] <= buf_wdata[i + 1];
        end
        
        if(buf_wen[1]) begin
            data[buf_waddr[1]] <= buf_wdata[1];
        end
        rdata3_ <= data[buf_raddr3[0]];
    end
endmodule
