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
    
    parameter ROB_SIZE = 32;
    
    reg [31:0] pc = 32'h00000000;

    reg [3:0] in_num = 4'b0000;
    reg [1:0] in_loc = 2'b01;
    reg in_en = 1'b1;
    
    
    display display(clk, in_num, in_loc, in_en, seg, an);

    wire flush = 1'b0; //Dear lord please have mercy on my soul
    reg stall = 1'b0;
    
    wire [31:0] pcA = pc;
    wire [31:0] pcB = pc + 2;
//    wire [31:0] pcC = pc + 4;
    
    
    wire [31:1] raddr0 = pc;
    wire [31:1] raddr1 = pc + 2;
//    wire [31:1] raddr2 = pc + 4;
    
    wire [31:0] instructA;
    wire [31:0] instructB;
//    wire [31:0] instructC;
    
    wire [31:1] raddr;// = {{31{1'b0}}, 1'b1};
    wire [31:0] rdata;
    
    wire wen;
    wire [31:1] waddr;
    wire [31:0] wdata;
    
    mem mem(
        .clk(clk),
        .raddr0(pcA[31:1]),
        .raddr1(pcB[31:1]),
//        .raddr2(pcC[31:1]),
        .raddr3(raddr),
        .rdata0(instructA),
        .rdata1(instructB),
//        .rdata2(instructC),
        .rdata3(rdata),
        .wen(wen),
        .waddr(waddr),
        .wdata(wdata)
    );


    wire [4:0] regsA [0:1];
    wire [4:0] regsB [0:1];
//    wire [4:0] regsC [0:1];

    wire [38:0] rdataA [0:1];
    wire [38:0] rdataB [0:1];
//    wire [38:0] rdataC [0:1];

    wire [11:0] rdA;
    wire [11:0] rdB;
//    wire [11:0] rdC;

    wire r_wen0;
    wire [4:0] r_waddr0;
    wire [31:0] r_wdata0;
    wire [5:0] r_wrob0;

    wire r_wen1;
    wire [4:0] r_waddr1;
    wire [31:0] r_wdata1;
    wire [5:0] r_wrob1;

    regs regs(
        .clk(clk),
        .stall(1'b0),
        .flush(flush),
        .reg0(regsA[0]),
        .rdata0(rdataA[0]),
        .reg1(regsA[1]),
        .rdata1(rdataA[1]),
        .reg2(regsB[0]),
        .rdata2(rdataB[0]),
        .reg3(regsB[1]),
        .rdata3(rdataB[1]),
//        .reg4(regsC[0]),
//        .rdata4(rdataC[0]),
//        .reg5(regsC[1]),
//        .rdata5(rdataC[1]),
        .rob_locA(rdA[11:6]),
        .rob_waddrA(rdA[5:1]),
        .rob_wenA(rdA[0]),
        .rob_locB(rdB[11:6]),
        .rob_waddrB(rdB[5:1]),
        .rob_wenB(rdB[0]),
//        .rob_locC(rdC[11:6]),
//        .rob_waddrC(rdC[5:1]),
//        .rob_wenC(rdC[0]),
        .wen0(r_wen0),
        .waddr0(r_waddr0),
        .wdata0(r_wdata0),
        .wrob0(r_wrob0),
        .wen1(r_wen1),
        .waddr1(r_waddr1),
        .wdata1(r_wdata1),
        .wrob1(r_wrob1)
    ); //TODO: fill out writing to reg & stall & flush
    
    reg [3:0] led_light = 4'b0000;
    assign led = led_light;
    always @(posedge clk) begin
        if(rdata[0] === 1'b1) begin
            led_light[3] <= 1'b1;
        end
        
//        if(instructC[1] === 1'b1) begin
//            led_light[2] <= 1'b1;
//        end
        
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
//    reg pcC_valid = 1'b1;

    reg [31:0] d0_pcA;
    reg [31:0] d0_pcB;
//    reg [31:0] d0_pcC;
    reg d0_validA = 1'b0;
    reg d0_validB = 1'b0;
//    reg d0_validC = 1'b0;
    
    reg [31:0] d1_pcA;
    reg [31:0] d1_pcB;
//    reg [31:0] d1_pcC;
    reg d1_validA = 1'b0;
    reg d1_validB = 1'b0;
//    reg d1_validC = 1'b0;
    
    reg [31:0] d2_pcA;
    reg [31:0] d2_pcB;
//    reg [31:0] d2_pcC;
    reg d2_validA = 1'b0;
    reg d2_validB = 1'b0;
//    reg d2_validC = 1'b0;
    
    reg [31:0] d3_pcA;
    reg [31:0] d3_pcB;
//    reg [31:0] d3_pcC;
    reg d3_validA = 1'b0;
    reg d3_validB = 1'b0;
//    reg d3_validC = 1'b0; //inefficient
    
    always @(posedge clk) begin
        d1_pcA <= pcA;
        d1_pcB <= pcB;
//        d1_pcC <= pcC;
        d1_validA <= pcA_valid;
        d1_validB <= pcB_valid;
//        d1_validC <= pcC_valid;

        //d1_pcA <= d0_pcA;
        //d1_pcB <= d0_pcB;
        //d1_pcC <= d0_pcC;
        //d1_validA <= d0_validA;
        //d1_validB <= d0_validB;
        //d1_validC <= d0_validC;
        
        d2_pcA <= d1_pcA;
        d2_pcB <= d1_pcB;
//        d2_pcC <= d1_pcC;
        d2_validA <= d1_validA;
        d2_validB <= d1_validB;
//        d2_validC <= d1_validC;
        
        d3_pcA <= d2_pcA;
        d3_pcB <= d2_pcB;
//        d3_pcC <= d2_pcC;
        d3_validA <= d2_validA;
        d3_validB <= d2_validB;
//        d3_validC <= d2_validC;
    end


    //forward [38:0] : [38] is valid, [37:32] ROB_loc, [31:0] is data
    wire [38:0] forwardA;
//    wire [38:0] forwardB;
    wire [38:0] forwardC;
    wire [38:0] forwardD;

    wire [5:0] ROB_locA; //TODO:
    wire [5:0] ROB_locB;
    wire [5:0] ROB_locC;
    
    wire [100:0] output_dataA;
    wire [16:0] output_locA;
    wire [31:0] output_pcA;

    wire [100:0] output_dataB;
    wire [16:0] output_locB;
    wire [31:0] output_pcB;

    wire [100:0] output_dataC;
    wire [16:0] output_locC;
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

//    decoder decoderC(
//        .clk(clk),
//        .instruct(instructC),
//        .pc(d3_pcC),
//        .ROB_loc(ROB_locC),
//        .in_valid(d3_validC),
//        .out_rd(rdC),
//        .out_rs1(regsC[0]),
//        .out_rs2(regsC[1]),
//        .data_rs1(rdataC[0]),
//        .data_rs2(rdataC[1]),
//        .output_data(output_dataC),
//        .output_loc(output_locC),
//        .output_pc(output_pcC)
//    );
    
    
    // // // // // //
    //             //
    //     ROB     //
    //             //
    // // // // // //
    
    reg [5:0] ROBhead = 5'h00;
    reg [5:0] ROBtail = 5'h00;
    
    // [64] Ready Bit, [63:32] Value, [31:0] PC
    reg [64:0] ROB [0: ROB_SIZE - 1];
    // [19] take_jump, [18] is_write_reg, [17] is_store, [16:12] reg_num, [11:0] store_offset
    reg [19:0] ROBhelper [0 : ROB_SIZE - 1];
    reg [31:0] ROBpc [0: ROB_SIZE - 1]; //this is so inefficient :') only exists because of jal & jalr
    
    always @(posedge clk) begin
        ROBtail <= (ROBtail + 6) % ROB_SIZE;
    end
    
    
    wire [5:0] d_ROBA = output_dataA[85:80];
    wire [5:0] d_ROBB = output_dataB[85:80];
    wire [5:0] d_ROBC = output_dataC[85:80];
    
    //ROB instantiation moved lower
    
    assign ROB_locA = ROBtail;
    assign ROB_locB = (ROBtail + 1) % ROB_SIZE;
    assign ROB_locC = (ROBtail + 2) % ROB_SIZE;
    

    // // // // // 
    //          //  
    //   ALU    //
    //          //
    // // // // //

    wire [95:0] output_aluA;
    wire [95:0] output_aluB;
//    wire [95:0] output_aluC;
    wire output_aluA_valid;
    wire output_aluB_valid;
//    wire output_aluC_valid;

    queue_feeder alu_feeder(
        .inOperationA(output_dataA[95:0]),
        .inOperationB(output_dataB[95:0]),
//        .inOperationC(output_dataC[95:0]),
        .validA(output_locA[15] & output_locA[14]),
        .validB(output_locB[15] & output_locB[14]),
//        .validC(output_locC[15] & output_locC[14]),
        .outOperationA(output_aluA),
        .outOperationB(output_aluB),
//        .outOperationC(output_aluC),
        .outValidA(output_aluA_valid),
        .outValidB(output_aluB_valid)
//        .outValidC(output_aluC_valid)
    );

    wire [96:0] alu_buffer_opA;
    wire alu_reservA_used;
    wire alu_reservB_used;

    queue alu_queue(
        .clk(clk),
        .flush(flush),
        .taken(alu_reservA_used),
        .forwardA(forwardA),
        .forwardC(forwardC),
        .forwardD(forwardD),
        .validA(output_aluA_valid),
        .validB(output_aluB_valid),
//        .validC(output_aluC_valid),
        .input_dataA(output_aluA),
        .input_dataB(output_aluB),
//        .input_dataC(output_aluC),
        .outOperation0(alu_buffer_opA)
    );

//     buffer alu_buffer(
//         .clk(clk),
//         .flush(flush),
//         .taken({1'b0, alu_reservA_used}),
//         .forwardA(forwardA),
//         .forwardC(forwardC),
//         .forwardD(forwardD),
//         .validA(output_aluA_valid),
//         .validB(output_aluB_valid),
// //        .validC(output_aluC_valid),
//         .input_dataA(output_aluA),
//         .input_dataB(output_aluB),
// //        .input_dataC(output_aluC),
//         .outOperation0(alu_buffer_opA),
//         .outOperation1(alu_buffer_opB)
//     );

    // // // 
    // alu module A
    // // //
    wire alu_operationA_used;
    wire [79:0] alu_operationA;
    wire alu_operationA_valid;
    reservation_station alu_reservationA(
        .clk(clk),
        .flush(flush),
        .forwardA(forwardA),
        .forwardB(),
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

    wire alu_operationB_used = 1'b0;
//    wire [79:0] alu_operationB;
//    wire alu_operationB_valid;
    
//    reservation_station alu_reservationB(
//        .clk(clk),
//        .flush(1'b0),
//        .forwardA(forwardA),
//        .forwardB(forwardB),
//        .forwardC(forwardC),
//        .forwardD(forwardD),
//        .inOperation(alu_buffer_opB),
//        .operationUsed(alu_operationB_used),
//        .outOperation(alu_operationB),
//        .outOperationValid(alu_operationB_valid)
//    );

//    assign alu_reservB_used = alu_operationB_used & alu_buffer_opB[96];

//    alu aluB(
//        .clk(clk),
//        .inOperation(alu_operationB),
//        .inValid(alu_operationB_valid),
//        .outData(forwardB)
//    );

    
    // // // // // //
    //             //
    // Branch Unit //
    //             //
    // // // // // //

    wire [95:0] output_branchA;
    wire [95:0] output_branchB;
//    wire [95:0] output_branchC;
    wire output_branchA_valid;
    wire output_branchB_valid;
//    wire output_branchC_valid;

    queue_feeder branch_feeder(
        .inOperationA(output_dataA[95:0]),
        .inOperationB(output_dataB[95:0]),
//        .inOperationC(output_dataC[95:0]),
        .validA(output_locA[15] & output_locA[12]),
        .validB(output_locB[15] & output_locB[12]),
//        .validC(output_locC[15] & output_locC[12]),
        .outOperationA(output_branchA),
        .outOperationB(output_branchB),
//        .outOperationC(output_branchC),
        .outValidA(output_branchA_valid),
        .outValidB(output_branchB_valid)
//        .outValidC(output_branchC_valid)
    );


    wire [96:0] branch_buffer_op;
    wire branch_reserv_used;

    queue branch_queue(
        .clk(clk),
        .flush(flush),
        .taken(branch_reserv_used),
        .forwardA(forwardA),
        .forwardC(forwardC),
        .forwardD(forwardD),
        .validA(output_branchA_valid),
        .validB(output_branchB_valid),
//        .validC(output_branchC_valid),
        .input_dataA(output_branchA),
        .input_dataB(output_branchB),
//        .input_dataC(output_branchC),
        .outOperation0(branch_buffer_op)
    );

//     buffer branch_buffer(
//         .clk(clk),
//         .flush(flush),
//         .taken({1'b0, branch_reserv_used}),
//         .forwardA(forwardA),
//         .forwardC(forwardC),
//         .forwardD(forwardD),
//         .validA(output_branchA_valid),
//         .validB(output_branchB_valid),
// //        .validC(output_branchC_valid),
//         .input_dataA(output_branchA),
//         .input_dataB(output_branchB),
// //        .input_dataC(output_branchC),
//         .outOperation0(branch_buffer_op),
//         .outOperation1()
//     );


    wire branch_operation_used;
    wire [79:0] branch_operation;
    wire branch_operation_valid;

    reservation_station branch_reservation(
        .clk(clk),
        .flush(flush),
        .forwardA(forwardA),
        .forwardB(),
        .forwardC(forwardC),
        .forwardD(forwardD),
        .inOperation(branch_buffer_op),
        .operationUsed(branch_operation_used),
        .outOperation(branch_operation),
        .outOperationValid(branch_operation_valid)
    );

    assign branch_reserv_used = branch_operation_used & branch_buffer_op[96];

    // Branch Functional Unit
    wire b_valid = branch_operation_valid;
    wire [4:0] b_opcode = branch_operation[77:73];
    wire [2:0] b_opcodeB = branch_operation[72:70];
    wire [5:0] b_rob_loc = branch_operation[69:64];
    wire [31:0] b_data_rs1 = branch_operation[63:32];
    wire [31:0] b_data_rs2 = branch_operation[31:0];
    wire [31:0] b_pc = ROB[b_rob_loc][31:0]; //potential timing issue
    wire [11:0] b_offset_s = ROBhelper[b_rob_loc][11:0];
    wire [31:0] b_offset = {{21{b_offset_s[11]}}, b_offset_s[10:0], 1'b0};

    wire [31:0] b_forward = b_pc + 4;

//    reg [31:0] b_pc_jump_b;

//    always @(*) begin
//        case(b_opcode)
//            3'b000: b_pc_jump_b = (b_data_rs1 == b_data_rs2) ? b_pc + b_offset : b_pc + 2;
//            3'b001: b_pc_jump_b = (b_data_rs1 != b_data_rs2) ? b_pc + b_offset : b_pc + 2;
//            3'b100: b_pc_jump_b = ($signed(b_data_rs1) < $signed(b_data_rs2)) ? b_pc + b_offset : b_pc + 2;
//            3'b101: b_pc_jump_b = ($signed(b_data_rs1) >= $signed(b_data_rs2)) ? b_pc + b_offset : b_pc + 2;
//            3'b110: b_pc_jump_b = (b_data_rs1 < b_data_rs2) ? b_pc + b_offset : b_pc + 2;
//            3'b111: b_pc_jump_b = (b_data_rs1 >= b_data_rs2) ? b_pc + b_offset : b_pc + 2;
//            default: b_pc_jump_b = b_pc + 2;
//        endcase
//    end

//    reg [31:0] b_pc_jump;

//    always @(*) begin
//        case(b_opcode)
//            5'b11011: b_pc_jump = b_data_rs1 + b_data_rs2;
//            5'b11001: b_pc_jump = b_data_rs1 + b_data_rs2;
//            5'b11000: b_pc_jump = b_pc_jump_b;
//            default: b_pc_jump = b_pc + 2;
//        endcase
//    end

     wire [31:0] b_pc_jump = (b_opcode == 5'b11011) ? b_data_rs1 + b_data_rs2 :
                             (b_opcode == 5'b11001) ? b_data_rs1 + b_data_rs2 : //this might have issue on decode being set right
                             (b_opcode == 5'b11000) ? 
                                 (b_opcodeB == 3'b000) ? (b_data_rs1 == b_data_rs2) ? b_pc + b_offset : b_pc + 2 :
                                 (b_opcodeB == 3'b001) ? (b_data_rs1 != b_data_rs2) ? b_pc + b_offset : b_pc + 2 :
                                 (b_opcodeB == 3'b100) ? ($signed(b_data_rs1) < $signed(b_data_rs2)) ? b_pc + b_offset : b_pc + 2 :
                                 (b_opcodeB == 3'b101) ? ($signed(b_data_rs1) >= $signed(b_data_rs2)) ? b_pc + b_offset : b_pc + 2 :
                                 (b_opcodeB == 3'b110) ? (b_data_rs1 < b_data_rs2) ? b_pc + b_offset : b_pc + 2 :
                                 (b_opcodeB == 3'b111) ? (b_data_rs1 >= b_data_rs2) ? b_pc + b_offset : b_pc + 2 :
                                 b_pc + 2 :
                                 b_pc + 2;

    
    assign forwardC = {1'b1, b_rob_loc, b_forward};
    always @(posedge clk) begin
        //ROB updates  moved lower 
        //ROBpc[b_rob_loc] <= b_pc_jump; //potential timing issue
    end
    
    
    // // // // // // // //
    //                   //
    //  Load Store Unit  //
    //                   //
    // // // // // // // //
    
    wire [95:0] output_loadA;
    wire [95:0] output_loadB;
//    wire [95:0] output_loadC;
    wire output_loadA_valid;
    wire output_loadB_valid;
//    wire output_loadC_valid;

    queue_feeder load_feeder(
        .inOperationA(output_dataA[95:0]),
        .inOperationB(output_dataB[95:0]),
//        .inOperationC(output_dataC[95:0]),
        .validA(output_locA[15] & output_locA[13]),
        .validB(output_locB[15] & output_locB[13]),
//        .validC(output_locC[15] & output_locC[13]),
        .outOperationA(output_loadA),
        .outOperationB(output_loadB),
//        .outOperationC(output_loadC),
        .outValidA(output_loadA_valid),
        .outValidB(output_loadB_valid) //,
//        .outValidC(output_loadC_valid)
    );
    
    wire [31:0] forwardAVal = forwardA[31:0];
    wire [5:0] forwardARob = forwardA[37:32];
    wire [31:0] forwardDval = forwardD[31:0];
    wire [5:0] forwardDRob = forwardD[37:32];
    

    wire [96:0] load_buffer_op;
    wire load_reserv_used;

    queue load_queue(
        .clk(clk),
        .flush(flush),
        .taken(load_reserv_used),
        .forwardA(forwardA),
        .forwardC(forwardC),
        .forwardD(forwardD),
        .validA(output_loadA_valid),
        .validB(output_loadB_valid),
//        .validC(output_loadC_valid),
        .input_dataA(output_loadA),
        .input_dataB(output_loadB),
//        .input_dataC(output_loadC),
        .outOperation0(load_buffer_op)
    );

//     buffer load_buffer(
//         .clk(clk),
//         .flush(flush),
//         .taken({1'b0, load_reserv_used}),
//         .forwardA(forwardA),
//         .forwardC(forwardC),
//         .forwardD(forwardD),
//         .validA(output_loadA_valid),
//         .validB(output_loadB_valid),
// //        .validC(output_loadC_valid),
//         .input_dataA(output_loadA),
//         .input_dataB(output_loadB),
// //        .input_dataC(output_loadC),
//         .outOperation0(load_buffer_op),
//         .outOperation1()
//     );
    
    
    //[95:94] d2_opcodeC, [93:89] d2_opcode, [88:86] d2_opcodeB, [85:80] d2_ROB_loc
    // [79:48] d2_rs1_data, [47] d2_rs1_busy, [46:41] d2_rs1_loc, [40:9] d2_rs2_data, [8] d2_rs2_busy, [7:2] d2_rs2_loc
    // [1] d2_rs1_look, [0] d2_rs2_look 
    wire lsu_used = load_buffer_op[96] == 1'b1 & load_buffer_op[1:0] == 2'b00;
    wire lsu_stall;
    assign load_reserv_used = lsu_used & !lsu_stall;
    wire [11:0] lsu_offset = ROBhelper[load_buffer_op[85:80]][11:0];
    
    reg [11:0] lsu_offset0;
    reg [79:0] inOperation0 = 0;
    
    wire [1:0] store_buffer_commit;
    
    load_store_unit lsu(
        .clk(clk), .flush(flush), .stores_to_commit(store_buffer_commit),
        .inOperation0(inOperation0), .offset0(lsu_offset0),
        .commit_data(wdata), .commit_valid(wen), .commit_loc(waddr),
        .mem_loc(raddr),
        .mem_data(rdata),
        .out_data(forwardD),
        .load_stall(lsu_stall)
    );
    
    always @(posedge clk) begin
        lsu_offset0 <= lsu_offset;
        inOperation0 <= {load_buffer_op[96] && load_buffer_op[1:0] == 2'b00, load_buffer_op[93:48], load_buffer_op[40:9]};
    end
    
    
    // // // // // //
    //             //
    // Commit Unit //
    //             //
    // // // // // //

    wire [5:0] rone_i = ROBhead;
    wire [5:0] rtwo_i = (ROBhead + 1) % ROB_SIZE;

    wire ROB_one_ready = ROB[rone_i][64] == 1'b1;
    wire ROB_two_ready = ROB[rtwo_i][64] == 1'b1;
    
    wire ROB_one_jump = ROBhelper[rone_i][19];
    wire ROB_two_jump = ROBhelper[rtwo_i][19];
    wire [31:0] ROB_one_pc = ROB[rone_i][31:0];
    wire [31:0] ROB_two_pc = ROB[rtwo_i][31:0];

    wire ROB_one_store = ROB_one_ready & ROBhelper[rone_i][17];
    wire ROB_two_store = (ROB_one_ready & !ROB_one_jump) & ROB_two_ready & ROBhelper[rtwo_i][17];

    assign flush = 1'b0;//ROB_one_jump | ROB_two_jump;


    assign r_wen0 = ROB_one_ready & ROBhelper[rone_i][18];
    assign r_waddr0 = ROBhelper[rone_i][16:12];
    assign r_wdata0 = ROB[rone_i][63:32];
    assign r_wrob0 = rone_i;

    assign r_wen1 = ROB_one_ready & ROB_two_ready & !ROB_one_jump & ROBhelper[rtwo_i][18];
    assign r_waddr1 = ROBhelper[rtwo_i][16:12];
    assign r_wdata1 = ROB[rtwo_i][63:32];
    assign r_wrob1 = rtwo_i;

    assign store_buffer_commit = ROB_one_store + ROB_two_store;
    
    always @(posedge clk) begin
        pc <= pc + 6;

        if(ROB_one_ready) begin
            if(ROB_one_jump) begin
                pc <= ROB_one_pc;
                ROBhead <= (ROBtail + 2) % ROB_SIZE;
            end
            else if(ROB_two_ready) begin
                if(ROB_two_jump) begin
                    pc <= ROB_two_pc;
                    ROBhead <= (ROBtail + 3) % ROB_SIZE;
                end
                else begin
                    ROBhead <= (ROBhead + 2) % ROB_SIZE;
                end
            end
            else begin
                ROBhead <= (ROBhead + 1) % ROB_SIZE;
            end
        end
    end
    
    always @(posedge clk) begin
        ROB[b_rob_loc][31:0] <= b_pc_jump;
        ROBhelper[b_rob_loc][19] <= ((b_pc_jump) == b_pc + 2);

        ROB[d_ROBA][31:0] <= output_pcA;
        ROB[d_ROBB][31:0] <= output_pcB;
        ROB[d_ROBC][31:0] <= output_pcC;

        ROBhelper[d_ROBA] <= {output_locA[12], output_locA[16], !output_locA[16] & output_locA[13], output_dataA[100:96], output_locA[11:0]};
        ROBhelper[d_ROBB] <= {output_locA[12], output_locB[16], !output_locB[16] & output_locB[13], output_dataB[100:96], output_locB[11:0]};
        ROBhelper[d_ROBC] <= {output_locA[12], output_locC[16], !output_locC[16] & output_locC[13], output_dataC[100:96], output_locC[11:0]};

        if(forwardA[38] == 1'b1) begin
            ROB[forwardA[37:32]][63:32] <= forwardA[31:0];
            ROB[forwardA[37:32]][64] <= 1'b1;
        end

//        if(forwardB[38] == 1'b1) begin
//            ROB[forwardB[37:32]][63:32] <= forwardB[31:0];
//            ROB[forwardB[37:32]][64] <= 1'b1;
//        end

        if(forwardC[38] == 1'b1) begin
            ROB[forwardC[37:32]][63:32] <= forwardC[31:0];
            ROB[forwardC[37:32]][64] <= 1'b1;
        end

        if(forwardD[38] == 1'b1) begin
            ROB[forwardD[37:32]][63:32] <= forwardD[31:0];
            ROB[forwardD[37:32]][64] <= 1'b1;
        end
    end
    
    always @(posedge clk) begin
        if(forwardA[38] == 1'b1) begin
            in_num <= forwardA[4:0];
            in_loc <= 2'b00;
        end

//        if(forwardB[38] == 1'b1) begin
//            in_num <= forwardB[4:0];
//            in_loc <= 2'b01;
//        end

        if(forwardC[38] == 1'b1) begin
            in_num <= forwardC[4:0];
            in_loc <= 2'b10;
        end

        if(forwardD[38] == 1'b1) begin
            in_num <= forwardD[4:0];
            in_loc <= 2'b11;
        end
    end
    
  
    
endmodule
