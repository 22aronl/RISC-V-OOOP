`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 12:53:58 AM
// Design Name: 
// Module Name: test
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


module main(
    
    );
    
    initial begin
        $dumpfile("cpu.vcd");
        $dumpvars(0,main);
    end
    
    reg clk = 1'b0;
    always begin
        #500;
        clk = !clk;
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
