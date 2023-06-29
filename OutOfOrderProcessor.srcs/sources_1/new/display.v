`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2023 01:44:15 AM
// Design Name: 
// Module Name: display
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


module display(
    input clk,
    input [3:0] in_num, input [1:0] in_loc, input in_en,
    output [6:0] seg,
    output [3:0] an
    );
 
    reg [3:0] anode_refresh = 4'b0111;
    reg [19:0] refresh = 0;
    
    assign an = anode_refresh;
    
    reg [3:0] LED_N;
    
    wire [6:0] zero = 7'b1000000; //0
    wire [6:0] one = 7'b1001111; // "1" 
    wire [6:0] two = 7'b0100100; // "2" 
    wire [6:0] three = 7'b0110000; // "3" 
    wire [6:0] four = 7'b0011001; // "4" 
    wire [6:0] five = 7'b0010010; // "5" 
    wire [6:0] six = 7'b0000011; // "6" 
    wire [6:0] seven = 7'b1111000; // "7" 
    wire [6:0] eight = 7'b0000000; // "8"     
    wire [6:0] nine = 7'b0011000; // "9" 
    wire [6:0] none = 7'b1111111; // empty
    
    
    reg [3:0] display_first = 4'b1010;
    reg [3:0] display_second = 4'b1010;
    reg [3:0] display_third = 4'b1010;
    reg [4:0] display_fourth = 4'b1010;
    
    always @(posedge clk) begin
        if(in_en) begin
            case(in_loc) 
            2'b11: begin
                display_first <= in_num;
            end
            2'b10: begin
                display_second <= in_num;
            end
            2'b01: begin
                display_third <= in_num;
            end
            2'b00: begin
                display_fourth <= in_num;
            end
            endcase
        end
    end
    
    always @(posedge clk) begin
        refresh <= refresh + 1;
    end
    
    wire [1:0] activate_refresh = refresh[19:18];
    
    always @(*) begin
        case(activate_refresh)
        2'b00: begin
            anode_refresh = 4'b0111;
            LED_N = display_first;
        end 
        2'b01: begin
        anode_refresh = 4'b1011;
            LED_N = display_second;
        end
        2'b10: begin
            anode_refresh = 4'b1101;
            LED_N = display_third;
        end
        2'b11: begin
            anode_refresh = 4'b1110;
            LED_N = display_fourth;
        end 
        endcase
    end
    
    reg [6:0] seg_1;
    always @(*) begin
        case(LED_N)
        4'b0000: seg_1 = zero;
        4'b0001: seg_1 = one;
        4'b0010: seg_1 = two;
        4'b0011: seg_1 = three;
        4'b0100: seg_1 = four;
        4'b0101: seg_1 = five;
        4'b0110: seg_1 = six;
        4'b0111: seg_1 = seven;
        4'b1000: seg_1 = eight;
        4'b1001: seg_1 = nine;
        default: seg_1 = none;
        endcase
    end
    
    
    
    assign seg = seg_1;
    
endmodule
