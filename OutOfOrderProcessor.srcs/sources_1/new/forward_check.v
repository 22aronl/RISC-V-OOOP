`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2023 04:52:27 AM
// Design Name: 
// Module Name: forward_check
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


module forward_check(
    input [38:0] forwardA, input [38:0] forwardC, input [38:0] forwardD,
    input [100:0] inOperation, output [100:0] outOperation);


    wire [1:0] user = inOperation[1:0];
    wire [31:0] valueA_ = inOperation[79:48];
    wire [31:0] valueB_ = inOperation[40:9];

    wire [31:0] valueA = inOperation[1] ? 
                            (forwardA[38] && inOperation[46:41] === forwardA[37:32]) ? forwardA[31:0] :
                            (forwardC[38] && inOperation[46:41] === forwardC[37:32]) ? forwardC[31:0] :
                            (forwardD[38] && inOperation[46:41] === forwardD[37:32]) ? forwardD[31:0] :
                            inOperation[79:48] : inOperation[79:48];

    wire userA = inOperation[1] && 
                            !((forwardA[38] && inOperation[46:41] === forwardA[37:32]) || 
                            (forwardC[38] && inOperation[46:41] === forwardC[37:32]) ||
                            (forwardD[38] && inOperation[46:41] === forwardD[37:32]));
    
    wire [31:0] valueB = inOperation[0] ? 
                            (forwardA[38] && inOperation[7:2] === forwardA[37:32]) ? forwardA[31:0] :
                            (forwardC[38] && inOperation[7:2] === forwardC[37:32]) ? forwardC[31:0] :
                            (forwardD[38] && inOperation[7:2] === forwardD[37:32]) ? forwardD[31:0] :
                            inOperation[40:9] : inOperation[40:9];

    wire userB = inOperation[0] && 
                            !((forwardA[38] && inOperation[7:2] === forwardA[37:32]) ||
                            (forwardC[38] && inOperation[7:2] === forwardC[37:32]) ||
                            (forwardD[38] && inOperation[7:2] === forwardD[37:32]));

    assign outOperation = {inOperation[100:80], valueA, inOperation[47:41], valueB, inOperation[8:2], userA, userB};

endmodule
