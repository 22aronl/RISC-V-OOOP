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


    wire [4:0] regsA [0:1];
    wire [4:0] regsB [0:1];
    wire [4:0] regsC [0:1];

    wire [38:0] rdataA [0:1];
    wire [38:0] rdataB [0:1];
    wire [38:0] rdataC [0:1];

    wire [11:0] rdA;
    wire [11:0] rdB;
    wire [11:0] rdC;

    regs regs(
        .clk(clk),
        .stall(1'b0),
        .flush(1'b0),
        .reg0(regsA[0]),
        .rdata0(rdataA[0]),
        .reg1(regsA[1]),
        .rdata1(rdataA[1]),
        .reg2(regsB[0]),
        .rdata2(rdataB[0]),
        .reg3(regsB[1]),
        .rdata3(rdataB[1]),
        .reg4(regsC[0]),
        .rdata4(rdataC[0]),
        .reg5(regsC[1]),
        .rdata5(rdataC[1]),
        .rob_locA(rdA[11:6]),
        .rob_waddrA(rdA[5:1]),
        .rob_wenA(rdA[0]),
        .rob_locB(rdB[11:6]),
        .rob_waddrB(rdB[5:1]),
        .rob_wenB(rdB[0]),
        .rob_locC(rdC[11:6]),
        .rob_waddrC(rdC[5:1]),
        .rob_wenC(rdC[0]),
        .wen0(1'b0),
        .waddr0(3'b000),
        .wdata0(16'b0000000000000000),
        .wrob0(6'b000000),
        .wen1(1'b0),
        .waddr1(3'b000),
        .wdata1(16'b0000000000000000),
        .wrob1(6'b000000)
    ); //TODO: fill out writing to reg & stall & flush
    
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
    
    //pc staller
    reg pcA_valid = 1'b1;
    reg pcB_valid = 1'b1;
    reg pcC_valid = 1'b1;
    
    reg [31:0] d1_pcA;
    reg [31:0] d1_pcB;
    reg [31:0] d1_pcC;
    reg d1_validA = 1'b0;
    reg d1_validB = 1'b0;
    reg d1_validC = 1'b0;
    
    reg [31:0] d2_pcA;
    reg [31:0] d2_pcB;
    reg [31:0] d2_pcC;
    reg d2_validA = 1'b0;
    reg d2_validB = 1'b0;
    reg d2_validC = 1'b0;
    
    reg [31:0] d3_pcA;
    reg [31:0] d3_pcB;
    reg [31:0] d3_pcC;
    reg d3_validA = 1'b0;
    reg d3_validB = 1'b0;
    reg d3_validC = 1'b0; //inefficient
    
    always @(posedge clk) begin
        d1_pcA <= pcA;
        d1_pcB <= pcB;
        d1_pcC <= pcC;
        d1_validA <= pcA_valid;
        d1_validB <= pcB_valid;
        d1_validC <= pcC_valid;
        
        d2_pcA <= d1_pcA;
        d2_pcB <= d1_pcB;
        d2_pcC <= d1_pcC;
        d2_validA <= d1_validA;
        d2_validB <= d1_validB;
        d2_validC <= d1_validC;
        
        d3_pcA <= d2_pcA;
        d3_pcB <= d2_pcB;
        d3_pcC <= d2_pcC;
        d3_validA <= d2_validA;
        d3_validB <= d2_validB;
        d3_validC <= d2_validC;
    end

    wire [38:0] forwardA;
    wire [38:0] forwardB;
    wire [38:0] forwardC;
    wire [38:0] forwardD;

    wire [5:0] ROB_locA; //TODO:
    wire [5:0] ROB_locB;
    wire [5:0] ROB_locC;
    
    wire [100:0] output_dataA;
    wire [15:0] output_locA;
    wire [31:0] output_pcA;

    wire [100:0] output_dataB;
    wire [15:0] output_locB;
    wire [31:0] output_pcB;

    wire [100:0] output_dataC;
    wire [15:0] output_locC;
    wire [31:0] output_pcC;


    decoder decoderA(
        .clk(clk),
        .instruct(instructA),
        .pc(d3_pcA),
        .ROB_loc(ROB_locA),
        .in_valid(d3_validA),
        .out_rd(rdA),
        .out_rs1(regsA[0]),
        .out_rs2(regsA[1]),
        .data_rs1(rdataA[0]),
        .data_rs2(rdataA[1]),
        .output_data(output_dataA),
        .output_loc(output_locA),
        .output_pc(output_pcA)
    ); //TODO: fill out output_data, output_loc, output_pc

    decoder decoderB(
        .clk(clk),
        .instruct(instructB),
        .pc(d3_pcB),
        .ROB_loc(ROB_locB),
        .in_valid(d3_validB),
        .out_rd(rdB),
        .out_rs1(regsB[0]),
        .out_rs2(regsB[1]),
        .data_rs1(rdataB[0]),
        .data_rs2(rdataB[1]),
        .output_data(output_dataB),
        .output_loc(output_locB),
        .output_pc(output_pcB)
    );

    decoder decoderC(
        .clk(clk),
        .instruct(instructC),
        .pc(d3_pcC),
        .ROB_loc(ROB_locC),
        .in_valid(d3_validC),
        .out_rd(rdC),
        .out_rs1(regsC[0]),
        .out_rs2(regsC[1]),
        .data_rs1(rdataC[0]),
        .data_rs2(rdataC[1]),
        .output_data(output_dataC),
        .output_loc(output_locC),
        .output_pc(output_pcC)
    );
    
    
    // // // // // //
    //             //
    //     ROB     //
    //             //
    // // // // // //
    
    reg [5:0] ROBhead = 5'h00;
    reg [5:0] ROBtail = 5'h00;
    
    always @(posedge clk) begin
        ROBtail <= (ROBtail + 3) % 64;
    end
    
    assign ROB_locA = ROBtail;
    assign ROB_locB = (ROBtail + 1) % 64;
    assign ROB_locC = (ROBtail + 2) % 64;
    
    // // // // // 
    // ALU // //
    // // // // //
    wire [95:0] output_aluA;
    wire [95:0] output_aluB;
    wire [95:0] output_aluC;
    wire output_aluA_valid;
    wire output_aluB_valid;
    wire output_aluC_valid;

    queue_feeder alu_feeder(
        .inOperationA(output_dataA[95:0]),
        .inOperationB(output_dataB[95:0]),
        .inOperationC(output_dataC[95:0]),
        .validA(output_locA[15] & output_locA[14]),
        .validB(output_locB[15] & output_locB[14]),
        .validC(output_locC[15] & output_locC[14]),
        .outOperationA(output_aluA),
        .outOperationB(output_aluB),
        .outOperationC(output_aluC),
        .outValidA(output_aluA_valid),
        .outValidB(output_aluB_valid),
        .outValidC(output_aluC_valid)
    );

    wire [96:0] alu_buffer_opA;
    wire [96:0] alu_buffer_opB;
    wire alu_reservA_used;
    wire alu_reservB_used;

    buffer alu_buffer(
        .clk(clk),
        .flush(1'b0),
        .taken({alu_reservA_used & alu_reservB_used, alu_reservA_used ^ alu_reservB_used}),
        .forwardA(forwardA),
        .forwardB(forwardB),
        .forwardC(forwardC),
        .forwardD(forwardD),
        .validA(output_aluA_valid),
        .validB(output_aluB_valid),
        .validC(output_aluC_valid),
        .input_dataA(output_aluA),
        .input_dataB(output_aluB),
        .input_dataC(output_aluC),
        .outOperation0(alu_buffer_opA),
        .outOperation1(alu_buffer_opB)
    );

    // // // 
    // alu module A
    // // //
    wire alu_operationA_used;
    wire [79:0] alu_operationA;
    wire alu_operationA_valid;
    reservation_station alu_reservationA(
        .clk(clk),
        .flush(1'b0),
        .forwardA(forwardA),
        .forwardB(forwardB),
        .forwardC(forwardC),
        .forwardD(forwardD),
        .inOperation(alu_buffer_opA),
        .operationUsed(alu_operationA_used),
        .outOperation(alu_operationA),
        .outOperationValid(alu_operationA_valid)
    );

    assign alu_reservA_used = alu_operationA_used & alu_buffer_opA[96];

    alu aluA(
        .clk(clk),
        .inOperation(alu_operationA),
        .inValid(alu_operationA_valid),
        .outData(forwardA)
    );

    // // //
    // alu module B
    // // //

    wire alu_operationB_used;
    wire [79:0] alu_operationB;
    wire alu_operationB_valid;
    
    reservation_station alu_reservationB(
        .clk(clk),
        .flush(1'b0),
        .forwardA(forwardA),
        .forwardB(forwardB),
        .forwardC(forwardC),
        .forwardD(forwardD),
        .inOperation(alu_buffer_opB),
        .operationUsed(alu_operationB_used),
        .outOperation(alu_operationB),
        .outOperationValid(alu_operationB_valid)
    );

    assign alu_reservB_used = alu_operationB_used & alu_buffer_opB[96];

    alu aluB(
        .clk(clk),
        .inOperation(alu_operationB),
        .inValid(alu_operationB_valid),
        .outData(forwardB)
    );
    
  
    always @(posedge clk) begin
        pc <= pc + 6;
    end
    
endmodule
