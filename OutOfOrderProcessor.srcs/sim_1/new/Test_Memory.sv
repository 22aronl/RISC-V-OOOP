`timescale 1ns / 1ps
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
    
    
    
    localparam CLK_PERIOD = 500;
    
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
    
    reg [15:0] counter = 0;
    
    always @(posedge clk) begin
        counter <= counter + 1;
        if(counter > 50000) begin
            $display("testing");
            $finish(0);
        end
    end
    
endmodule