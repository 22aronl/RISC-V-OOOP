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
    output [6:0] seg, 
    output [3:0] an
    );

    reg [3:0] in_num = 4'b0000;
    reg [1:0] in_loc = 2'b01;
    reg in_en = 1'b1;
    
    
    display display(clk, in_num, in_loc, in_en, seg, an);
    
    
endmodule
