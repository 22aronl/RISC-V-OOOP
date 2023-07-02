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
    
    regs regs(clk);
    
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
    

   
    
    always @(posedge clk) begin
        pc <= pc + 6;    
    end
    
endmodule
