`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2023 03:34:07 AM
// Design Name: 
// Module Name: cpu
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


module cpu(
    input clk,
    input [15:0] sw,
    output [6:0] seg, 
    output [3:0] an,
    output [15:0] led
    );
    
    reg [31:0] pc = 32'h00000000;

    reg [3:0] in_num = 4'b0000;
    reg [1:0] in_loc = 2'b01;
    reg in_en = 1'b1;
    
    
    display display(clk, in_num, in_loc, in_en, seg, an);
    
    wire [31:0] pcA = pc;
    wire [31:0] pcB = pc + 2;
    wire [31:0] pcC = pc + 4;
    
    
    wire [31:1] raddr0 = pc;
    wire [31:1] raddr1 = pc + 2;
    wire [31:1] raddr2 = pc + 4;
    
    wire [31:0] instructA;
    wire [31:0] instructB;
    wire [31:0] instructC;
    
    wire [31:1] raddr = {{31{1'b0}}, 1'b1};
    wire [31:0] rdata;
    
    reg wen = 1'b1;
    wire [31:1] waddr = {{16{1'b0}}, sw};
    wire [31:0] wdata = {32{1'b1}};
    
    mem mem(
        .clk(clk),
        .raddr0(pcA[31:1]),
        .raddr1(pcB[31:1]),
        .raddr2(pcC[31:1]),
        .raddr3(raddr),
        .rdata0(instructA),
        .rdata1(instructB),
        .rdata2(instructC),
        .rdata3(rdata),
        .wen(wen),
        .waddr(waddr),
        .wdata(wdata)
    );


    wire [4:0] regsA [0:1];
    wire [4:0] regsB [0:1];
    wire [4:0] regsC [0:1];

    wire [38:0] rdataA [0:1];
    wire [38:0] rdataB [0:1];
    wire [38:0] rdataC [0:1];

    wire [11:0] rdA;
    wire [11:0] rdB;
    wire [11:0] rdC;

    regs regs(
        .clk(clk),
        .stall(1'b0),
        .flush(1'b0),
        .reg0(regsA[0]),
        .rdata0(rdataA[0]),
        .reg1(regsA[1]),
        .rdata1(rdataA[1]),
        .reg2(regsB[0]),
        .rdata2(rdataB[0]),
        .reg3(regsB[1]),
        .rdata3(rdataB[1]),
        .reg4(regsC[0]),
        .rdata4(rdataC[0]),
        .reg5(regsC[1]),
        .rdata5(rdataC[1]),
        .rob_locA(rdA[11:6]),
        .rob_waddrA(rdA[5:1]),
        .rob_wenA(rdA[0]),
        .rob_locB(rdB[11:6]),
        .rob_waddrB(rdB[5:1]),
        .rob_wenB(rdB[0]),
        .rob_locC(rdC[11:6]),
        .rob_waddrC(rdC[5:1]),
        .rob_wenC(rdC[0]),
        .wen0(1'b0),
        .waddr0(3'b000),
        .wdata0(16'b0000000000000000),
        .wrob0(6'b000000),
        .wen1(1'b0),
        .waddr1(3'b000),
        .wdata1(16'b0000000000000000),
        .wrob1(6'b000000)
    ); //TODO: fill out writing to reg & stall & flush
    
    reg [3:0] led_light = 4'b0000;
    assign led = led_light;
    always @(posedge clk) begin
        if(rdata[0] === 1'b1) begin
            led_light[3] <= 1'b1;
        end
        
        if(instructC[1] === 1'b1) begin
            led_light[2] <= 1'b1;
        end
        
        if(instructB[1] === 1'b1) begin
            led_light[1] <= 1'b1;
        end
        
        if(instructA[1] === 1'b1) begin
            led_light[0] <= 1'b1;
        end
    end

    reg [5:0] ROB_locA; //TODO:
    reg [5:0] ROB_locB;
    reg [5:0] ROB_locC;
    
    wire [98:0] output_dataA;
    wire [14:0] output_locA;
    wire [31:0] output_pcA;

    wire [98:0] output_dataB;
    wire [14:0] output_locB;
    wire [31:0] output_pcB;

    wire [98:0] output_dataC;
    wire [14:0] output_locC;
    wire [31:0] output_pcC;


    decoder decoderA(
        .clk(clk),
        .instruct(instructA),
        .pc(pcA),
        .ROB_loc(ROB_locA),
        .out_rd(rdA),
        .out_rs1(regsA[0]),
        .out_rs2(regsA[1]),
        .data_rs1(rdataA[0]),
        .data_rs2(rdataA[1]),
        .output_data(output_dataA),
        .output_loc(output_locA),
        .output_pc(output_pcA)
    ); //TODO: fill out output_data, output_loc, output_pc

    decoder decoderB(
        .clk(clk),
        .instruct(instructB),
        .pc(pcB),
        .ROB_loc(ROB_locB),
        .out_rd(rdB),
        .out_rs1(regsB[0]),
        .out_rs2(regsB[1]),
        .data_rs1(rdataB[0]),
        .data_rs2(rdataB[1]),
        .output_data(output_dataB),
        .output_loc(output_locB),
        .output_pc(output_pcB)
    );

    decoder decoderC(
        .clk(clk),
        .instruct(instructC),
        .pc(pcC),
        .ROB_loc(ROB_locC),
        .out_rd(rdC),
        .out_rs1(regsC[0]),
        .out_rs2(regsC[1]),
        .data_rs1(rdataC[0]),
        .data_rs2(rdataC[1]),
        .output_data(output_dataC),
        .output_loc(output_locC),
        .output_pc(output_pcC)
    );
    
    always @(posedge clk) begin
        pc <= pc + 6;    
    end
    
endmodule
