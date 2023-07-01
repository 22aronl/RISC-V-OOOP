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

    reg [3:0] in_num = 4'b0000;
    reg [1:0] in_loc = 2'b01;
    reg in_en = 1'b1;
    
    
    display display(clk, in_num, in_loc, in_en, seg, an);
    
    reg [31:1] raddr0 = {{18{1'b0}}, 1'b1, {12{1'b0}}};
    wire [31:0] rdata0;
    reg [31:1] raddr1 = {{17{1'b0}}, 1'b1, {13{1'b0}}};
    wire [31:0] rdata1;
    reg [31:1] raddr2 = {{16{1'b0}}, 1'b1, {14{1'b0}}};
    wire [31:0] rdata2;
    reg [31:1] raddr3 = {{31{1'b0}}, 1'b1};
    wire [31:0] rdata3;
    reg wen = 1'b1;
    wire [31:1] waddr = {{16{1'b0}}, sw};
    wire [31:0] wdata = {32{1'b1}};
    
    mem mem(clk, raddr0, rdata0, raddr1, rdata1, raddr2, rdata2, raddr3, rdata3, wen, waddr, wdata);
    
    reg [3:0] led_light = 4'b0000;
    assign led = led_light;
    always @(posedge clk) begin
        if(rdata3[0] === 1'b1) begin
            led_light[3] <= 1'b1;
        end
        
        if(rdata2[1] === 1'b1) begin
            led_light[2] <= 1'b1;
        end
        
        if(rdata1[1] === 1'b1) begin
            led_light[1] <= 1'b1;
        end
        
        if(rdata0[1] === 1'b1) begin
            led_light[0] <= 1'b1;
        end
    end
    
    regs regs(clk);
    
endmodule
