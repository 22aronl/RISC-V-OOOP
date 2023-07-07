`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 02:38:03 AM
// Design Name: 
// Module Name: running
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


module running(
    input clk
    );
    
    reg [15:0] counter = 0;
    
    always @(posedge clk) begin
        counter <= counter + 1;
        if(counter % 100 == 100) begin
            $display(counter);
        end
    end
    
endmodule
