`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 01:26:05 AM
// Design Name: 
// Module Name: test_sim
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


module test_sim(

    );
    
    localparam CLK_PERIOD = 500;
    
    reg clk = 1'b0;
    always #(CLK_PERIOD / 2.0) begin
        clk = ~clk;
    end
    
    wire [15:0] sw = 16'h0000;
    wire [3:0] an;
    wire [15:0] led;
    wire [6:0] seg;
    
    cpu ci(.clk(clk), .sw(sw), .seg(seg), .an(an), .led(led));
    
    reg [15:0] counter = 0;
    
    always @(posedge clk) begin
        counter <= counter + 1;
        if(counter > 50000) begin
            $display("testing");
            $finish(0);
        end
    end
    
endmodule
