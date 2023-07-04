`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2023 09:10:16 PM
// Design Name: 
// Module Name: Test_Memory
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


module Test_Memory(

    );
    
    localparam CLK_PERIOD = 10;
    
    reg clk = 1'b0;
    always #(CLK_PERIOD / 2.0) begin
        clk = ~clk;
    end
    
    wire [15:0] sw = 16'h0000;
    wire [6:0] seg;
    wire [3:0] an;
    wire [15:0] led;
    
    cpu cpu(
        .clk(clk),
        .sw(sw),
        .seg(seg),
        .an(an),
        .led(led)
    );
    
endmodule
