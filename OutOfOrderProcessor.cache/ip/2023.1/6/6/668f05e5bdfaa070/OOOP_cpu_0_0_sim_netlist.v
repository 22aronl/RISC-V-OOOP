// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Jul  8 06:45:07 2023
// Host        : DESKTOP-M2KV102 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ OOOP_cpu_0_0_sim_netlist.v
// Design      : OOOP_cpu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "OOOP_cpu_0_0,cpu,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "cpu,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    sw,
    seg,
    an,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  input [15:0]sw;
  output [6:0]seg;
  output [3:0]an;
  output [15:0]led;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]an;
  wire clk;
  wire [3:0]\^led ;
  wire [5:1]\^seg ;
  wire [15:0]sw;

  assign led[15] = \<const0> ;
  assign led[14] = \<const0> ;
  assign led[13] = \<const0> ;
  assign led[12] = \<const0> ;
  assign led[11] = \<const0> ;
  assign led[10] = \<const0> ;
  assign led[9] = \<const0> ;
  assign led[8] = \<const0> ;
  assign led[7] = \<const0> ;
  assign led[6] = \<const0> ;
  assign led[5] = \<const0> ;
  assign led[4] = \<const0> ;
  assign led[3:0] = \^led [3:0];
  assign seg[6] = \<const1> ;
  assign seg[5:4] = \^seg [5:4];
  assign seg[3] = \^seg [1];
  assign seg[2:1] = \^seg [2:1];
  assign seg[0] = \^seg [1];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu inst
       (.an(an),
        .clk(clk),
        .led(\^led ),
        .seg({\^seg [5:4],\^seg [1],\^seg [2]}),
        .sw(sw[13:0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
   (\in_num_reg[0] ,
    alu_operationA_valid,
    clk,
    in_num);
  output \in_num_reg[0] ;
  input alu_operationA_valid;
  input clk;
  input [0:0]in_num;

  wire alu_operationA_valid;
  wire clk;
  wire d2_valid_reg_n_0;
  wire [0:0]in_num;
  wire \in_num_reg[0] ;

  FDRE #(
    .INIT(1'b0)) 
    d2_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(alu_operationA_valid),
        .Q(d2_valid_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \in_num[0]_i_1 
       (.I0(in_num),
        .I1(d2_valid_reg_n_0),
        .O(\in_num_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buffer
   (\tail_reg[2]_0 ,
    Q,
    alu_buffer_opA,
    clk,
    \valid_reg[0]_0 ,
    output_aluA_valid,
    \valid_reg[16]_0 ,
    \valid_reg[29]_0 ,
    output_aluB_valid,
    output_locB,
    output_locA,
    output_locC,
    \valid_reg[5]_0 ,
    output_aluC_valid,
    D);
  output \tail_reg[2]_0 ;
  output [2:0]Q;
  output [0:0]alu_buffer_opA;
  input clk;
  input \valid_reg[0]_0 ;
  input output_aluA_valid;
  input \valid_reg[16]_0 ;
  input \valid_reg[29]_0 ;
  input output_aluB_valid;
  input [1:0]output_locB;
  input [0:0]output_locA;
  input [0:0]output_locC;
  input \valid_reg[5]_0 ;
  input output_aluC_valid;
  input [1:0]D;

  wire [1:0]D;
  wire [2:0]Q;
  wire [0:0]alu_buffer_opA;
  wire [96:96]alu_buffer_opB;
  wire clk;
  wire \committed[1]_i_10_n_0 ;
  wire \committed[1]_i_11_n_0 ;
  wire \committed[1]_i_12_n_0 ;
  wire \committed[1]_i_13_n_0 ;
  wire \committed[1]_i_14_n_0 ;
  wire \committed[1]_i_15_n_0 ;
  wire \committed[1]_i_16_n_0 ;
  wire \committed[1]_i_17_n_0 ;
  wire \committed[1]_i_18_n_0 ;
  wire \committed[1]_i_19_n_0 ;
  wire \committed[1]_i_20_n_0 ;
  wire \committed[1]_i_21_n_0 ;
  wire \committed[1]_i_22_n_0 ;
  wire \committed[1]_i_23_n_0 ;
  wire \committed[1]_i_24_n_0 ;
  wire \committed[1]_i_25_n_0 ;
  wire \committed[1]_i_26_n_0 ;
  wire \committed[1]_i_3_n_0 ;
  wire \committed[1]_i_4_n_0 ;
  wire \committed[1]_i_5_n_0 ;
  wire \committed[1]_i_6_n_0 ;
  wire \committed[1]_i_7_n_0 ;
  wire \committed[1]_i_8_n_0 ;
  wire \committed[1]_i_9_n_0 ;
  wire \head[0]_i_1_n_0 ;
  wire \head[1]_i_1_n_0 ;
  wire \head[2]_i_1_n_0 ;
  wire \head[3]_i_1_n_0 ;
  wire \head[4]_i_10_n_0 ;
  wire \head[4]_i_11_n_0 ;
  wire \head[4]_i_12_n_0 ;
  wire \head[4]_i_13_n_0 ;
  wire \head[4]_i_14_n_0 ;
  wire \head[4]_i_15_n_0 ;
  wire \head[4]_i_16_n_0 ;
  wire \head[4]_i_17_n_0 ;
  wire \head[4]_i_1_n_0 ;
  wire \head[4]_i_4_n_0 ;
  wire \head[4]_i_6_n_0 ;
  wire \head[4]_i_7_n_0 ;
  wire \head[4]_i_8_n_0 ;
  wire \head[4]_i_9_n_0 ;
  wire \head_reg_n_0_[0] ;
  wire \head_reg_n_0_[1] ;
  wire \head_reg_n_0_[2] ;
  wire \head_reg_n_0_[3] ;
  wire \head_reg_n_0_[4] ;
  wire output_aluA_valid;
  wire output_aluB_valid;
  wire output_aluC_valid;
  wire [0:0]output_locA;
  wire [1:0]output_locB;
  wire [0:0]output_locC;
  wire [1:0]p_0_out;
  wire [3:2]tail;
  wire \tail[1]_i_1_n_0 ;
  wire \tail[2]_i_1_n_0 ;
  wire \tail[3]_i_1_n_0 ;
  wire \tail[3]_i_2_n_0 ;
  wire \tail[3]_i_3_n_0 ;
  wire \tail_reg[2]_0 ;
  wire \valid[0]_i_1_n_0 ;
  wire \valid[0]_i_2_n_0 ;
  wire \valid[0]_i_3_n_0 ;
  wire \valid[0]_i_4_n_0 ;
  wire \valid[10]_i_1_n_0 ;
  wire \valid[11]_i_1_n_0 ;
  wire \valid[11]_i_2_n_0 ;
  wire \valid[12]_i_1_n_0 ;
  wire \valid[12]_i_2_n_0 ;
  wire \valid[12]_i_3_n_0 ;
  wire \valid[12]_i_4_n_0 ;
  wire \valid[12]_i_5_n_0 ;
  wire \valid[13]_i_1_n_0 ;
  wire \valid[13]_i_2_n_0 ;
  wire \valid[13]_i_3_n_0 ;
  wire \valid[13]_i_4_n_0 ;
  wire \valid[13]_i_5_n_0 ;
  wire \valid[14]_i_1_n_0 ;
  wire \valid[14]_i_2_n_0 ;
  wire \valid[14]_i_3_n_0 ;
  wire \valid[14]_i_4_n_0 ;
  wire \valid[14]_i_5_n_0 ;
  wire \valid[15]_i_1_n_0 ;
  wire \valid[15]_i_2_n_0 ;
  wire \valid[15]_i_3_n_0 ;
  wire \valid[15]_i_4_n_0 ;
  wire \valid[15]_i_6_n_0 ;
  wire \valid[16]_i_1_n_0 ;
  wire \valid[16]_i_2_n_0 ;
  wire \valid[16]_i_3_n_0 ;
  wire \valid[16]_i_4_n_0 ;
  wire \valid[16]_i_5_n_0 ;
  wire \valid[16]_i_6_n_0 ;
  wire \valid[17]_i_1_n_0 ;
  wire \valid[17]_i_2_n_0 ;
  wire \valid[17]_i_3_n_0 ;
  wire \valid[18]_i_1_n_0 ;
  wire \valid[18]_i_2_n_0 ;
  wire \valid[18]_i_3_n_0 ;
  wire \valid[18]_i_4_n_0 ;
  wire \valid[19]_i_1_n_0 ;
  wire \valid[19]_i_2_n_0 ;
  wire \valid[19]_i_3_n_0 ;
  wire \valid[1]_i_1_n_0 ;
  wire \valid[1]_i_2_n_0 ;
  wire \valid[20]_i_1_n_0 ;
  wire \valid[20]_i_2_n_0 ;
  wire \valid[20]_i_3_n_0 ;
  wire \valid[20]_i_4_n_0 ;
  wire \valid[21]_i_1_n_0 ;
  wire \valid[21]_i_2_n_0 ;
  wire \valid[21]_i_3_n_0 ;
  wire \valid[21]_i_4_n_0 ;
  wire \valid[22]_i_1_n_0 ;
  wire \valid[23]_i_1_n_0 ;
  wire \valid[24]_i_1_n_0 ;
  wire \valid[24]_i_2_n_0 ;
  wire \valid[24]_i_3_n_0 ;
  wire \valid[24]_i_4_n_0 ;
  wire \valid[24]_i_5_n_0 ;
  wire \valid[25]_i_1_n_0 ;
  wire \valid[25]_i_2_n_0 ;
  wire \valid[26]_i_1_n_0 ;
  wire \valid[27]_i_1_n_0 ;
  wire \valid[28]_i_1_n_0 ;
  wire \valid[28]_i_2_n_0 ;
  wire \valid[28]_i_3_n_0 ;
  wire \valid[29]_i_1_n_0 ;
  wire \valid[29]_i_2_n_0 ;
  wire \valid[29]_i_3_n_0 ;
  wire \valid[2]_i_1_n_0 ;
  wire \valid[30]_i_1_n_0 ;
  wire \valid[31]_i_1_n_0 ;
  wire \valid[3]_i_1_n_0 ;
  wire \valid[3]_i_2_n_0 ;
  wire \valid[4]_i_1_n_0 ;
  wire \valid[4]_i_2_n_0 ;
  wire \valid[4]_i_3_n_0 ;
  wire \valid[5]_i_1_n_0 ;
  wire \valid[5]_i_2_n_0 ;
  wire \valid[6]_i_1_n_0 ;
  wire \valid[7]_i_1_n_0 ;
  wire \valid[7]_i_2_n_0 ;
  wire \valid[8]_i_1_n_0 ;
  wire \valid[8]_i_2_n_0 ;
  wire \valid[8]_i_3_n_0 ;
  wire \valid[8]_i_4_n_0 ;
  wire \valid[8]_i_5_n_0 ;
  wire \valid[8]_i_6_n_0 ;
  wire \valid[8]_i_7_n_0 ;
  wire \valid[9]_i_1_n_0 ;
  wire \valid[9]_i_2_n_0 ;
  wire \valid[9]_i_3_n_0 ;
  wire \valid_reg[0]_0 ;
  wire \valid_reg[16]_0 ;
  wire \valid_reg[29]_0 ;
  wire \valid_reg[5]_0 ;
  wire \valid_reg_n_0_[0] ;
  wire \valid_reg_n_0_[10] ;
  wire \valid_reg_n_0_[11] ;
  wire \valid_reg_n_0_[12] ;
  wire \valid_reg_n_0_[13] ;
  wire \valid_reg_n_0_[14] ;
  wire \valid_reg_n_0_[15] ;
  wire \valid_reg_n_0_[16] ;
  wire \valid_reg_n_0_[17] ;
  wire \valid_reg_n_0_[18] ;
  wire \valid_reg_n_0_[19] ;
  wire \valid_reg_n_0_[1] ;
  wire \valid_reg_n_0_[20] ;
  wire \valid_reg_n_0_[21] ;
  wire \valid_reg_n_0_[22] ;
  wire \valid_reg_n_0_[23] ;
  wire \valid_reg_n_0_[24] ;
  wire \valid_reg_n_0_[25] ;
  wire \valid_reg_n_0_[26] ;
  wire \valid_reg_n_0_[27] ;
  wire \valid_reg_n_0_[28] ;
  wire \valid_reg_n_0_[29] ;
  wire \valid_reg_n_0_[2] ;
  wire \valid_reg_n_0_[30] ;
  wire \valid_reg_n_0_[31] ;
  wire \valid_reg_n_0_[3] ;
  wire \valid_reg_n_0_[4] ;
  wire \valid_reg_n_0_[5] ;
  wire \valid_reg_n_0_[6] ;
  wire \valid_reg_n_0_[7] ;
  wire \valid_reg_n_0_[8] ;
  wire \valid_reg_n_0_[9] ;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000A0C)) 
    \committed[1]_i_10 
       (.I0(\valid_reg_n_0_[7] ),
        .I1(\valid_reg_n_0_[3] ),
        .I2(\head_reg_n_0_[3] ),
        .I3(\head_reg_n_0_[2] ),
        .I4(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    \committed[1]_i_11 
       (.I0(\valid_reg_n_0_[31] ),
        .I1(\valid_reg_n_0_[15] ),
        .I2(\head_reg_n_0_[3] ),
        .I3(\head_reg_n_0_[2] ),
        .I4(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \committed[1]_i_12 
       (.I0(\valid_reg_n_0_[27] ),
        .I1(\valid_reg_n_0_[23] ),
        .I2(\head_reg_n_0_[3] ),
        .I3(\head_reg_n_0_[2] ),
        .I4(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \committed[1]_i_13 
       (.I0(\valid_reg_n_0_[18] ),
        .I1(\valid_reg_n_0_[10] ),
        .I2(\head_reg_n_0_[2] ),
        .I3(\head_reg_n_0_[3] ),
        .I4(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000A0C)) 
    \committed[1]_i_14 
       (.I0(\valid_reg_n_0_[6] ),
        .I1(\valid_reg_n_0_[2] ),
        .I2(\head_reg_n_0_[3] ),
        .I3(\head_reg_n_0_[2] ),
        .I4(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    \committed[1]_i_15 
       (.I0(\valid_reg_n_0_[30] ),
        .I1(\valid_reg_n_0_[14] ),
        .I2(\head_reg_n_0_[3] ),
        .I3(\head_reg_n_0_[2] ),
        .I4(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \committed[1]_i_16 
       (.I0(\valid_reg_n_0_[26] ),
        .I1(\valid_reg_n_0_[22] ),
        .I2(\head_reg_n_0_[3] ),
        .I3(\head_reg_n_0_[2] ),
        .I4(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \committed[1]_i_17 
       (.I0(\valid_reg_n_0_[17] ),
        .I1(\valid_reg_n_0_[9] ),
        .I2(\head_reg_n_0_[2] ),
        .I3(\head_reg_n_0_[3] ),
        .I4(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000A0C)) 
    \committed[1]_i_18 
       (.I0(\valid_reg_n_0_[5] ),
        .I1(\valid_reg_n_0_[1] ),
        .I2(\head_reg_n_0_[3] ),
        .I3(\head_reg_n_0_[2] ),
        .I4(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    \committed[1]_i_19 
       (.I0(\valid_reg_n_0_[29] ),
        .I1(\valid_reg_n_0_[13] ),
        .I2(\head_reg_n_0_[3] ),
        .I3(\head_reg_n_0_[2] ),
        .I4(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \committed[1]_i_2 
       (.I0(\committed[1]_i_3_n_0 ),
        .I1(\committed[1]_i_4_n_0 ),
        .I2(\committed[1]_i_5_n_0 ),
        .I3(\committed[1]_i_6_n_0 ),
        .I4(\committed[1]_i_7_n_0 ),
        .I5(\committed[1]_i_8_n_0 ),
        .O(alu_buffer_opA));
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \committed[1]_i_20 
       (.I0(\valid_reg_n_0_[25] ),
        .I1(\valid_reg_n_0_[21] ),
        .I2(\head_reg_n_0_[3] ),
        .I3(\head_reg_n_0_[2] ),
        .I4(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \committed[1]_i_21 
       (.I0(\valid_reg_n_0_[4] ),
        .I1(\head_reg_n_0_[0] ),
        .I2(\head_reg_n_0_[1] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\committed[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \committed[1]_i_22 
       (.I0(\valid_reg_n_0_[0] ),
        .I1(\head_reg_n_0_[0] ),
        .I2(\head_reg_n_0_[1] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\committed[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \committed[1]_i_23 
       (.I0(\valid_reg_n_0_[8] ),
        .I1(\head_reg_n_0_[0] ),
        .I2(\head_reg_n_0_[1] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[3] ),
        .I5(\head_reg_n_0_[2] ),
        .O(\committed[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \committed[1]_i_24 
       (.I0(\valid_reg_n_0_[12] ),
        .I1(\head_reg_n_0_[0] ),
        .I2(\head_reg_n_0_[1] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\committed[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \committed[1]_i_25 
       (.I0(\valid_reg_n_0_[16] ),
        .I1(\head_reg_n_0_[0] ),
        .I2(\head_reg_n_0_[1] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\committed[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \committed[1]_i_26 
       (.I0(\valid_reg_n_0_[20] ),
        .I1(\head_reg_n_0_[0] ),
        .I2(\head_reg_n_0_[1] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\committed[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \committed[1]_i_3 
       (.I0(\committed[1]_i_9_n_0 ),
        .I1(\committed[1]_i_10_n_0 ),
        .I2(\committed[1]_i_11_n_0 ),
        .I3(\committed[1]_i_12_n_0 ),
        .I4(\head_reg_n_0_[1] ),
        .I5(\head_reg_n_0_[0] ),
        .O(\committed[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFE00000000)) 
    \committed[1]_i_4 
       (.I0(\committed[1]_i_13_n_0 ),
        .I1(\committed[1]_i_14_n_0 ),
        .I2(\committed[1]_i_15_n_0 ),
        .I3(\committed[1]_i_16_n_0 ),
        .I4(\head_reg_n_0_[0] ),
        .I5(\head_reg_n_0_[1] ),
        .O(\committed[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFE00000000)) 
    \committed[1]_i_5 
       (.I0(\committed[1]_i_17_n_0 ),
        .I1(\committed[1]_i_18_n_0 ),
        .I2(\committed[1]_i_19_n_0 ),
        .I3(\committed[1]_i_20_n_0 ),
        .I4(\head_reg_n_0_[1] ),
        .I5(\head_reg_n_0_[0] ),
        .O(\committed[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \committed[1]_i_6 
       (.I0(\valid_reg_n_0_[28] ),
        .I1(\head_reg_n_0_[0] ),
        .I2(\head_reg_n_0_[1] ),
        .I3(\head_reg_n_0_[2] ),
        .I4(\head_reg_n_0_[3] ),
        .I5(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \committed[1]_i_7 
       (.I0(\valid_reg_n_0_[24] ),
        .I1(\head_reg_n_0_[0] ),
        .I2(\head_reg_n_0_[1] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[3] ),
        .I5(\head_reg_n_0_[2] ),
        .O(\committed[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \committed[1]_i_8 
       (.I0(\committed[1]_i_21_n_0 ),
        .I1(\committed[1]_i_22_n_0 ),
        .I2(\committed[1]_i_23_n_0 ),
        .I3(\committed[1]_i_24_n_0 ),
        .I4(\committed[1]_i_25_n_0 ),
        .I5(\committed[1]_i_26_n_0 ),
        .O(\committed[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \committed[1]_i_9 
       (.I0(\valid_reg_n_0_[19] ),
        .I1(\valid_reg_n_0_[11] ),
        .I2(\head_reg_n_0_[2] ),
        .I3(\head_reg_n_0_[3] ),
        .I4(\head_reg_n_0_[4] ),
        .O(\committed[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \head[0]_i_1 
       (.I0(\head_reg_n_0_[0] ),
        .I1(p_0_out[0]),
        .O(\head[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \head[1]_i_1 
       (.I0(\head_reg_n_0_[1] ),
        .I1(\head_reg_n_0_[0] ),
        .I2(p_0_out[0]),
        .I3(p_0_out[1]),
        .O(\head[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h56666AAA)) 
    \head[2]_i_1 
       (.I0(\head_reg_n_0_[2] ),
        .I1(p_0_out[1]),
        .I2(p_0_out[0]),
        .I3(\head_reg_n_0_[0] ),
        .I4(\head_reg_n_0_[1] ),
        .O(\head[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h666C6C6C6CCCCCCC)) 
    \head[3]_i_1 
       (.I0(\head_reg_n_0_[2] ),
        .I1(\head_reg_n_0_[3] ),
        .I2(p_0_out[1]),
        .I3(p_0_out[0]),
        .I4(\head_reg_n_0_[0] ),
        .I5(\head_reg_n_0_[1] ),
        .O(\head[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000137FEC80)) 
    \head[4]_i_1 
       (.I0(p_0_out[0]),
        .I1(\head_reg_n_0_[1] ),
        .I2(\head_reg_n_0_[0] ),
        .I3(p_0_out[1]),
        .I4(\head_reg_n_0_[4] ),
        .I5(\head[4]_i_4_n_0 ),
        .O(\head[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \head[4]_i_10 
       (.I0(\head_reg_n_0_[0] ),
        .I1(\head_reg_n_0_[1] ),
        .I2(\valid_reg_n_0_[28] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[3] ),
        .I5(\head_reg_n_0_[2] ),
        .O(\head[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \head[4]_i_11 
       (.I0(\head[4]_i_12_n_0 ),
        .I1(\head[4]_i_13_n_0 ),
        .I2(\head[4]_i_14_n_0 ),
        .I3(\head[4]_i_15_n_0 ),
        .I4(\head[4]_i_16_n_0 ),
        .I5(\head[4]_i_17_n_0 ),
        .O(\head[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \head[4]_i_12 
       (.I0(\head_reg_n_0_[0] ),
        .I1(\head_reg_n_0_[1] ),
        .I2(\valid_reg_n_0_[8] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\head[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \head[4]_i_13 
       (.I0(\head_reg_n_0_[0] ),
        .I1(\head_reg_n_0_[1] ),
        .I2(\valid_reg_n_0_[4] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\head[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \head[4]_i_14 
       (.I0(\head_reg_n_0_[0] ),
        .I1(\head_reg_n_0_[1] ),
        .I2(\valid_reg_n_0_[12] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[3] ),
        .I5(\head_reg_n_0_[2] ),
        .O(\head[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \head[4]_i_15 
       (.I0(\head_reg_n_0_[0] ),
        .I1(\head_reg_n_0_[1] ),
        .I2(\valid_reg_n_0_[16] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\head[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \head[4]_i_16 
       (.I0(\head_reg_n_0_[0] ),
        .I1(\head_reg_n_0_[1] ),
        .I2(\valid_reg_n_0_[20] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\head[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \head[4]_i_17 
       (.I0(\head_reg_n_0_[0] ),
        .I1(\head_reg_n_0_[1] ),
        .I2(\valid_reg_n_0_[24] ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\head[4]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \head[4]_i_2 
       (.I0(alu_buffer_opB),
        .I1(alu_buffer_opA),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \head[4]_i_3 
       (.I0(alu_buffer_opA),
        .I1(alu_buffer_opB),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \head[4]_i_4 
       (.I0(\head_reg_n_0_[2] ),
        .I1(\head_reg_n_0_[3] ),
        .O(\head[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \head[4]_i_5 
       (.I0(\head[4]_i_6_n_0 ),
        .I1(\head[4]_i_7_n_0 ),
        .I2(\head[4]_i_8_n_0 ),
        .I3(\head[4]_i_9_n_0 ),
        .I4(\head[4]_i_10_n_0 ),
        .I5(\head[4]_i_11_n_0 ),
        .O(alu_buffer_opB));
  LUT6 #(
    .INIT(64'h0000FFFE00000000)) 
    \head[4]_i_6 
       (.I0(\committed[1]_i_9_n_0 ),
        .I1(\committed[1]_i_10_n_0 ),
        .I2(\committed[1]_i_11_n_0 ),
        .I3(\committed[1]_i_12_n_0 ),
        .I4(\head_reg_n_0_[0] ),
        .I5(\head_reg_n_0_[1] ),
        .O(\head[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFE00000000)) 
    \head[4]_i_7 
       (.I0(\committed[1]_i_13_n_0 ),
        .I1(\committed[1]_i_14_n_0 ),
        .I2(\committed[1]_i_15_n_0 ),
        .I3(\committed[1]_i_16_n_0 ),
        .I4(\head_reg_n_0_[1] ),
        .I5(\head_reg_n_0_[0] ),
        .O(\head[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \head[4]_i_8 
       (.I0(\committed[1]_i_17_n_0 ),
        .I1(\committed[1]_i_18_n_0 ),
        .I2(\committed[1]_i_19_n_0 ),
        .I3(\committed[1]_i_20_n_0 ),
        .I4(\head_reg_n_0_[1] ),
        .I5(\head_reg_n_0_[0] ),
        .O(\head[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \head[4]_i_9 
       (.I0(\head_reg_n_0_[0] ),
        .I1(\head_reg_n_0_[1] ),
        .I2(\valid_reg_n_0_[0] ),
        .I3(\head_reg_n_0_[2] ),
        .I4(\head_reg_n_0_[3] ),
        .I5(\head_reg_n_0_[4] ),
        .O(\head[4]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \head_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\head[0]_i_1_n_0 ),
        .Q(\head_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \head_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\head[1]_i_1_n_0 ),
        .Q(\head_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \head_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\head[2]_i_1_n_0 ),
        .Q(\head_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \head_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\head[3]_i_1_n_0 ),
        .Q(\head_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \head_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\head[4]_i_1_n_0 ),
        .Q(\head_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8117FFFF7EE80000)) 
    \tail[1]_i_1 
       (.I0(Q[0]),
        .I1(output_locC),
        .I2(output_locA),
        .I3(output_locB[0]),
        .I4(output_locB[1]),
        .I5(Q[1]),
        .O(\tail[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5666666A666A6AAA)) 
    \tail[2]_i_1 
       (.I0(tail[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(output_aluC_valid),
        .I4(output_aluA_valid),
        .I5(output_aluB_valid),
        .O(\tail[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hBCB0)) 
    \tail[3]_i_1 
       (.I0(\tail[3]_i_2_n_0 ),
        .I1(tail[2]),
        .I2(tail[3]),
        .I3(\tail[3]_i_3_n_0 ),
        .O(\tail[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1557577FFFFFFFFF)) 
    \tail[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(output_locC),
        .I3(output_locA),
        .I4(output_locB[0]),
        .I5(output_locB[1]),
        .O(\tail[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0A0A080A0808000)) 
    \tail[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(output_locB[1]),
        .I3(output_locB[0]),
        .I4(output_locA),
        .I5(output_locC),
        .O(\tail[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tail[4]_i_3 
       (.I0(tail[2]),
        .I1(tail[3]),
        .O(\tail_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tail_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tail_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tail[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tail_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\tail[2]_i_1_n_0 ),
        .Q(tail[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tail_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\tail[3]_i_1_n_0 ),
        .Q(tail[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tail_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAEAEAE)) 
    \valid[0]_i_1 
       (.I0(\valid[0]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[0] ),
        .I2(\valid[0]_i_3_n_0 ),
        .I3(\valid[3]_i_2_n_0 ),
        .I4(\valid[8]_i_4_n_0 ),
        .I5(\valid[0]_i_4_n_0 ),
        .O(\valid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \valid[0]_i_2 
       (.I0(\valid_reg[0]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(tail[3]),
        .I4(tail[2]),
        .O(\valid[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \valid[0]_i_3 
       (.I0(\valid[8]_i_6_n_0 ),
        .I1(alu_buffer_opA),
        .I2(alu_buffer_opB),
        .I3(\head_reg_n_0_[2] ),
        .I4(\head_reg_n_0_[3] ),
        .I5(\head_reg_n_0_[4] ),
        .O(\valid[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00004000000040)) 
    \valid[0]_i_4 
       (.I0(Q[0]),
        .I1(output_aluA_valid),
        .I2(\valid[18]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\valid_reg[16]_0 ),
        .O(\valid[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FECCFECCFECC)) 
    \valid[10]_i_1 
       (.I0(\valid[14]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[10] ),
        .I2(\valid[14]_i_3_n_0 ),
        .I3(\valid[13]_i_2_n_0 ),
        .I4(\valid[11]_i_2_n_0 ),
        .I5(\valid[14]_i_5_n_0 ),
        .O(\valid[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FECCFECCFECC)) 
    \valid[11]_i_1 
       (.I0(\valid[15]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[11] ),
        .I2(\valid[15]_i_3_n_0 ),
        .I3(\valid[13]_i_2_n_0 ),
        .I4(\valid[15]_i_4_n_0 ),
        .I5(\valid[11]_i_2_n_0 ),
        .O(\valid[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \valid[11]_i_2 
       (.I0(\head_reg_n_0_[2] ),
        .I1(\head_reg_n_0_[3] ),
        .I2(\head_reg_n_0_[4] ),
        .O(\valid[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFAFEFEFEFEFEFE)) 
    \valid[12]_i_1 
       (.I0(\valid[12]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[12] ),
        .I2(\valid[12]_i_3_n_0 ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[3] ),
        .I5(\valid[12]_i_4_n_0 ),
        .O(\valid[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \valid[12]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\valid_reg[0]_0 ),
        .I3(tail[2]),
        .I4(tail[3]),
        .O(\valid[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \valid[12]_i_3 
       (.I0(\valid[12]_i_5_n_0 ),
        .I1(Q[2]),
        .O(\valid[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01108000)) 
    \valid[12]_i_4 
       (.I0(\head_reg_n_0_[0] ),
        .I1(\head_reg_n_0_[1] ),
        .I2(alu_buffer_opB),
        .I3(alu_buffer_opA),
        .I4(\head_reg_n_0_[2] ),
        .O(\valid[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1810080000000000)) 
    \valid[12]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(tail[2]),
        .I3(output_aluB_valid),
        .I4(output_aluA_valid),
        .I5(tail[3]),
        .O(\valid[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF88FFF8FFF8FFF8)) 
    \valid[13]_i_1 
       (.I0(\valid[13]_i_2_n_0 ),
        .I1(\valid[13]_i_3_n_0 ),
        .I2(\valid_reg_n_0_[13] ),
        .I3(\valid[13]_i_4_n_0 ),
        .I4(\valid[13]_i_5_n_0 ),
        .I5(\valid[14]_i_4_n_0 ),
        .O(\valid[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \valid[13]_i_2 
       (.I0(tail[3]),
        .I1(tail[2]),
        .O(\valid[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \valid[13]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\valid_reg[5]_0 ),
        .O(\valid[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \valid[13]_i_4 
       (.I0(\valid_reg[29]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(tail[3]),
        .I4(tail[2]),
        .O(\valid[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0068)) 
    \valid[13]_i_5 
       (.I0(alu_buffer_opA),
        .I1(alu_buffer_opB),
        .I2(\head_reg_n_0_[0] ),
        .I3(\head_reg_n_0_[1] ),
        .O(\valid[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FACCFECCFECCFE)) 
    \valid[14]_i_1 
       (.I0(\valid[14]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[14] ),
        .I2(\valid[14]_i_3_n_0 ),
        .I3(\tail_reg[2]_0 ),
        .I4(\valid[14]_i_4_n_0 ),
        .I5(\valid[14]_i_5_n_0 ),
        .O(\valid[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \valid[14]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\valid_reg[0]_0 ),
        .O(\valid[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004A40)) 
    \valid[14]_i_3 
       (.I0(Q[1]),
        .I1(output_aluB_valid),
        .I2(Q[0]),
        .I3(output_aluA_valid),
        .I4(Q[2]),
        .O(\valid[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \valid[14]_i_4 
       (.I0(\head_reg_n_0_[3] ),
        .I1(\head_reg_n_0_[2] ),
        .I2(\head_reg_n_0_[4] ),
        .O(\valid[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0860)) 
    \valid[14]_i_5 
       (.I0(alu_buffer_opB),
        .I1(alu_buffer_opA),
        .I2(\head_reg_n_0_[1] ),
        .I3(\head_reg_n_0_[0] ),
        .O(\valid[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FACCFECCFECCFE)) 
    \valid[15]_i_1 
       (.I0(\valid[15]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[15] ),
        .I2(\valid[15]_i_3_n_0 ),
        .I3(\tail_reg[2]_0 ),
        .I4(\valid[15]_i_4_n_0 ),
        .I5(\valid[14]_i_4_n_0 ),
        .O(\valid[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \valid[15]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\valid_reg[5]_0 ),
        .O(\valid[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888088808000)) 
    \valid[15]_i_3 
       (.I0(\valid[15]_i_6_n_0 ),
        .I1(output_locB[1]),
        .I2(output_locB[0]),
        .I3(output_locA),
        .I4(output_locC),
        .I5(Q[0]),
        .O(\valid[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6800)) 
    \valid[15]_i_4 
       (.I0(alu_buffer_opA),
        .I1(alu_buffer_opB),
        .I2(\head_reg_n_0_[0] ),
        .I3(\head_reg_n_0_[1] ),
        .O(\valid[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \valid[15]_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\valid[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAEEE)) 
    \valid[16]_i_1 
       (.I0(\valid[16]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[16] ),
        .I2(\valid[16]_i_3_n_0 ),
        .I3(\valid[14]_i_4_n_0 ),
        .I4(\valid[16]_i_4_n_0 ),
        .I5(\valid[16]_i_5_n_0 ),
        .O(\valid[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \valid[16]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\valid_reg[0]_0 ),
        .I3(tail[3]),
        .I4(tail[2]),
        .O(\valid[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \valid[16]_i_3 
       (.I0(alu_buffer_opB),
        .I1(alu_buffer_opA),
        .I2(\head_reg_n_0_[1] ),
        .I3(\head_reg_n_0_[0] ),
        .O(\valid[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \valid[16]_i_4 
       (.I0(\valid[16]_i_6_n_0 ),
        .I1(alu_buffer_opB),
        .I2(alu_buffer_opA),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\valid[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0040FF0000400000)) 
    \valid[16]_i_5 
       (.I0(Q[0]),
        .I1(output_aluA_valid),
        .I2(\valid[18]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\valid_reg[16]_0 ),
        .O(\valid[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \valid[16]_i_6 
       (.I0(\head_reg_n_0_[0] ),
        .I1(\head_reg_n_0_[1] ),
        .O(\valid[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF44FFF4FFF4FFF4)) 
    \valid[17]_i_1 
       (.I0(\tail_reg[2]_0 ),
        .I1(\valid[13]_i_3_n_0 ),
        .I2(\valid_reg_n_0_[17] ),
        .I3(\valid[17]_i_2_n_0 ),
        .I4(\valid[13]_i_5_n_0 ),
        .I5(\valid[17]_i_3_n_0 ),
        .O(\valid[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \valid[17]_i_2 
       (.I0(\valid_reg[29]_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(tail[3]),
        .I4(tail[2]),
        .O(\valid[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \valid[17]_i_3 
       (.I0(\head_reg_n_0_[3] ),
        .I1(\head_reg_n_0_[2] ),
        .I2(\head_reg_n_0_[4] ),
        .O(\valid[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FECCFECCFECC)) 
    \valid[18]_i_1 
       (.I0(\valid[18]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[18] ),
        .I2(\valid[18]_i_3_n_0 ),
        .I3(\valid[18]_i_4_n_0 ),
        .I4(\valid[17]_i_3_n_0 ),
        .I5(\valid[14]_i_5_n_0 ),
        .O(\valid[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \valid[18]_i_2 
       (.I0(\valid_reg[0]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\valid[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h4A400000)) 
    \valid[18]_i_3 
       (.I0(Q[1]),
        .I1(output_aluB_valid),
        .I2(Q[0]),
        .I3(output_aluA_valid),
        .I4(Q[2]),
        .O(\valid[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \valid[18]_i_4 
       (.I0(tail[2]),
        .I1(tail[3]),
        .O(\valid[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FECCFECCFECC)) 
    \valid[19]_i_1 
       (.I0(\valid[19]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[19] ),
        .I2(\valid[19]_i_3_n_0 ),
        .I3(\valid[18]_i_4_n_0 ),
        .I4(\valid[15]_i_4_n_0 ),
        .I5(\valid[17]_i_3_n_0 ),
        .O(\valid[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \valid[19]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\valid_reg[5]_0 ),
        .O(\valid[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h88800080)) 
    \valid[19]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(output_aluB_valid),
        .I3(Q[0]),
        .I4(output_aluA_valid),
        .O(\valid[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF44FFF4FFF4FFF4)) 
    \valid[1]_i_1 
       (.I0(\tail_reg[2]_0 ),
        .I1(\valid[21]_i_2_n_0 ),
        .I2(\valid_reg_n_0_[1] ),
        .I3(\valid[1]_i_2_n_0 ),
        .I4(\valid[13]_i_5_n_0 ),
        .I5(\valid[3]_i_2_n_0 ),
        .O(\valid[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \valid[1]_i_2 
       (.I0(\valid_reg[29]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(tail[3]),
        .I4(tail[2]),
        .O(\valid[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFAFEFEFEFEFEFE)) 
    \valid[20]_i_1 
       (.I0(\valid[20]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[20] ),
        .I2(\valid[20]_i_3_n_0 ),
        .I3(\head_reg_n_0_[3] ),
        .I4(\head_reg_n_0_[4] ),
        .I5(\valid[12]_i_4_n_0 ),
        .O(\valid[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \valid[20]_i_2 
       (.I0(\valid_reg[0]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(tail[3]),
        .I4(tail[2]),
        .O(\valid[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \valid[20]_i_3 
       (.I0(\valid[20]_i_4_n_0 ),
        .I1(Q[2]),
        .O(\valid[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000018100800)) 
    \valid[20]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(tail[2]),
        .I3(output_aluB_valid),
        .I4(output_aluA_valid),
        .I5(tail[3]),
        .O(\valid[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF88FFF8FFF8FFF8)) 
    \valid[21]_i_1 
       (.I0(\valid[18]_i_4_n_0 ),
        .I1(\valid[21]_i_2_n_0 ),
        .I2(\valid_reg_n_0_[21] ),
        .I3(\valid[21]_i_3_n_0 ),
        .I4(\valid[13]_i_5_n_0 ),
        .I5(\valid[21]_i_4_n_0 ),
        .O(\valid[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \valid[21]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\valid_reg[5]_0 ),
        .O(\valid[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \valid[21]_i_3 
       (.I0(\valid_reg[29]_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(tail[3]),
        .I4(tail[2]),
        .O(\valid[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \valid[21]_i_4 
       (.I0(\head_reg_n_0_[3] ),
        .I1(\head_reg_n_0_[2] ),
        .I2(\head_reg_n_0_[4] ),
        .O(\valid[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FECCFECCFECC)) 
    \valid[22]_i_1 
       (.I0(\valid[18]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[22] ),
        .I2(\valid[18]_i_3_n_0 ),
        .I3(\valid[9]_i_2_n_0 ),
        .I4(\valid[21]_i_4_n_0 ),
        .I5(\valid[14]_i_5_n_0 ),
        .O(\valid[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FECCFECCFECC)) 
    \valid[23]_i_1 
       (.I0(\valid[19]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[23] ),
        .I2(\valid[19]_i_3_n_0 ),
        .I3(\valid[9]_i_2_n_0 ),
        .I4(\valid[15]_i_4_n_0 ),
        .I5(\valid[21]_i_4_n_0 ),
        .O(\valid[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAEAEAE)) 
    \valid[24]_i_1 
       (.I0(\valid[24]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[24] ),
        .I2(\valid[24]_i_3_n_0 ),
        .I3(\valid[24]_i_4_n_0 ),
        .I4(\valid[8]_i_4_n_0 ),
        .I5(\valid[24]_i_5_n_0 ),
        .O(\valid[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \valid[24]_i_2 
       (.I0(\valid_reg[0]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(tail[3]),
        .I4(tail[2]),
        .O(\valid[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \valid[24]_i_3 
       (.I0(\valid[8]_i_6_n_0 ),
        .I1(alu_buffer_opA),
        .I2(alu_buffer_opB),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\valid[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \valid[24]_i_4 
       (.I0(\head_reg_n_0_[2] ),
        .I1(\head_reg_n_0_[3] ),
        .I2(\head_reg_n_0_[4] ),
        .O(\valid[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \valid[24]_i_5 
       (.I0(\valid[8]_i_7_n_0 ),
        .I1(Q[2]),
        .O(\valid[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF88FFF8FFF8FFF8)) 
    \valid[25]_i_1 
       (.I0(\valid[9]_i_2_n_0 ),
        .I1(\valid[21]_i_2_n_0 ),
        .I2(\valid_reg_n_0_[25] ),
        .I3(\valid[25]_i_2_n_0 ),
        .I4(\valid[13]_i_5_n_0 ),
        .I5(\valid[24]_i_4_n_0 ),
        .O(\valid[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \valid[25]_i_2 
       (.I0(\valid_reg[29]_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(tail[2]),
        .I4(tail[3]),
        .O(\valid[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FECCFECCFECC)) 
    \valid[26]_i_1 
       (.I0(\valid[18]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[26] ),
        .I2(\valid[18]_i_3_n_0 ),
        .I3(\valid[13]_i_2_n_0 ),
        .I4(\valid[24]_i_4_n_0 ),
        .I5(\valid[14]_i_5_n_0 ),
        .O(\valid[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FECCFECCFECC)) 
    \valid[27]_i_1 
       (.I0(\valid[19]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[27] ),
        .I2(\valid[19]_i_3_n_0 ),
        .I3(\valid[13]_i_2_n_0 ),
        .I4(\valid[15]_i_4_n_0 ),
        .I5(\valid[24]_i_4_n_0 ),
        .O(\valid[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAFEFEFEFEFEFEFE)) 
    \valid[28]_i_1 
       (.I0(\valid[28]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[28] ),
        .I2(\valid[28]_i_3_n_0 ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[3] ),
        .I5(\valid[12]_i_4_n_0 ),
        .O(\valid[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \valid[28]_i_2 
       (.I0(\valid_reg[0]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(tail[2]),
        .I4(tail[3]),
        .O(\valid[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \valid[28]_i_3 
       (.I0(\valid[12]_i_5_n_0 ),
        .I1(Q[2]),
        .O(\valid[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF88FFF8FFF8FFF8)) 
    \valid[29]_i_1 
       (.I0(\valid[13]_i_2_n_0 ),
        .I1(\valid[21]_i_2_n_0 ),
        .I2(\valid_reg_n_0_[29] ),
        .I3(\valid[29]_i_2_n_0 ),
        .I4(\valid[13]_i_5_n_0 ),
        .I5(\valid[29]_i_3_n_0 ),
        .O(\valid[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \valid[29]_i_2 
       (.I0(\valid_reg[29]_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(tail[3]),
        .I4(tail[2]),
        .O(\valid[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \valid[29]_i_3 
       (.I0(\head_reg_n_0_[4] ),
        .I1(\head_reg_n_0_[3] ),
        .I2(\head_reg_n_0_[2] ),
        .O(\valid[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FECCFECCFECC)) 
    \valid[2]_i_1 
       (.I0(\valid[14]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[2] ),
        .I2(\valid[14]_i_3_n_0 ),
        .I3(\valid[18]_i_4_n_0 ),
        .I4(\valid[3]_i_2_n_0 ),
        .I5(\valid[14]_i_5_n_0 ),
        .O(\valid[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FACCFECCFECCFE)) 
    \valid[30]_i_1 
       (.I0(\valid[18]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[30] ),
        .I2(\valid[18]_i_3_n_0 ),
        .I3(\tail_reg[2]_0 ),
        .I4(\valid[29]_i_3_n_0 ),
        .I5(\valid[14]_i_5_n_0 ),
        .O(\valid[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FACCFECCFECCFE)) 
    \valid[31]_i_1 
       (.I0(\valid[19]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[31] ),
        .I2(\valid[19]_i_3_n_0 ),
        .I3(\tail_reg[2]_0 ),
        .I4(\valid[15]_i_4_n_0 ),
        .I5(\valid[29]_i_3_n_0 ),
        .O(\valid[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FECCFECCFECC)) 
    \valid[3]_i_1 
       (.I0(\valid[15]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[3] ),
        .I2(\valid[15]_i_3_n_0 ),
        .I3(\valid[18]_i_4_n_0 ),
        .I4(\valid[15]_i_4_n_0 ),
        .I5(\valid[3]_i_2_n_0 ),
        .O(\valid[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \valid[3]_i_2 
       (.I0(\head_reg_n_0_[3] ),
        .I1(\head_reg_n_0_[2] ),
        .I2(\head_reg_n_0_[4] ),
        .O(\valid[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFAFEFEFEFE)) 
    \valid[4]_i_1 
       (.I0(\valid[4]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[4] ),
        .I2(\valid[4]_i_3_n_0 ),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[3] ),
        .I5(\valid[12]_i_4_n_0 ),
        .O(\valid[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \valid[4]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\valid_reg[0]_0 ),
        .I3(tail[3]),
        .I4(tail[2]),
        .O(\valid[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \valid[4]_i_3 
       (.I0(\valid[20]_i_4_n_0 ),
        .I1(Q[2]),
        .O(\valid[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF88FFF8FFF8FFF8)) 
    \valid[5]_i_1 
       (.I0(\valid[18]_i_4_n_0 ),
        .I1(\valid[13]_i_3_n_0 ),
        .I2(\valid_reg_n_0_[5] ),
        .I3(\valid[5]_i_2_n_0 ),
        .I4(\valid[13]_i_5_n_0 ),
        .I5(\valid[7]_i_2_n_0 ),
        .O(\valid[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \valid[5]_i_2 
       (.I0(\valid_reg[29]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(tail[3]),
        .I4(tail[2]),
        .O(\valid[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FECCFECCFECC)) 
    \valid[6]_i_1 
       (.I0(\valid[14]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[6] ),
        .I2(\valid[14]_i_3_n_0 ),
        .I3(\valid[9]_i_2_n_0 ),
        .I4(\valid[7]_i_2_n_0 ),
        .I5(\valid[14]_i_5_n_0 ),
        .O(\valid[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FECCFECCFECC)) 
    \valid[7]_i_1 
       (.I0(\valid[15]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[7] ),
        .I2(\valid[15]_i_3_n_0 ),
        .I3(\valid[9]_i_2_n_0 ),
        .I4(\valid[15]_i_4_n_0 ),
        .I5(\valid[7]_i_2_n_0 ),
        .O(\valid[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \valid[7]_i_2 
       (.I0(\head_reg_n_0_[3] ),
        .I1(\head_reg_n_0_[2] ),
        .I2(\head_reg_n_0_[4] ),
        .O(\valid[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAEAEAE)) 
    \valid[8]_i_1 
       (.I0(\valid[8]_i_2_n_0 ),
        .I1(\valid_reg_n_0_[8] ),
        .I2(\valid[8]_i_3_n_0 ),
        .I3(\valid[11]_i_2_n_0 ),
        .I4(\valid[8]_i_4_n_0 ),
        .I5(\valid[8]_i_5_n_0 ),
        .O(\valid[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \valid[8]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\valid_reg[0]_0 ),
        .I3(tail[3]),
        .I4(tail[2]),
        .O(\valid[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \valid[8]_i_3 
       (.I0(\valid[8]_i_6_n_0 ),
        .I1(alu_buffer_opA),
        .I2(alu_buffer_opB),
        .I3(\head_reg_n_0_[4] ),
        .I4(\head_reg_n_0_[2] ),
        .I5(\head_reg_n_0_[3] ),
        .O(\valid[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \valid[8]_i_4 
       (.I0(alu_buffer_opA),
        .I1(alu_buffer_opB),
        .I2(\head_reg_n_0_[1] ),
        .I3(\head_reg_n_0_[0] ),
        .O(\valid[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \valid[8]_i_5 
       (.I0(\valid[8]_i_7_n_0 ),
        .I1(Q[2]),
        .O(\valid[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \valid[8]_i_6 
       (.I0(\head_reg_n_0_[0] ),
        .I1(\head_reg_n_0_[1] ),
        .O(\valid[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0C000000000000A0)) 
    \valid[8]_i_7 
       (.I0(output_aluA_valid),
        .I1(output_aluB_valid),
        .I2(tail[3]),
        .I3(tail[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\valid[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF88FFF8FFF8FFF8)) 
    \valid[9]_i_1 
       (.I0(\valid[9]_i_2_n_0 ),
        .I1(\valid[13]_i_3_n_0 ),
        .I2(\valid_reg_n_0_[9] ),
        .I3(\valid[9]_i_3_n_0 ),
        .I4(\valid[13]_i_5_n_0 ),
        .I5(\valid[11]_i_2_n_0 ),
        .O(\valid[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \valid[9]_i_2 
       (.I0(tail[2]),
        .I1(tail[3]),
        .O(\valid[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \valid[9]_i_3 
       (.I0(\valid_reg[29]_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(tail[2]),
        .I4(tail[3]),
        .O(\valid[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[0]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[10]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[11]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[12]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[13]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[14]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[15]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[16]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[17]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[18]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[19]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[1]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[20]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[21]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[22]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[23]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[24]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[25]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[26]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[27]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[28]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[29]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[2]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[30]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[31]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[3]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[4]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[5]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[6]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[7]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[8]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\valid[9]_i_1_n_0 ),
        .Q(\valid_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu
   (an,
    led,
    seg,
    clk,
    sw);
  output [3:0]an;
  output [3:0]led;
  output [3:0]seg;
  input clk;
  input [13:0]sw;

  wire aluA_n_0;
  wire alu_buffer_n_0;
  wire [96:96]alu_buffer_opA;
  wire alu_operationA_valid;
  wire [3:0]an;
  wire clk;
  wire d2_is_alu0;
  wire d2_is_alu0_0;
  wire d2_is_alu0_1;
  wire d3_validA;
  wire decoderB_n_2;
  wire decoderB_n_3;
  wire decoderB_n_4;
  wire decoderB_n_5;
  wire decoderB_n_6;
  wire decoderB_n_7;
  wire [0:0]in_num;
  wire [3:0]led;
  wire mem_n_1;
  wire mem_n_2;
  wire mem_n_3;
  wire mem_n_4;
  wire output_aluA_valid;
  wire output_aluB_valid;
  wire output_aluC_valid;
  wire [14:14]output_locA;
  wire [15:14]output_locB;
  wire [14:14]output_locC;
  wire \pc[1]_i_2_n_0 ;
  wire \pc[1]_i_3_n_0 ;
  wire \pc_reg[13]_i_1_n_0 ;
  wire \pc_reg[13]_i_1_n_1 ;
  wire \pc_reg[13]_i_1_n_2 ;
  wire \pc_reg[13]_i_1_n_3 ;
  wire \pc_reg[13]_i_1_n_4 ;
  wire \pc_reg[13]_i_1_n_5 ;
  wire \pc_reg[13]_i_1_n_6 ;
  wire \pc_reg[13]_i_1_n_7 ;
  wire \pc_reg[1]_i_1_n_0 ;
  wire \pc_reg[1]_i_1_n_1 ;
  wire \pc_reg[1]_i_1_n_2 ;
  wire \pc_reg[1]_i_1_n_3 ;
  wire \pc_reg[1]_i_1_n_4 ;
  wire \pc_reg[1]_i_1_n_5 ;
  wire \pc_reg[1]_i_1_n_6 ;
  wire \pc_reg[1]_i_1_n_7 ;
  wire \pc_reg[5]_i_1_n_0 ;
  wire \pc_reg[5]_i_1_n_1 ;
  wire \pc_reg[5]_i_1_n_2 ;
  wire \pc_reg[5]_i_1_n_3 ;
  wire \pc_reg[5]_i_1_n_4 ;
  wire \pc_reg[5]_i_1_n_5 ;
  wire \pc_reg[5]_i_1_n_6 ;
  wire \pc_reg[5]_i_1_n_7 ;
  wire \pc_reg[9]_i_1_n_0 ;
  wire \pc_reg[9]_i_1_n_1 ;
  wire \pc_reg[9]_i_1_n_2 ;
  wire \pc_reg[9]_i_1_n_3 ;
  wire \pc_reg[9]_i_1_n_4 ;
  wire \pc_reg[9]_i_1_n_5 ;
  wire \pc_reg[9]_i_1_n_6 ;
  wire \pc_reg[9]_i_1_n_7 ;
  wire \pc_reg_n_0_[15] ;
  wire \pc_reg_n_0_[16] ;
  wire [14:1]raddr0;
  wire [3:0]seg;
  wire [13:0]sw;
  wire [4:0]tail;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu aluA
       (.alu_operationA_valid(alu_operationA_valid),
        .clk(clk),
        .in_num(in_num),
        .\in_num_reg[0] (aluA_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buffer alu_buffer
       (.D({decoderB_n_2,decoderB_n_3}),
        .Q({tail[4],tail[1:0]}),
        .alu_buffer_opA(alu_buffer_opA),
        .clk(clk),
        .output_aluA_valid(output_aluA_valid),
        .output_aluB_valid(output_aluB_valid),
        .output_aluC_valid(output_aluC_valid),
        .output_locA(output_locA),
        .output_locB(output_locB),
        .output_locC(output_locC),
        .\tail_reg[2]_0 (alu_buffer_n_0),
        .\valid_reg[0]_0 (decoderB_n_6),
        .\valid_reg[16]_0 (decoderB_n_5),
        .\valid_reg[29]_0 (decoderB_n_4),
        .\valid_reg[5]_0 (decoderB_n_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reservation_station alu_reservationA
       (.alu_buffer_opA(alu_buffer_opA),
        .alu_operationA_valid(alu_operationA_valid),
        .clk(clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decoder decoderA
       (.clk(clk),
        .d2_is_alu0(d2_is_alu0_1),
        .output_locA(output_locA));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decoder_0 decoderB
       (.D({decoderB_n_2,decoderB_n_3}),
        .Q({tail[4],tail[1:0]}),
        .clk(clk),
        .d2_is_alu0(d2_is_alu0_0),
        .d2_is_alu_reg_0(decoderB_n_5),
        .d2_valid_reg_0(decoderB_n_6),
        .d3_validA(d3_validA),
        .output_aluA_valid(output_aluA_valid),
        .output_aluB_valid(output_aluB_valid),
        .output_aluC_valid(output_aluC_valid),
        .output_locA(output_locA),
        .output_locB(output_locB),
        .output_locC(output_locC),
        .\tail_reg[0] (decoderB_n_4),
        .\tail_reg[0]_0 (decoderB_n_7),
        .\tail_reg[4] (alu_buffer_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decoder_1 decoderC
       (.clk(clk),
        .d2_is_alu0(d2_is_alu0),
        .output_locC(output_locC));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_display display
       (.an(an),
        .clk(clk),
        .in_num(in_num),
        .seg(seg));
  FDRE #(
    .INIT(1'b0)) 
    \in_num_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(aluA_n_0),
        .Q(in_num),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_light_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_n_4),
        .Q(led[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_light_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_n_3),
        .Q(led[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_light_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_n_2),
        .Q(led[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_light_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(mem_n_1),
        .Q(led[3]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem mem
       (.clk(clk),
        .d2_is_alu0(d2_is_alu0_1),
        .d2_is_alu0_0(d2_is_alu0_0),
        .d2_is_alu0_1(d2_is_alu0),
        .d3_validA(d3_validA),
        .led(led),
        .\led_light_reg[0] (mem_n_4),
        .\led_light_reg[1] (mem_n_3),
        .\led_light_reg[2] (mem_n_2),
        .\led_light_reg[3] (mem_n_1),
        .out({\pc_reg_n_0_[16] ,\pc_reg_n_0_[15] ,raddr0}),
        .sw(sw));
  LUT1 #(
    .INIT(2'h1)) 
    \pc[1]_i_2 
       (.I0(raddr0[2]),
        .O(\pc[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pc[1]_i_3 
       (.I0(raddr0[1]),
        .O(\pc[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[9]_i_1_n_6 ),
        .Q(raddr0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[9]_i_1_n_5 ),
        .Q(raddr0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[9]_i_1_n_4 ),
        .Q(raddr0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[13]_i_1_n_7 ),
        .Q(raddr0[13]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[13]_i_1 
       (.CI(\pc_reg[9]_i_1_n_0 ),
        .CO({\pc_reg[13]_i_1_n_0 ,\pc_reg[13]_i_1_n_1 ,\pc_reg[13]_i_1_n_2 ,\pc_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[13]_i_1_n_4 ,\pc_reg[13]_i_1_n_5 ,\pc_reg[13]_i_1_n_6 ,\pc_reg[13]_i_1_n_7 }),
        .S({\pc_reg_n_0_[16] ,\pc_reg_n_0_[15] ,raddr0[14:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[13]_i_1_n_6 ),
        .Q(raddr0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[13]_i_1_n_5 ),
        .Q(\pc_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[13]_i_1_n_4 ),
        .Q(\pc_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[1]_i_1_n_7 ),
        .Q(raddr0[1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\pc_reg[1]_i_1_n_0 ,\pc_reg[1]_i_1_n_1 ,\pc_reg[1]_i_1_n_2 ,\pc_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\pc_reg[1]_i_1_n_4 ,\pc_reg[1]_i_1_n_5 ,\pc_reg[1]_i_1_n_6 ,\pc_reg[1]_i_1_n_7 }),
        .S({raddr0[4:3],\pc[1]_i_2_n_0 ,\pc[1]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[1]_i_1_n_6 ),
        .Q(raddr0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[1]_i_1_n_5 ),
        .Q(raddr0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[1]_i_1_n_4 ),
        .Q(raddr0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[5]_i_1_n_7 ),
        .Q(raddr0[5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[5]_i_1 
       (.CI(\pc_reg[1]_i_1_n_0 ),
        .CO({\pc_reg[5]_i_1_n_0 ,\pc_reg[5]_i_1_n_1 ,\pc_reg[5]_i_1_n_2 ,\pc_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[5]_i_1_n_4 ,\pc_reg[5]_i_1_n_5 ,\pc_reg[5]_i_1_n_6 ,\pc_reg[5]_i_1_n_7 }),
        .S(raddr0[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[5]_i_1_n_6 ),
        .Q(raddr0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[5]_i_1_n_5 ),
        .Q(raddr0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[5]_i_1_n_4 ),
        .Q(raddr0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[9]_i_1_n_7 ),
        .Q(raddr0[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[9]_i_1 
       (.CI(\pc_reg[5]_i_1_n_0 ),
        .CO({\pc_reg[9]_i_1_n_0 ,\pc_reg[9]_i_1_n_1 ,\pc_reg[9]_i_1_n_2 ,\pc_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[9]_i_1_n_4 ,\pc_reg[9]_i_1_n_5 ,\pc_reg[9]_i_1_n_6 ,\pc_reg[9]_i_1_n_7 }),
        .S(raddr0[12:9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decoder
   (output_locA,
    d2_is_alu0,
    clk);
  output [0:0]output_locA;
  input d2_is_alu0;
  input clk;

  wire clk;
  wire d2_is_alu0;
  wire [0:0]output_locA;

  FDRE #(
    .INIT(1'b0)) 
    d2_is_alu_reg
       (.C(clk),
        .CE(1'b1),
        .D(d2_is_alu0),
        .Q(output_locA),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "decoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decoder_0
   (output_locB,
    D,
    \tail_reg[0] ,
    d2_is_alu_reg_0,
    d2_valid_reg_0,
    \tail_reg[0]_0 ,
    output_aluC_valid,
    output_aluB_valid,
    output_aluA_valid,
    d2_is_alu0,
    clk,
    d3_validA,
    \tail_reg[4] ,
    Q,
    output_locC,
    output_locA);
  output [1:0]output_locB;
  output [1:0]D;
  output \tail_reg[0] ;
  output d2_is_alu_reg_0;
  output d2_valid_reg_0;
  output \tail_reg[0]_0 ;
  output output_aluC_valid;
  output output_aluB_valid;
  output output_aluA_valid;
  input d2_is_alu0;
  input clk;
  input d3_validA;
  input \tail_reg[4] ;
  input [2:0]Q;
  input [0:0]output_locC;
  input [0:0]output_locA;

  wire [1:0]D;
  wire [2:0]Q;
  wire clk;
  wire d2_is_alu0;
  wire d2_is_alu_reg_0;
  wire d2_valid_reg_0;
  wire d3_validA;
  wire output_aluA_valid;
  wire output_aluB_valid;
  wire output_aluC_valid;
  wire [0:0]output_locA;
  wire [1:0]output_locB;
  wire [0:0]output_locC;
  wire \tail[4]_i_2_n_0 ;
  wire \tail[4]_i_4_n_0 ;
  wire \tail_reg[0] ;
  wire \tail_reg[0]_0 ;
  wire \tail_reg[4] ;

  FDRE #(
    .INIT(1'b0)) 
    d2_is_alu_reg
       (.C(clk),
        .CE(1'b1),
        .D(d2_is_alu0),
        .Q(output_locB[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    d2_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(d3_validA),
        .Q(output_locB[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h6996AAAA)) 
    \tail[0]_i_1 
       (.I0(Q[0]),
        .I1(output_locC),
        .I2(output_locA),
        .I3(output_locB[0]),
        .I4(output_locB[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \tail[2]_i_2 
       (.I0(output_locC),
        .I1(output_locA),
        .I2(output_locB[0]),
        .I3(output_locB[1]),
        .O(output_aluC_valid));
  LUT4 #(
    .INIT(16'hF0E0)) 
    \tail[2]_i_3 
       (.I0(output_locC),
        .I1(output_locB[0]),
        .I2(output_locB[1]),
        .I3(output_locA),
        .O(output_aluA_valid));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hE800)) 
    \tail[2]_i_4 
       (.I0(output_locC),
        .I1(output_locA),
        .I2(output_locB[0]),
        .I3(output_locB[1]),
        .O(output_aluB_valid));
  LUT6 #(
    .INIT(64'hF3C3F1C1F1E1F1E1)) 
    \tail[4]_i_1 
       (.I0(\tail[4]_i_2_n_0 ),
        .I1(\tail_reg[4] ),
        .I2(Q[2]),
        .I3(\tail[4]_i_4_n_0 ),
        .I4(\tail_reg[0] ),
        .I5(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \tail[4]_i_2 
       (.I0(output_locC),
        .I1(output_locA),
        .I2(output_locB[0]),
        .I3(output_locB[1]),
        .I4(Q[0]),
        .O(\tail[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h5557577F)) 
    \tail[4]_i_4 
       (.I0(output_locB[1]),
        .I1(output_locB[0]),
        .I2(output_locA),
        .I3(output_locC),
        .I4(Q[0]),
        .O(\tail[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFEE80000)) 
    \tail[4]_i_5 
       (.I0(Q[0]),
        .I1(output_locC),
        .I2(output_locA),
        .I3(output_locB[0]),
        .I4(output_locB[1]),
        .O(\tail_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \valid[14]_i_6 
       (.I0(output_locB[1]),
        .I1(output_locB[0]),
        .I2(output_locA),
        .I3(output_locC),
        .I4(Q[0]),
        .O(d2_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \valid[15]_i_5 
       (.I0(Q[0]),
        .I1(output_locB[1]),
        .I2(output_locB[0]),
        .I3(output_locA),
        .I4(output_locC),
        .O(\tail_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00000000E8000000)) 
    \valid[16]_i_7 
       (.I0(output_locC),
        .I1(output_locA),
        .I2(output_locB[0]),
        .I3(output_locB[1]),
        .I4(Q[0]),
        .I5(\tail_reg[4] ),
        .O(d2_is_alu_reg_0));
endmodule

(* ORIG_REF_NAME = "decoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_decoder_1
   (output_locC,
    d2_is_alu0,
    clk);
  output [0:0]output_locC;
  input d2_is_alu0;
  input clk;

  wire clk;
  wire d2_is_alu0;
  wire [0:0]output_locC;

  FDRE #(
    .INIT(1'b0)) 
    d2_is_alu_reg
       (.C(clk),
        .CE(1'b1),
        .D(d2_is_alu0),
        .Q(output_locC),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_display
   (seg,
    an,
    clk,
    in_num);
  output [3:0]seg;
  output [3:0]an;
  input clk;
  input [0:0]in_num;

  wire [1:0]activate_refresh;
  wire [3:0]an;
  wire clk;
  wire \display_third_reg_n_0_[0] ;
  wire \display_third_reg_n_0_[3] ;
  wire [0:0]in_num;
  wire \refresh[0]_i_2_n_0 ;
  wire \refresh_reg[0]_i_1_n_0 ;
  wire \refresh_reg[0]_i_1_n_1 ;
  wire \refresh_reg[0]_i_1_n_2 ;
  wire \refresh_reg[0]_i_1_n_3 ;
  wire \refresh_reg[0]_i_1_n_4 ;
  wire \refresh_reg[0]_i_1_n_5 ;
  wire \refresh_reg[0]_i_1_n_6 ;
  wire \refresh_reg[0]_i_1_n_7 ;
  wire \refresh_reg[12]_i_1_n_0 ;
  wire \refresh_reg[12]_i_1_n_1 ;
  wire \refresh_reg[12]_i_1_n_2 ;
  wire \refresh_reg[12]_i_1_n_3 ;
  wire \refresh_reg[12]_i_1_n_4 ;
  wire \refresh_reg[12]_i_1_n_5 ;
  wire \refresh_reg[12]_i_1_n_6 ;
  wire \refresh_reg[12]_i_1_n_7 ;
  wire \refresh_reg[16]_i_1_n_1 ;
  wire \refresh_reg[16]_i_1_n_2 ;
  wire \refresh_reg[16]_i_1_n_3 ;
  wire \refresh_reg[16]_i_1_n_4 ;
  wire \refresh_reg[16]_i_1_n_5 ;
  wire \refresh_reg[16]_i_1_n_6 ;
  wire \refresh_reg[16]_i_1_n_7 ;
  wire \refresh_reg[4]_i_1_n_0 ;
  wire \refresh_reg[4]_i_1_n_1 ;
  wire \refresh_reg[4]_i_1_n_2 ;
  wire \refresh_reg[4]_i_1_n_3 ;
  wire \refresh_reg[4]_i_1_n_4 ;
  wire \refresh_reg[4]_i_1_n_5 ;
  wire \refresh_reg[4]_i_1_n_6 ;
  wire \refresh_reg[4]_i_1_n_7 ;
  wire \refresh_reg[8]_i_1_n_0 ;
  wire \refresh_reg[8]_i_1_n_1 ;
  wire \refresh_reg[8]_i_1_n_2 ;
  wire \refresh_reg[8]_i_1_n_3 ;
  wire \refresh_reg[8]_i_1_n_4 ;
  wire \refresh_reg[8]_i_1_n_5 ;
  wire \refresh_reg[8]_i_1_n_6 ;
  wire \refresh_reg[8]_i_1_n_7 ;
  wire \refresh_reg_n_0_[0] ;
  wire \refresh_reg_n_0_[10] ;
  wire \refresh_reg_n_0_[11] ;
  wire \refresh_reg_n_0_[12] ;
  wire \refresh_reg_n_0_[13] ;
  wire \refresh_reg_n_0_[14] ;
  wire \refresh_reg_n_0_[15] ;
  wire \refresh_reg_n_0_[16] ;
  wire \refresh_reg_n_0_[17] ;
  wire \refresh_reg_n_0_[1] ;
  wire \refresh_reg_n_0_[2] ;
  wire \refresh_reg_n_0_[3] ;
  wire \refresh_reg_n_0_[4] ;
  wire \refresh_reg_n_0_[5] ;
  wire \refresh_reg_n_0_[6] ;
  wire \refresh_reg_n_0_[7] ;
  wire \refresh_reg_n_0_[8] ;
  wire \refresh_reg_n_0_[9] ;
  wire [3:0]seg;
  wire [3:3]\NLW_refresh_reg[16]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    LED_N
       (.I0(activate_refresh[0]),
        .I1(activate_refresh[1]),
        .I2(\display_third_reg_n_0_[3] ),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an[0]_INST_0 
       (.I0(activate_refresh[1]),
        .I1(activate_refresh[0]),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_INST_0 
       (.I0(activate_refresh[0]),
        .I1(activate_refresh[1]),
        .O(an[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_INST_0 
       (.I0(activate_refresh[1]),
        .I1(activate_refresh[0]),
        .O(an[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[3]_INST_0 
       (.I0(activate_refresh[1]),
        .I1(activate_refresh[0]),
        .O(an[3]));
  FDRE #(
    .INIT(1'b0)) 
    \display_third_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(in_num),
        .Q(\display_third_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \display_third_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\display_third_reg_n_0_[3] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \refresh[0]_i_2 
       (.I0(\refresh_reg_n_0_[0] ),
        .O(\refresh[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[0]_i_1_n_7 ),
        .Q(\refresh_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\refresh_reg[0]_i_1_n_0 ,\refresh_reg[0]_i_1_n_1 ,\refresh_reg[0]_i_1_n_2 ,\refresh_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refresh_reg[0]_i_1_n_4 ,\refresh_reg[0]_i_1_n_5 ,\refresh_reg[0]_i_1_n_6 ,\refresh_reg[0]_i_1_n_7 }),
        .S({\refresh_reg_n_0_[3] ,\refresh_reg_n_0_[2] ,\refresh_reg_n_0_[1] ,\refresh[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[8]_i_1_n_5 ),
        .Q(\refresh_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[8]_i_1_n_4 ),
        .Q(\refresh_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[12]_i_1_n_7 ),
        .Q(\refresh_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_reg[12]_i_1 
       (.CI(\refresh_reg[8]_i_1_n_0 ),
        .CO({\refresh_reg[12]_i_1_n_0 ,\refresh_reg[12]_i_1_n_1 ,\refresh_reg[12]_i_1_n_2 ,\refresh_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_reg[12]_i_1_n_4 ,\refresh_reg[12]_i_1_n_5 ,\refresh_reg[12]_i_1_n_6 ,\refresh_reg[12]_i_1_n_7 }),
        .S({\refresh_reg_n_0_[15] ,\refresh_reg_n_0_[14] ,\refresh_reg_n_0_[13] ,\refresh_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[12]_i_1_n_6 ),
        .Q(\refresh_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[12]_i_1_n_5 ),
        .Q(\refresh_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[12]_i_1_n_4 ),
        .Q(\refresh_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[16]_i_1_n_7 ),
        .Q(\refresh_reg_n_0_[16] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_reg[16]_i_1 
       (.CI(\refresh_reg[12]_i_1_n_0 ),
        .CO({\NLW_refresh_reg[16]_i_1_CO_UNCONNECTED [3],\refresh_reg[16]_i_1_n_1 ,\refresh_reg[16]_i_1_n_2 ,\refresh_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_reg[16]_i_1_n_4 ,\refresh_reg[16]_i_1_n_5 ,\refresh_reg[16]_i_1_n_6 ,\refresh_reg[16]_i_1_n_7 }),
        .S({activate_refresh,\refresh_reg_n_0_[17] ,\refresh_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[16]_i_1_n_6 ),
        .Q(\refresh_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[16]_i_1_n_5 ),
        .Q(activate_refresh[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[16]_i_1_n_4 ),
        .Q(activate_refresh[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[0]_i_1_n_6 ),
        .Q(\refresh_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[0]_i_1_n_5 ),
        .Q(\refresh_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[0]_i_1_n_4 ),
        .Q(\refresh_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[4]_i_1_n_7 ),
        .Q(\refresh_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_reg[4]_i_1 
       (.CI(\refresh_reg[0]_i_1_n_0 ),
        .CO({\refresh_reg[4]_i_1_n_0 ,\refresh_reg[4]_i_1_n_1 ,\refresh_reg[4]_i_1_n_2 ,\refresh_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_reg[4]_i_1_n_4 ,\refresh_reg[4]_i_1_n_5 ,\refresh_reg[4]_i_1_n_6 ,\refresh_reg[4]_i_1_n_7 }),
        .S({\refresh_reg_n_0_[7] ,\refresh_reg_n_0_[6] ,\refresh_reg_n_0_[5] ,\refresh_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[4]_i_1_n_6 ),
        .Q(\refresh_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[4]_i_1_n_5 ),
        .Q(\refresh_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[4]_i_1_n_4 ),
        .Q(\refresh_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[8]_i_1_n_7 ),
        .Q(\refresh_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_reg[8]_i_1 
       (.CI(\refresh_reg[4]_i_1_n_0 ),
        .CO({\refresh_reg[8]_i_1_n_0 ,\refresh_reg[8]_i_1_n_1 ,\refresh_reg[8]_i_1_n_2 ,\refresh_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_reg[8]_i_1_n_4 ,\refresh_reg[8]_i_1_n_5 ,\refresh_reg[8]_i_1_n_6 ,\refresh_reg[8]_i_1_n_7 }),
        .S({\refresh_reg_n_0_[11] ,\refresh_reg_n_0_[10] ,\refresh_reg_n_0_[9] ,\refresh_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_reg[8]_i_1_n_6 ),
        .Q(\refresh_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \seg[0]_INST_0 
       (.I0(activate_refresh[0]),
        .I1(activate_refresh[1]),
        .I2(\display_third_reg_n_0_[3] ),
        .I3(\display_third_reg_n_0_[0] ),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \seg[2]_INST_0 
       (.I0(\display_third_reg_n_0_[0] ),
        .I1(activate_refresh[0]),
        .I2(activate_refresh[1]),
        .I3(\display_third_reg_n_0_[3] ),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \seg[4]_INST_0 
       (.I0(activate_refresh[0]),
        .I1(activate_refresh[1]),
        .I2(\display_third_reg_n_0_[3] ),
        .O(seg[2]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem
   (d3_validA,
    \led_light_reg[3] ,
    \led_light_reg[2] ,
    \led_light_reg[1] ,
    \led_light_reg[0] ,
    d2_is_alu0,
    d2_is_alu0_0,
    d2_is_alu0_1,
    clk,
    sw,
    out,
    led);
  output d3_validA;
  output \led_light_reg[3] ;
  output \led_light_reg[2] ;
  output \led_light_reg[1] ;
  output \led_light_reg[0] ;
  output d2_is_alu0;
  output d2_is_alu0_0;
  output d2_is_alu0_1;
  input clk;
  input [13:0]sw;
  input [15:0]out;
  input [3:0]led;

  wire \buf_raddr0_reg_n_0_[0][10] ;
  wire \buf_raddr0_reg_n_0_[0][11] ;
  wire \buf_raddr0_reg_n_0_[0][12] ;
  wire \buf_raddr0_reg_n_0_[0][13] ;
  wire \buf_raddr0_reg_n_0_[0][14] ;
  wire \buf_raddr0_reg_n_0_[0][1] ;
  wire \buf_raddr0_reg_n_0_[0][2] ;
  wire \buf_raddr0_reg_n_0_[0][3] ;
  wire \buf_raddr0_reg_n_0_[0][4] ;
  wire \buf_raddr0_reg_n_0_[0][5] ;
  wire \buf_raddr0_reg_n_0_[0][6] ;
  wire \buf_raddr0_reg_n_0_[0][7] ;
  wire \buf_raddr0_reg_n_0_[0][8] ;
  wire \buf_raddr0_reg_n_0_[0][9] ;
  wire \buf_raddr0_reg_n_0_[1][10] ;
  wire \buf_raddr0_reg_n_0_[1][11] ;
  wire \buf_raddr0_reg_n_0_[1][12] ;
  wire \buf_raddr0_reg_n_0_[1][13] ;
  wire \buf_raddr0_reg_n_0_[1][14] ;
  wire \buf_raddr0_reg_n_0_[1][1] ;
  wire \buf_raddr0_reg_n_0_[1][2] ;
  wire \buf_raddr0_reg_n_0_[1][3] ;
  wire \buf_raddr0_reg_n_0_[1][4] ;
  wire \buf_raddr0_reg_n_0_[1][5] ;
  wire \buf_raddr0_reg_n_0_[1][6] ;
  wire \buf_raddr0_reg_n_0_[1][7] ;
  wire \buf_raddr0_reg_n_0_[1][8] ;
  wire \buf_raddr0_reg_n_0_[1][9] ;
  wire \buf_raddr1[1][1]_i_2_n_0 ;
  wire \buf_raddr1_reg[1][12]_i_1_n_0 ;
  wire \buf_raddr1_reg[1][12]_i_1_n_1 ;
  wire \buf_raddr1_reg[1][12]_i_1_n_2 ;
  wire \buf_raddr1_reg[1][12]_i_1_n_3 ;
  wire \buf_raddr1_reg[1][12]_i_1_n_4 ;
  wire \buf_raddr1_reg[1][1]_i_1_n_0 ;
  wire \buf_raddr1_reg[1][1]_i_1_n_1 ;
  wire \buf_raddr1_reg[1][1]_i_1_n_2 ;
  wire \buf_raddr1_reg[1][1]_i_1_n_3 ;
  wire \buf_raddr1_reg[1][4]_i_1_n_0 ;
  wire \buf_raddr1_reg[1][4]_i_1_n_1 ;
  wire \buf_raddr1_reg[1][4]_i_1_n_2 ;
  wire \buf_raddr1_reg[1][4]_i_1_n_3 ;
  wire \buf_raddr1_reg[1][8]_i_1_n_0 ;
  wire \buf_raddr1_reg[1][8]_i_1_n_1 ;
  wire \buf_raddr1_reg[1][8]_i_1_n_2 ;
  wire \buf_raddr1_reg[1][8]_i_1_n_3 ;
  wire \buf_raddr1_reg_n_0_[0][10] ;
  wire \buf_raddr1_reg_n_0_[0][11] ;
  wire \buf_raddr1_reg_n_0_[0][12] ;
  wire \buf_raddr1_reg_n_0_[0][13] ;
  wire \buf_raddr1_reg_n_0_[0][14] ;
  wire \buf_raddr1_reg_n_0_[0][1] ;
  wire \buf_raddr1_reg_n_0_[0][2] ;
  wire \buf_raddr1_reg_n_0_[0][3] ;
  wire \buf_raddr1_reg_n_0_[0][4] ;
  wire \buf_raddr1_reg_n_0_[0][5] ;
  wire \buf_raddr1_reg_n_0_[0][6] ;
  wire \buf_raddr1_reg_n_0_[0][7] ;
  wire \buf_raddr1_reg_n_0_[0][8] ;
  wire \buf_raddr1_reg_n_0_[0][9] ;
  wire \buf_raddr1_reg_n_0_[1][10] ;
  wire \buf_raddr1_reg_n_0_[1][11] ;
  wire \buf_raddr1_reg_n_0_[1][12] ;
  wire \buf_raddr1_reg_n_0_[1][13] ;
  wire \buf_raddr1_reg_n_0_[1][14] ;
  wire \buf_raddr1_reg_n_0_[1][1] ;
  wire \buf_raddr1_reg_n_0_[1][2] ;
  wire \buf_raddr1_reg_n_0_[1][3] ;
  wire \buf_raddr1_reg_n_0_[1][4] ;
  wire \buf_raddr1_reg_n_0_[1][5] ;
  wire \buf_raddr1_reg_n_0_[1][6] ;
  wire \buf_raddr1_reg_n_0_[1][7] ;
  wire \buf_raddr1_reg_n_0_[1][8] ;
  wire \buf_raddr1_reg_n_0_[1][9] ;
  wire \buf_raddr2[1][1]_i_2_n_0 ;
  wire \buf_raddr2_reg[1][13]_i_1_n_0 ;
  wire \buf_raddr2_reg[1][13]_i_1_n_1 ;
  wire \buf_raddr2_reg[1][13]_i_1_n_2 ;
  wire \buf_raddr2_reg[1][13]_i_1_n_3 ;
  wire \buf_raddr2_reg[1][13]_i_1_n_4 ;
  wire \buf_raddr2_reg[1][13]_i_1_n_5 ;
  wire \buf_raddr2_reg[1][1]_i_1_n_0 ;
  wire \buf_raddr2_reg[1][1]_i_1_n_1 ;
  wire \buf_raddr2_reg[1][1]_i_1_n_2 ;
  wire \buf_raddr2_reg[1][1]_i_1_n_3 ;
  wire \buf_raddr2_reg[1][5]_i_1_n_0 ;
  wire \buf_raddr2_reg[1][5]_i_1_n_1 ;
  wire \buf_raddr2_reg[1][5]_i_1_n_2 ;
  wire \buf_raddr2_reg[1][5]_i_1_n_3 ;
  wire \buf_raddr2_reg[1][9]_i_1_n_0 ;
  wire \buf_raddr2_reg[1][9]_i_1_n_1 ;
  wire \buf_raddr2_reg[1][9]_i_1_n_2 ;
  wire \buf_raddr2_reg[1][9]_i_1_n_3 ;
  wire \buf_raddr2_reg_n_0_[0][10] ;
  wire \buf_raddr2_reg_n_0_[0][11] ;
  wire \buf_raddr2_reg_n_0_[0][12] ;
  wire \buf_raddr2_reg_n_0_[0][13] ;
  wire \buf_raddr2_reg_n_0_[0][14] ;
  wire \buf_raddr2_reg_n_0_[0][1] ;
  wire \buf_raddr2_reg_n_0_[0][2] ;
  wire \buf_raddr2_reg_n_0_[0][3] ;
  wire \buf_raddr2_reg_n_0_[0][4] ;
  wire \buf_raddr2_reg_n_0_[0][5] ;
  wire \buf_raddr2_reg_n_0_[0][6] ;
  wire \buf_raddr2_reg_n_0_[0][7] ;
  wire \buf_raddr2_reg_n_0_[0][8] ;
  wire \buf_raddr2_reg_n_0_[0][9] ;
  wire \buf_raddr2_reg_n_0_[1][10] ;
  wire \buf_raddr2_reg_n_0_[1][11] ;
  wire \buf_raddr2_reg_n_0_[1][12] ;
  wire \buf_raddr2_reg_n_0_[1][13] ;
  wire \buf_raddr2_reg_n_0_[1][14] ;
  wire \buf_raddr2_reg_n_0_[1][1] ;
  wire \buf_raddr2_reg_n_0_[1][2] ;
  wire \buf_raddr2_reg_n_0_[1][3] ;
  wire \buf_raddr2_reg_n_0_[1][4] ;
  wire \buf_raddr2_reg_n_0_[1][5] ;
  wire \buf_raddr2_reg_n_0_[1][6] ;
  wire \buf_raddr2_reg_n_0_[1][7] ;
  wire \buf_raddr2_reg_n_0_[1][8] ;
  wire \buf_raddr2_reg_n_0_[1][9] ;
  wire \buf_waddr_reg[1][10]__0_n_0 ;
  wire \buf_waddr_reg[1][11]__0_n_0 ;
  wire \buf_waddr_reg[1][12]__0_n_0 ;
  wire \buf_waddr_reg[1][13]__0_n_0 ;
  wire \buf_waddr_reg[1][14]__0_n_0 ;
  wire \buf_waddr_reg[1][1]__0_n_0 ;
  wire \buf_waddr_reg[1][2]__0_n_0 ;
  wire \buf_waddr_reg[1][3]__0_n_0 ;
  wire \buf_waddr_reg[1][4]__0_n_0 ;
  wire \buf_waddr_reg[1][5]__0_n_0 ;
  wire \buf_waddr_reg[1][6]__0_n_0 ;
  wire \buf_waddr_reg[1][7]__0_n_0 ;
  wire \buf_waddr_reg[1][8]__0_n_0 ;
  wire \buf_waddr_reg[1][9]__0_n_0 ;
  wire \buf_waddr_reg[2][10]_srl5_n_0 ;
  wire \buf_waddr_reg[2][11]_srl5_n_0 ;
  wire \buf_waddr_reg[2][12]_srl5_n_0 ;
  wire \buf_waddr_reg[2][13]_srl5_n_0 ;
  wire \buf_waddr_reg[2][14]_srl5_n_0 ;
  wire \buf_waddr_reg[2][1]_srl5_n_0 ;
  wire \buf_waddr_reg[2][2]_srl5_n_0 ;
  wire \buf_waddr_reg[2][3]_srl5_n_0 ;
  wire \buf_waddr_reg[2][4]_srl5_n_0 ;
  wire \buf_waddr_reg[2][5]_srl5_n_0 ;
  wire \buf_waddr_reg[2][6]_srl5_n_0 ;
  wire \buf_waddr_reg[2][7]_srl5_n_0 ;
  wire \buf_waddr_reg[2][8]_srl5_n_0 ;
  wire \buf_waddr_reg[2][9]_srl5_n_0 ;
  wire \buf_waddr_reg[7][10]__0_n_0 ;
  wire \buf_waddr_reg[7][11]__0_n_0 ;
  wire \buf_waddr_reg[7][12]__0_n_0 ;
  wire \buf_waddr_reg[7][13]__0_n_0 ;
  wire \buf_waddr_reg[7][14]__0_n_0 ;
  wire \buf_waddr_reg[7][1]__0_n_0 ;
  wire \buf_waddr_reg[7][2]__0_n_0 ;
  wire \buf_waddr_reg[7][3]__0_n_0 ;
  wire \buf_waddr_reg[7][4]__0_n_0 ;
  wire \buf_waddr_reg[7][5]__0_n_0 ;
  wire \buf_waddr_reg[7][6]__0_n_0 ;
  wire \buf_waddr_reg[7][7]__0_n_0 ;
  wire \buf_waddr_reg[7][8]__0_n_0 ;
  wire \buf_waddr_reg[7][9]__0_n_0 ;
  wire \buf_wen_reg[1]__0_rep__0_n_0 ;
  wire \buf_wen_reg[1]__0_rep__1_n_0 ;
  wire \buf_wen_reg[1]__0_rep__2_n_0 ;
  wire \buf_wen_reg[1]__0_rep__3_n_0 ;
  wire \buf_wen_reg[1]__0_rep__4_n_0 ;
  wire \buf_wen_reg[1]__0_rep__5_n_0 ;
  wire \buf_wen_reg[1]__0_rep__6_n_0 ;
  wire \buf_wen_reg[1]__0_rep__7_n_0 ;
  wire \buf_wen_reg[1]__0_rep__8_n_0 ;
  wire \buf_wen_reg[1]__0_rep_n_0 ;
  wire \buf_wen_reg[2]_srl3_n_0 ;
  wire \buf_wen_reg[6]_srl2_n_0 ;
  wire clk;
  wire d2_is_alu0;
  wire d2_is_alu0_0;
  wire d2_is_alu0_1;
  wire d3_validA;
  wire data_reg_2_0_n_67;
  wire data_reg_2_2_n_66;
  wire data_reg_2_3_n_66;
  wire data_reg_3_0_n_67;
  wire data_reg_3_2_n_66;
  wire data_reg_3_3_n_66;
  wire data_reg_4_0_n_67;
  wire data_reg_4_2_n_66;
  wire data_reg_4_3_n_66;
  wire [6:1]instructA;
  wire [6:1]instructB;
  wire [6:1]instructC;
  wire [3:0]led;
  wire \led_light_reg[0] ;
  wire \led_light_reg[1] ;
  wire \led_light_reg[2] ;
  wire \led_light_reg[3] ;
  wire [15:0]out;
  wire [14:1]raddr1;
  wire [14:1]raddr2;
  wire rdata;
  wire [13:0]sw;
  wire [0:0]\NLW_buf_raddr1_reg[1][1]_i_1_O_UNCONNECTED ;
  wire NLW_data_reg_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_1_0_DBITERR_UNCONNECTED;
  wire NLW_data_reg_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_1_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_1_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_data_reg_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_2_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_2_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_2_0_DBITERR_UNCONNECTED;
  wire NLW_data_reg_2_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_2_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_2_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_2_0_DOADO_UNCONNECTED;
  wire [31:2]NLW_data_reg_2_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_2_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_2_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_2_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_2_0_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_2_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_2_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_2_2_DBITERR_UNCONNECTED;
  wire NLW_data_reg_2_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_2_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_2_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_2_2_DOADO_UNCONNECTED;
  wire [31:2]NLW_data_reg_2_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_2_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_2_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_2_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_2_2_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_2_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_2_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_2_3_DBITERR_UNCONNECTED;
  wire NLW_data_reg_2_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_2_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_2_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_2_3_DOADO_UNCONNECTED;
  wire [31:2]NLW_data_reg_2_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_2_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_2_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_2_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_2_3_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_3_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_3_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_3_0_DBITERR_UNCONNECTED;
  wire NLW_data_reg_3_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_3_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_3_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_3_0_DOADO_UNCONNECTED;
  wire [31:2]NLW_data_reg_3_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_3_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_3_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_3_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_3_0_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_3_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_3_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_3_2_DBITERR_UNCONNECTED;
  wire NLW_data_reg_3_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_3_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_3_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_3_2_DOADO_UNCONNECTED;
  wire [31:2]NLW_data_reg_3_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_3_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_3_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_3_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_3_2_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_3_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_3_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_3_3_DBITERR_UNCONNECTED;
  wire NLW_data_reg_3_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_3_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_3_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_3_3_DOADO_UNCONNECTED;
  wire [31:2]NLW_data_reg_3_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_3_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_3_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_3_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_3_3_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_4_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_4_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_4_0_DBITERR_UNCONNECTED;
  wire NLW_data_reg_4_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_4_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_4_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_4_0_DOADO_UNCONNECTED;
  wire [31:2]NLW_data_reg_4_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_4_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_4_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_4_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_4_0_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_4_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_4_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_4_2_DBITERR_UNCONNECTED;
  wire NLW_data_reg_4_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_4_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_4_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_4_2_DOADO_UNCONNECTED;
  wire [31:2]NLW_data_reg_4_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_4_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_4_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_4_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_4_2_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_4_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_4_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_4_3_DBITERR_UNCONNECTED;
  wire NLW_data_reg_4_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_4_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_4_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_4_3_DOADO_UNCONNECTED;
  wire [31:2]NLW_data_reg_4_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_4_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_4_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_4_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_4_3_RDADDRECC_UNCONNECTED;

  FDRE \buf_raddr0_reg[0][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][10] ),
        .Q(\buf_raddr0_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][11] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][11] ),
        .Q(\buf_raddr0_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][12] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][12] ),
        .Q(\buf_raddr0_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][13] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][13] ),
        .Q(\buf_raddr0_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][14] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][14] ),
        .Q(\buf_raddr0_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][1] ),
        .Q(\buf_raddr0_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][2] ),
        .Q(\buf_raddr0_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][3] ),
        .Q(\buf_raddr0_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][4] ),
        .Q(\buf_raddr0_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][5] ),
        .Q(\buf_raddr0_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][6] ),
        .Q(\buf_raddr0_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][7] ),
        .Q(\buf_raddr0_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][8] ),
        .Q(\buf_raddr0_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[0][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][9] ),
        .Q(\buf_raddr0_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][10] 
       (.C(clk),
        .CE(1'b1),
        .D(out[9]),
        .Q(\buf_raddr0_reg_n_0_[1][10] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][11] 
       (.C(clk),
        .CE(1'b1),
        .D(out[10]),
        .Q(\buf_raddr0_reg_n_0_[1][11] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][12] 
       (.C(clk),
        .CE(1'b1),
        .D(out[11]),
        .Q(\buf_raddr0_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][13] 
       (.C(clk),
        .CE(1'b1),
        .D(out[12]),
        .Q(\buf_raddr0_reg_n_0_[1][13] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][14] 
       (.C(clk),
        .CE(1'b1),
        .D(out[13]),
        .Q(\buf_raddr0_reg_n_0_[1][14] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .D(out[0]),
        .Q(\buf_raddr0_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][2] 
       (.C(clk),
        .CE(1'b1),
        .D(out[1]),
        .Q(\buf_raddr0_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][3] 
       (.C(clk),
        .CE(1'b1),
        .D(out[2]),
        .Q(\buf_raddr0_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][4] 
       (.C(clk),
        .CE(1'b1),
        .D(out[3]),
        .Q(\buf_raddr0_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][5] 
       (.C(clk),
        .CE(1'b1),
        .D(out[4]),
        .Q(\buf_raddr0_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][6] 
       (.C(clk),
        .CE(1'b1),
        .D(out[5]),
        .Q(\buf_raddr0_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][7] 
       (.C(clk),
        .CE(1'b1),
        .D(out[6]),
        .Q(\buf_raddr0_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][8] 
       (.C(clk),
        .CE(1'b1),
        .D(out[7]),
        .Q(\buf_raddr0_reg_n_0_[1][8] ),
        .R(1'b0));
  FDRE \buf_raddr0_reg[1][9] 
       (.C(clk),
        .CE(1'b1),
        .D(out[8]),
        .Q(\buf_raddr0_reg_n_0_[1][9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \buf_raddr1[1][1]_i_2 
       (.I0(out[0]),
        .O(\buf_raddr1[1][1]_i_2_n_0 ));
  FDRE \buf_raddr1_reg[0][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][10] ),
        .Q(\buf_raddr1_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][11] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][11] ),
        .Q(\buf_raddr1_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][12] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][12] ),
        .Q(\buf_raddr1_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][13] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][13] ),
        .Q(\buf_raddr1_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][14] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][14] ),
        .Q(\buf_raddr1_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][1] ),
        .Q(\buf_raddr1_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][2] ),
        .Q(\buf_raddr1_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][3] ),
        .Q(\buf_raddr1_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][4] ),
        .Q(\buf_raddr1_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][5] ),
        .Q(\buf_raddr1_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][6] ),
        .Q(\buf_raddr1_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][7] ),
        .Q(\buf_raddr1_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][8] ),
        .Q(\buf_raddr1_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[0][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][9] ),
        .Q(\buf_raddr1_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[1][10] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[10]),
        .Q(\buf_raddr1_reg_n_0_[1][10] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[1][11] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[11]),
        .Q(\buf_raddr1_reg_n_0_[1][11] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[1][12] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[12]),
        .Q(\buf_raddr1_reg_n_0_[1][12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr1_reg[1][12]_i_1 
       (.CI(\buf_raddr1_reg[1][8]_i_1_n_0 ),
        .CO({\buf_raddr1_reg[1][12]_i_1_n_0 ,\buf_raddr1_reg[1][12]_i_1_n_1 ,\buf_raddr1_reg[1][12]_i_1_n_2 ,\buf_raddr1_reg[1][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\buf_raddr1_reg[1][12]_i_1_n_4 ,raddr1[14:12]}),
        .S(out[14:11]));
  FDRE \buf_raddr1_reg[1][13] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[13]),
        .Q(\buf_raddr1_reg_n_0_[1][13] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[1][14] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[14]),
        .Q(\buf_raddr1_reg_n_0_[1][14] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[1]),
        .Q(\buf_raddr1_reg_n_0_[1][1] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr1_reg[1][1]_i_1 
       (.CI(1'b0),
        .CO({\buf_raddr1_reg[1][1]_i_1_n_0 ,\buf_raddr1_reg[1][1]_i_1_n_1 ,\buf_raddr1_reg[1][1]_i_1_n_2 ,\buf_raddr1_reg[1][1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,out[0],1'b0}),
        .O({raddr1[3:1],\NLW_buf_raddr1_reg[1][1]_i_1_O_UNCONNECTED [0]}),
        .S({out[2:1],\buf_raddr1[1][1]_i_2_n_0 ,1'b0}));
  FDRE \buf_raddr1_reg[1][2] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[2]),
        .Q(\buf_raddr1_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[1][3] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[3]),
        .Q(\buf_raddr1_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[1][4] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[4]),
        .Q(\buf_raddr1_reg_n_0_[1][4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr1_reg[1][4]_i_1 
       (.CI(\buf_raddr1_reg[1][1]_i_1_n_0 ),
        .CO({\buf_raddr1_reg[1][4]_i_1_n_0 ,\buf_raddr1_reg[1][4]_i_1_n_1 ,\buf_raddr1_reg[1][4]_i_1_n_2 ,\buf_raddr1_reg[1][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(raddr1[7:4]),
        .S(out[6:3]));
  FDRE \buf_raddr1_reg[1][5] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[5]),
        .Q(\buf_raddr1_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[1][6] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[6]),
        .Q(\buf_raddr1_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[1][7] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[7]),
        .Q(\buf_raddr1_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[1][8] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[8]),
        .Q(\buf_raddr1_reg_n_0_[1][8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr1_reg[1][8]_i_1 
       (.CI(\buf_raddr1_reg[1][4]_i_1_n_0 ),
        .CO({\buf_raddr1_reg[1][8]_i_1_n_0 ,\buf_raddr1_reg[1][8]_i_1_n_1 ,\buf_raddr1_reg[1][8]_i_1_n_2 ,\buf_raddr1_reg[1][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(raddr1[11:8]),
        .S(out[10:7]));
  FDRE \buf_raddr1_reg[1][9] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[9]),
        .Q(\buf_raddr1_reg_n_0_[1][9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \buf_raddr2[1][1]_i_2 
       (.I0(out[1]),
        .O(\buf_raddr2[1][1]_i_2_n_0 ));
  FDRE \buf_raddr2_reg[0][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][10] ),
        .Q(\buf_raddr2_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][11] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][11] ),
        .Q(\buf_raddr2_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][12] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][12] ),
        .Q(\buf_raddr2_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][13] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][13] ),
        .Q(\buf_raddr2_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][14] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][14] ),
        .Q(\buf_raddr2_reg_n_0_[0][14] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][1] ),
        .Q(\buf_raddr2_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][2] ),
        .Q(\buf_raddr2_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][3] ),
        .Q(\buf_raddr2_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][4] ),
        .Q(\buf_raddr2_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][5] ),
        .Q(\buf_raddr2_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][6] ),
        .Q(\buf_raddr2_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][7] ),
        .Q(\buf_raddr2_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][8] ),
        .Q(\buf_raddr2_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[0][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][9] ),
        .Q(\buf_raddr2_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][10] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[10]),
        .Q(\buf_raddr2_reg_n_0_[1][10] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][11] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[11]),
        .Q(\buf_raddr2_reg_n_0_[1][11] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][12] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[12]),
        .Q(\buf_raddr2_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][13] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[13]),
        .Q(\buf_raddr2_reg_n_0_[1][13] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr2_reg[1][13]_i_1 
       (.CI(\buf_raddr2_reg[1][9]_i_1_n_0 ),
        .CO({\buf_raddr2_reg[1][13]_i_1_n_0 ,\buf_raddr2_reg[1][13]_i_1_n_1 ,\buf_raddr2_reg[1][13]_i_1_n_2 ,\buf_raddr2_reg[1][13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\buf_raddr2_reg[1][13]_i_1_n_4 ,\buf_raddr2_reg[1][13]_i_1_n_5 ,raddr2[14:13]}),
        .S(out[15:12]));
  FDRE \buf_raddr2_reg[1][14] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[14]),
        .Q(\buf_raddr2_reg_n_0_[1][14] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[1]),
        .Q(\buf_raddr2_reg_n_0_[1][1] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr2_reg[1][1]_i_1 
       (.CI(1'b0),
        .CO({\buf_raddr2_reg[1][1]_i_1_n_0 ,\buf_raddr2_reg[1][1]_i_1_n_1 ,\buf_raddr2_reg[1][1]_i_1_n_2 ,\buf_raddr2_reg[1][1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,out[1],1'b0}),
        .O(raddr2[4:1]),
        .S({out[3:2],\buf_raddr2[1][1]_i_2_n_0 ,out[0]}));
  FDRE \buf_raddr2_reg[1][2] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[2]),
        .Q(\buf_raddr2_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][3] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[3]),
        .Q(\buf_raddr2_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][4] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[4]),
        .Q(\buf_raddr2_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][5] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[5]),
        .Q(\buf_raddr2_reg_n_0_[1][5] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr2_reg[1][5]_i_1 
       (.CI(\buf_raddr2_reg[1][1]_i_1_n_0 ),
        .CO({\buf_raddr2_reg[1][5]_i_1_n_0 ,\buf_raddr2_reg[1][5]_i_1_n_1 ,\buf_raddr2_reg[1][5]_i_1_n_2 ,\buf_raddr2_reg[1][5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(raddr2[8:5]),
        .S(out[7:4]));
  FDRE \buf_raddr2_reg[1][6] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[6]),
        .Q(\buf_raddr2_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][7] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[7]),
        .Q(\buf_raddr2_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][8] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[8]),
        .Q(\buf_raddr2_reg_n_0_[1][8] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][9] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[9]),
        .Q(\buf_raddr2_reg_n_0_[1][9] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr2_reg[1][9]_i_1 
       (.CI(\buf_raddr2_reg[1][5]_i_1_n_0 ),
        .CO({\buf_raddr2_reg[1][9]_i_1_n_0 ,\buf_raddr2_reg[1][9]_i_1_n_1 ,\buf_raddr2_reg[1][9]_i_1_n_2 ,\buf_raddr2_reg[1][9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(raddr2[12:9]),
        .S(out[11:8]));
  FDRE \buf_waddr_reg[1][10]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][10]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][10]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][11]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][11]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][11]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][12]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][12]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][12]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][13]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][13]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][13]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][14]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][14]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][14]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][1]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][1]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][1]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][2]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][2]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][2]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][3]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][3]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][3]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][4]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][4]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][4]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][5]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][5]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][5]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][6]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][6]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][6]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][7]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][7]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][7]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][8]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][8]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][8]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[1][9]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][9]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][9]__0_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][10]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][10]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][10]__0_n_0 ),
        .Q(\buf_waddr_reg[2][10]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][11]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][11]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][11]__0_n_0 ),
        .Q(\buf_waddr_reg[2][11]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][12]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][12]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][12]__0_n_0 ),
        .Q(\buf_waddr_reg[2][12]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][13]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][13]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][13]__0_n_0 ),
        .Q(\buf_waddr_reg[2][13]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][14]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][14]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][14]__0_n_0 ),
        .Q(\buf_waddr_reg[2][14]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][1]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][1]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][1]__0_n_0 ),
        .Q(\buf_waddr_reg[2][1]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][2]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][2]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][2]__0_n_0 ),
        .Q(\buf_waddr_reg[2][2]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][3]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][3]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][3]__0_n_0 ),
        .Q(\buf_waddr_reg[2][3]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][4]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][4]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][4]__0_n_0 ),
        .Q(\buf_waddr_reg[2][4]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][5]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][5]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][5]__0_n_0 ),
        .Q(\buf_waddr_reg[2][5]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][6]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][6]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][6]__0_n_0 ),
        .Q(\buf_waddr_reg[2][6]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][7]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][7]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][7]__0_n_0 ),
        .Q(\buf_waddr_reg[2][7]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][8]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][8]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][8]__0_n_0 ),
        .Q(\buf_waddr_reg[2][8]_srl5_n_0 ));
  (* srl_bus_name = "\\inst/mem/buf_waddr_reg[2] " *) 
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][9]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][9]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][9]__0_n_0 ),
        .Q(\buf_waddr_reg[2][9]_srl5_n_0 ));
  FDRE \buf_waddr_reg[7][10]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[9]),
        .Q(\buf_waddr_reg[7][10]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][11]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[10]),
        .Q(\buf_waddr_reg[7][11]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][12]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[11]),
        .Q(\buf_waddr_reg[7][12]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][13]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[12]),
        .Q(\buf_waddr_reg[7][13]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][14]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[13]),
        .Q(\buf_waddr_reg[7][14]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][1]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[0]),
        .Q(\buf_waddr_reg[7][1]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][2]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[1]),
        .Q(\buf_waddr_reg[7][2]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][3]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[2]),
        .Q(\buf_waddr_reg[7][3]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][4]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[3]),
        .Q(\buf_waddr_reg[7][4]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][5]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[4]),
        .Q(\buf_waddr_reg[7][5]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][6]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[5]),
        .Q(\buf_waddr_reg[7][6]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][7]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[6]),
        .Q(\buf_waddr_reg[7][7]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][8]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[7]),
        .Q(\buf_waddr_reg[7][8]__0_n_0 ),
        .R(1'b0));
  FDRE \buf_waddr_reg[7][9]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[8]),
        .Q(\buf_waddr_reg[7][9]__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "buf_wen_reg[1]__0" *) 
  FDRE \buf_wen_reg[1]__0_rep 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_wen_reg[2]_srl3_n_0 ),
        .Q(\buf_wen_reg[1]__0_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "buf_wen_reg[1]__0" *) 
  FDRE \buf_wen_reg[1]__0_rep__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_wen_reg[2]_srl3_n_0 ),
        .Q(\buf_wen_reg[1]__0_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "buf_wen_reg[1]__0" *) 
  FDRE \buf_wen_reg[1]__0_rep__1 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_wen_reg[2]_srl3_n_0 ),
        .Q(\buf_wen_reg[1]__0_rep__1_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "buf_wen_reg[1]__0" *) 
  FDRE \buf_wen_reg[1]__0_rep__2 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_wen_reg[2]_srl3_n_0 ),
        .Q(\buf_wen_reg[1]__0_rep__2_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "buf_wen_reg[1]__0" *) 
  FDRE \buf_wen_reg[1]__0_rep__3 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_wen_reg[2]_srl3_n_0 ),
        .Q(\buf_wen_reg[1]__0_rep__3_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "buf_wen_reg[1]__0" *) 
  FDRE \buf_wen_reg[1]__0_rep__4 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_wen_reg[2]_srl3_n_0 ),
        .Q(\buf_wen_reg[1]__0_rep__4_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "buf_wen_reg[1]__0" *) 
  FDRE \buf_wen_reg[1]__0_rep__5 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_wen_reg[2]_srl3_n_0 ),
        .Q(\buf_wen_reg[1]__0_rep__5_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "buf_wen_reg[1]__0" *) 
  FDRE \buf_wen_reg[1]__0_rep__6 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_wen_reg[2]_srl3_n_0 ),
        .Q(\buf_wen_reg[1]__0_rep__6_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "buf_wen_reg[1]__0" *) 
  FDRE \buf_wen_reg[1]__0_rep__7 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_wen_reg[2]_srl3_n_0 ),
        .Q(\buf_wen_reg[1]__0_rep__7_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "buf_wen_reg[1]__0" *) 
  FDRE \buf_wen_reg[1]__0_rep__8 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_wen_reg[2]_srl3_n_0 ),
        .Q(\buf_wen_reg[1]__0_rep__8_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\\inst/mem/buf_wen_reg " *) 
  (* srl_name = "\\inst/mem/buf_wen_reg[2]_srl3 " *) 
  SRL16E \buf_wen_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(d3_validA),
        .Q(\buf_wen_reg[2]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \buf_wen_reg[5]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_wen_reg[6]_srl2_n_0 ),
        .Q(d3_validA),
        .R(1'b0));
  (* srl_bus_name = "\\inst/mem/buf_wen_reg " *) 
  (* srl_name = "\\inst/mem/buf_wen_reg[6]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \buf_wen_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(1'b1),
        .Q(\buf_wen_reg[6]_srl2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    d2_is_alu_i_1
       (.I0(instructA[6]),
        .I1(d3_validA),
        .I2(data_reg_4_3_n_66),
        .I3(instructA[4]),
        .O(d2_is_alu0));
  LUT4 #(
    .INIT(16'h0400)) 
    d2_is_alu_i_1__0
       (.I0(instructB[6]),
        .I1(d3_validA),
        .I2(data_reg_3_3_n_66),
        .I3(instructB[4]),
        .O(d2_is_alu0_0));
  LUT4 #(
    .INIT(16'h0400)) 
    d2_is_alu_i_1__1
       (.I0(instructC[6]),
        .I1(d3_validA),
        .I2(data_reg_2_3_n_66),
        .I3(instructC[4]),
        .O(d2_is_alu0_1));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "393216" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_1_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000000000000000000000000000FF),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    data_reg_1_0
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 ,1'b0}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_1_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_1_0_DOBDO_UNCONNECTED[31:1],rdata}),
        .DOPADOP(NLW_data_reg_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(\buf_wen_reg[1]__0_rep__8_n_0 ),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_1_0_SBITERR_UNCONNECTED),
        .WEA({\buf_wen_reg[1]__0_rep__8_n_0 ,\buf_wen_reg[1]__0_rep__8_n_0 ,\buf_wen_reg[1]__0_rep__8_n_0 ,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "393216" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_2_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000000000000000000000000000FF),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    data_reg_2_0
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 ,1'b0}),
        .ADDRBWRADDR({1'b1,\buf_raddr2_reg_n_0_[0][14] ,\buf_raddr2_reg_n_0_[0][13] ,\buf_raddr2_reg_n_0_[0][12] ,\buf_raddr2_reg_n_0_[0][11] ,\buf_raddr2_reg_n_0_[0][10] ,\buf_raddr2_reg_n_0_[0][9] ,\buf_raddr2_reg_n_0_[0][8] ,\buf_raddr2_reg_n_0_[0][7] ,\buf_raddr2_reg_n_0_[0][6] ,\buf_raddr2_reg_n_0_[0][5] ,\buf_raddr2_reg_n_0_[0][4] ,\buf_raddr2_reg_n_0_[0][3] ,\buf_raddr2_reg_n_0_[0][2] ,\buf_raddr2_reg_n_0_[0][1] ,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_2_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_2_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_2_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_2_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_2_0_DOBDO_UNCONNECTED[31:2],instructC[1],data_reg_2_0_n_67}),
        .DOPADOP(NLW_data_reg_2_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_2_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_2_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(\buf_wen_reg[1]__0_rep__7_n_0 ),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_2_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_2_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_2_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_2_0_SBITERR_UNCONNECTED),
        .WEA({\buf_wen_reg[1]__0_rep__7_n_0 ,\buf_wen_reg[1]__0_rep__7_n_0 ,\buf_wen_reg[1]__0_rep__7_n_0 ,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "393216" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_2_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000055),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    data_reg_2_2
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 ,1'b0}),
        .ADDRBWRADDR({1'b1,\buf_raddr2_reg_n_0_[0][14] ,\buf_raddr2_reg_n_0_[0][13] ,\buf_raddr2_reg_n_0_[0][12] ,\buf_raddr2_reg_n_0_[0][11] ,\buf_raddr2_reg_n_0_[0][10] ,\buf_raddr2_reg_n_0_[0][9] ,\buf_raddr2_reg_n_0_[0][8] ,\buf_raddr2_reg_n_0_[0][7] ,\buf_raddr2_reg_n_0_[0][6] ,\buf_raddr2_reg_n_0_[0][5] ,\buf_raddr2_reg_n_0_[0][4] ,\buf_raddr2_reg_n_0_[0][3] ,\buf_raddr2_reg_n_0_[0][2] ,\buf_raddr2_reg_n_0_[0][1] ,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_2_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_2_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_2_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_2_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_2_2_DOBDO_UNCONNECTED[31:2],data_reg_2_2_n_66,instructC[4]}),
        .DOPADOP(NLW_data_reg_2_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_2_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_2_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(\buf_wen_reg[1]__0_rep__6_n_0 ),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_2_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_2_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_2_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_2_2_SBITERR_UNCONNECTED),
        .WEA({\buf_wen_reg[1]__0_rep__6_n_0 ,\buf_wen_reg[1]__0_rep__6_n_0 ,\buf_wen_reg[1]__0_rep__6_n_0 ,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "393216" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_2_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    data_reg_2_3
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 ,1'b0}),
        .ADDRBWRADDR({1'b1,\buf_raddr2_reg_n_0_[0][14] ,\buf_raddr2_reg_n_0_[0][13] ,\buf_raddr2_reg_n_0_[0][12] ,\buf_raddr2_reg_n_0_[0][11] ,\buf_raddr2_reg_n_0_[0][10] ,\buf_raddr2_reg_n_0_[0][9] ,\buf_raddr2_reg_n_0_[0][8] ,\buf_raddr2_reg_n_0_[0][7] ,\buf_raddr2_reg_n_0_[0][6] ,\buf_raddr2_reg_n_0_[0][5] ,\buf_raddr2_reg_n_0_[0][4] ,\buf_raddr2_reg_n_0_[0][3] ,\buf_raddr2_reg_n_0_[0][2] ,\buf_raddr2_reg_n_0_[0][1] ,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_2_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_2_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_2_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_2_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_2_3_DOBDO_UNCONNECTED[31:2],data_reg_2_3_n_66,instructC[6]}),
        .DOPADOP(NLW_data_reg_2_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_2_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_2_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(\buf_wen_reg[1]__0_rep__5_n_0 ),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_2_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_2_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_2_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_2_3_SBITERR_UNCONNECTED),
        .WEA({\buf_wen_reg[1]__0_rep__5_n_0 ,\buf_wen_reg[1]__0_rep__5_n_0 ,\buf_wen_reg[1]__0_rep__5_n_0 ,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "393216" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_3_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000000000000000000000000000FF),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    data_reg_3_0
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 ,1'b0}),
        .ADDRBWRADDR({1'b1,\buf_raddr1_reg_n_0_[0][14] ,\buf_raddr1_reg_n_0_[0][13] ,\buf_raddr1_reg_n_0_[0][12] ,\buf_raddr1_reg_n_0_[0][11] ,\buf_raddr1_reg_n_0_[0][10] ,\buf_raddr1_reg_n_0_[0][9] ,\buf_raddr1_reg_n_0_[0][8] ,\buf_raddr1_reg_n_0_[0][7] ,\buf_raddr1_reg_n_0_[0][6] ,\buf_raddr1_reg_n_0_[0][5] ,\buf_raddr1_reg_n_0_[0][4] ,\buf_raddr1_reg_n_0_[0][3] ,\buf_raddr1_reg_n_0_[0][2] ,\buf_raddr1_reg_n_0_[0][1] ,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_3_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_3_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_3_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_3_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_3_0_DOBDO_UNCONNECTED[31:2],instructB[1],data_reg_3_0_n_67}),
        .DOPADOP(NLW_data_reg_3_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_3_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_3_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(\buf_wen_reg[1]__0_rep__4_n_0 ),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_3_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_3_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_3_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_3_0_SBITERR_UNCONNECTED),
        .WEA({\buf_wen_reg[1]__0_rep__4_n_0 ,\buf_wen_reg[1]__0_rep__4_n_0 ,\buf_wen_reg[1]__0_rep__4_n_0 ,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "393216" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_3_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000055),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    data_reg_3_2
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 ,1'b0}),
        .ADDRBWRADDR({1'b1,\buf_raddr1_reg_n_0_[0][14] ,\buf_raddr1_reg_n_0_[0][13] ,\buf_raddr1_reg_n_0_[0][12] ,\buf_raddr1_reg_n_0_[0][11] ,\buf_raddr1_reg_n_0_[0][10] ,\buf_raddr1_reg_n_0_[0][9] ,\buf_raddr1_reg_n_0_[0][8] ,\buf_raddr1_reg_n_0_[0][7] ,\buf_raddr1_reg_n_0_[0][6] ,\buf_raddr1_reg_n_0_[0][5] ,\buf_raddr1_reg_n_0_[0][4] ,\buf_raddr1_reg_n_0_[0][3] ,\buf_raddr1_reg_n_0_[0][2] ,\buf_raddr1_reg_n_0_[0][1] ,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_3_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_3_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_3_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_3_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_3_2_DOBDO_UNCONNECTED[31:2],data_reg_3_2_n_66,instructB[4]}),
        .DOPADOP(NLW_data_reg_3_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_3_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_3_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(\buf_wen_reg[1]__0_rep__3_n_0 ),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_3_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_3_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_3_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_3_2_SBITERR_UNCONNECTED),
        .WEA({\buf_wen_reg[1]__0_rep__3_n_0 ,\buf_wen_reg[1]__0_rep__3_n_0 ,\buf_wen_reg[1]__0_rep__3_n_0 ,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "393216" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_3_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    data_reg_3_3
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 ,1'b0}),
        .ADDRBWRADDR({1'b1,\buf_raddr1_reg_n_0_[0][14] ,\buf_raddr1_reg_n_0_[0][13] ,\buf_raddr1_reg_n_0_[0][12] ,\buf_raddr1_reg_n_0_[0][11] ,\buf_raddr1_reg_n_0_[0][10] ,\buf_raddr1_reg_n_0_[0][9] ,\buf_raddr1_reg_n_0_[0][8] ,\buf_raddr1_reg_n_0_[0][7] ,\buf_raddr1_reg_n_0_[0][6] ,\buf_raddr1_reg_n_0_[0][5] ,\buf_raddr1_reg_n_0_[0][4] ,\buf_raddr1_reg_n_0_[0][3] ,\buf_raddr1_reg_n_0_[0][2] ,\buf_raddr1_reg_n_0_[0][1] ,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_3_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_3_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_3_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_3_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_3_3_DOBDO_UNCONNECTED[31:2],data_reg_3_3_n_66,instructB[6]}),
        .DOPADOP(NLW_data_reg_3_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_3_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_3_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(\buf_wen_reg[1]__0_rep__2_n_0 ),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_3_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_3_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_3_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_3_3_SBITERR_UNCONNECTED),
        .WEA({\buf_wen_reg[1]__0_rep__2_n_0 ,\buf_wen_reg[1]__0_rep__2_n_0 ,\buf_wen_reg[1]__0_rep__2_n_0 ,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "393216" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_4_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000000000000000000000000000FF),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    data_reg_4_0
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 ,1'b0}),
        .ADDRBWRADDR({1'b1,\buf_raddr0_reg_n_0_[0][14] ,\buf_raddr0_reg_n_0_[0][13] ,\buf_raddr0_reg_n_0_[0][12] ,\buf_raddr0_reg_n_0_[0][11] ,\buf_raddr0_reg_n_0_[0][10] ,\buf_raddr0_reg_n_0_[0][9] ,\buf_raddr0_reg_n_0_[0][8] ,\buf_raddr0_reg_n_0_[0][7] ,\buf_raddr0_reg_n_0_[0][6] ,\buf_raddr0_reg_n_0_[0][5] ,\buf_raddr0_reg_n_0_[0][4] ,\buf_raddr0_reg_n_0_[0][3] ,\buf_raddr0_reg_n_0_[0][2] ,\buf_raddr0_reg_n_0_[0][1] ,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_4_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_4_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_4_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_4_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_4_0_DOBDO_UNCONNECTED[31:2],instructA[1],data_reg_4_0_n_67}),
        .DOPADOP(NLW_data_reg_4_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_4_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_4_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(\buf_wen_reg[1]__0_rep__1_n_0 ),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_4_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_4_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_4_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_4_0_SBITERR_UNCONNECTED),
        .WEA({\buf_wen_reg[1]__0_rep__1_n_0 ,\buf_wen_reg[1]__0_rep__1_n_0 ,\buf_wen_reg[1]__0_rep__1_n_0 ,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "393216" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_4_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000055),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    data_reg_4_2
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 ,1'b0}),
        .ADDRBWRADDR({1'b1,\buf_raddr0_reg_n_0_[0][14] ,\buf_raddr0_reg_n_0_[0][13] ,\buf_raddr0_reg_n_0_[0][12] ,\buf_raddr0_reg_n_0_[0][11] ,\buf_raddr0_reg_n_0_[0][10] ,\buf_raddr0_reg_n_0_[0][9] ,\buf_raddr0_reg_n_0_[0][8] ,\buf_raddr0_reg_n_0_[0][7] ,\buf_raddr0_reg_n_0_[0][6] ,\buf_raddr0_reg_n_0_[0][5] ,\buf_raddr0_reg_n_0_[0][4] ,\buf_raddr0_reg_n_0_[0][3] ,\buf_raddr0_reg_n_0_[0][2] ,\buf_raddr0_reg_n_0_[0][1] ,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_4_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_4_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_4_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_4_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_4_2_DOBDO_UNCONNECTED[31:2],data_reg_4_2_n_66,instructA[4]}),
        .DOPADOP(NLW_data_reg_4_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_4_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_4_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(\buf_wen_reg[1]__0_rep__0_n_0 ),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_4_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_4_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_4_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_4_2_SBITERR_UNCONNECTED),
        .WEA({\buf_wen_reg[1]__0_rep__0_n_0 ,\buf_wen_reg[1]__0_rep__0_n_0 ,\buf_wen_reg[1]__0_rep__0_n_0 ,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "393216" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_4_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    data_reg_4_3
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 ,1'b0}),
        .ADDRBWRADDR({1'b1,\buf_raddr0_reg_n_0_[0][14] ,\buf_raddr0_reg_n_0_[0][13] ,\buf_raddr0_reg_n_0_[0][12] ,\buf_raddr0_reg_n_0_[0][11] ,\buf_raddr0_reg_n_0_[0][10] ,\buf_raddr0_reg_n_0_[0][9] ,\buf_raddr0_reg_n_0_[0][8] ,\buf_raddr0_reg_n_0_[0][7] ,\buf_raddr0_reg_n_0_[0][6] ,\buf_raddr0_reg_n_0_[0][5] ,\buf_raddr0_reg_n_0_[0][4] ,\buf_raddr0_reg_n_0_[0][3] ,\buf_raddr0_reg_n_0_[0][2] ,\buf_raddr0_reg_n_0_[0][1] ,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_4_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_4_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_4_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_4_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_4_3_DOBDO_UNCONNECTED[31:2],data_reg_4_3_n_66,instructA[6]}),
        .DOPADOP(NLW_data_reg_4_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_4_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_4_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(\buf_wen_reg[1]__0_rep_n_0 ),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_4_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_4_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_4_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_4_3_SBITERR_UNCONNECTED),
        .WEA({\buf_wen_reg[1]__0_rep_n_0 ,\buf_wen_reg[1]__0_rep_n_0 ,\buf_wen_reg[1]__0_rep_n_0 ,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hE)) 
    \led_light[0]_i_1 
       (.I0(led[0]),
        .I1(instructA[1]),
        .O(\led_light_reg[0] ));
  LUT2 #(
    .INIT(4'hE)) 
    \led_light[1]_i_1 
       (.I0(led[1]),
        .I1(instructB[1]),
        .O(\led_light_reg[1] ));
  LUT2 #(
    .INIT(4'hE)) 
    \led_light[2]_i_1 
       (.I0(led[2]),
        .I1(instructC[1]),
        .O(\led_light_reg[2] ));
  LUT2 #(
    .INIT(4'hE)) 
    \led_light[3]_i_1 
       (.I0(led[3]),
        .I1(rdata),
        .O(\led_light_reg[3] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reservation_station
   (alu_operationA_valid,
    alu_buffer_opA,
    clk);
  output alu_operationA_valid;
  input [0:0]alu_buffer_opA;
  input clk;

  wire [0:0]alu_buffer_opA;
  wire alu_operationA_valid;
  wire clk;
  wire \committed[0]_i_1_n_0 ;
  wire \committed[1]_i_1_n_0 ;
  wire \committed[2]_i_1_n_0 ;
  wire \committed[3]_i_1_n_0 ;
  wire \committed[4]_i_1_n_0 ;
  wire \committed[4]_i_2_n_0 ;
  wire \committed[5]_i_1_n_0 ;
  wire \committed[5]_i_4_n_0 ;
  wire \committed[6]_i_1_n_0 ;
  wire \committed[7]_i_1_n_0 ;
  wire \committed[7]_i_5_n_0 ;
  wire \committed_reg_n_0_[0] ;
  wire \i_/committed[2]_i_2_n_0 ;
  wire \i_/committed[5]_i_2_n_0 ;
  wire \i_/committed[5]_i_3_n_0 ;
  wire \i_/committed[5]_i_5_n_0 ;
  wire \i_/committed[5]_i_6_n_0 ;
  wire \i_/committed[6]_i_2_n_0 ;
  wire \i_/committed[6]_i_3_n_0 ;
  wire \i_/committed[7]_i_2_n_0 ;
  wire \i_/committed[7]_i_3_n_0 ;
  wire \i_/committed[7]_i_4_n_0 ;
  wire \i_/committed[7]_i_6_n_0 ;
  wire \i_/committed[7]_i_7_n_0 ;
  wire \i_/committed[7]_i_8_n_0 ;
  wire \i_/committed[7]_i_9_n_0 ;
  wire \i_/d2_valid_i_2_n_0 ;
  wire p_1_in135_in;
  wire p_1_in138_in;
  wire p_1_in140_in;
  wire p_1_in143_in;
  wire p_1_in146_in;
  wire p_1_in149_in;
  wire p_1_in152_in;

  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \committed[0]_i_1 
       (.I0(\committed_reg_n_0_[0] ),
        .I1(\i_/committed[6]_i_2_n_0 ),
        .I2(alu_buffer_opA),
        .O(\committed[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \committed[1]_i_1 
       (.I0(p_1_in152_in),
        .I1(\committed_reg_n_0_[0] ),
        .I2(\i_/committed[6]_i_2_n_0 ),
        .I3(alu_buffer_opA),
        .O(\committed[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0404040404)) 
    \committed[2]_i_1 
       (.I0(\i_/committed[7]_i_4_n_0 ),
        .I1(\committed[7]_i_5_n_0 ),
        .I2(\i_/committed[6]_i_2_n_0 ),
        .I3(\i_/committed[2]_i_2_n_0 ),
        .I4(\i_/committed[7]_i_3_n_0 ),
        .I5(p_1_in149_in),
        .O(\committed[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEEEE0F000000)) 
    \committed[3]_i_1 
       (.I0(\i_/committed[7]_i_2_n_0 ),
        .I1(\i_/committed[7]_i_3_n_0 ),
        .I2(\i_/committed[7]_i_4_n_0 ),
        .I3(\committed[7]_i_5_n_0 ),
        .I4(\i_/committed[7]_i_6_n_0 ),
        .I5(p_1_in146_in),
        .O(\committed[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    \committed[4]_i_1 
       (.I0(\i_/committed[5]_i_2_n_0 ),
        .I1(\i_/committed[5]_i_3_n_0 ),
        .I2(\i_/committed[7]_i_3_n_0 ),
        .I3(\committed[4]_i_2_n_0 ),
        .I4(p_1_in143_in),
        .O(\committed[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \committed[4]_i_2 
       (.I0(\i_/committed[7]_i_9_n_0 ),
        .I1(p_1_in152_in),
        .I2(\committed_reg_n_0_[0] ),
        .I3(\i_/committed[6]_i_2_n_0 ),
        .I4(\i_/committed[7]_i_4_n_0 ),
        .I5(alu_buffer_opA),
        .O(\committed[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFF00)) 
    \committed[5]_i_1 
       (.I0(\i_/committed[5]_i_2_n_0 ),
        .I1(\i_/committed[5]_i_3_n_0 ),
        .I2(\i_/committed[7]_i_3_n_0 ),
        .I3(\committed[5]_i_4_n_0 ),
        .I4(p_1_in140_in),
        .O(\committed[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \committed[5]_i_4 
       (.I0(\i_/committed[7]_i_9_n_0 ),
        .I1(p_1_in152_in),
        .I2(\committed_reg_n_0_[0] ),
        .I3(\i_/committed[6]_i_2_n_0 ),
        .I4(\i_/committed[7]_i_4_n_0 ),
        .I5(alu_buffer_opA),
        .O(\committed[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00FF0040)) 
    \committed[6]_i_1 
       (.I0(\i_/committed[6]_i_2_n_0 ),
        .I1(\i_/committed[7]_i_4_n_0 ),
        .I2(\committed[7]_i_5_n_0 ),
        .I3(\i_/committed[6]_i_3_n_0 ),
        .I4(p_1_in138_in),
        .O(\committed[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBBBBBF0000000)) 
    \committed[7]_i_1 
       (.I0(\i_/committed[7]_i_2_n_0 ),
        .I1(\i_/committed[7]_i_3_n_0 ),
        .I2(\i_/committed[7]_i_4_n_0 ),
        .I3(\committed[7]_i_5_n_0 ),
        .I4(\i_/committed[7]_i_6_n_0 ),
        .I5(p_1_in135_in),
        .O(\committed[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \committed[7]_i_5 
       (.I0(\i_/committed[7]_i_9_n_0 ),
        .I1(p_1_in152_in),
        .I2(\committed_reg_n_0_[0] ),
        .I3(alu_buffer_opA),
        .O(\committed[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \committed_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\committed[0]_i_1_n_0 ),
        .Q(\committed_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \committed_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\committed[1]_i_1_n_0 ),
        .Q(p_1_in152_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \committed_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\committed[2]_i_1_n_0 ),
        .Q(p_1_in149_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \committed_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\committed[3]_i_1_n_0 ),
        .Q(p_1_in146_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \committed_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\committed[4]_i_1_n_0 ),
        .Q(p_1_in143_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \committed_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\committed[5]_i_1_n_0 ),
        .Q(p_1_in140_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \committed_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\committed[6]_i_1_n_0 ),
        .Q(p_1_in138_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \committed_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\committed[7]_i_1_n_0 ),
        .Q(p_1_in135_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \i_/committed[2]_i_2 
       (.I0(\i_/committed[5]_i_2_n_0 ),
        .I1(\i_/committed[7]_i_7_n_0 ),
        .O(\i_/committed[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1010101011111110)) 
    \i_/committed[5]_i_2 
       (.I0(p_1_in152_in),
        .I1(\committed_reg_n_0_[0] ),
        .I2(\i_/committed[5]_i_5_n_0 ),
        .I3(p_1_in135_in),
        .I4(p_1_in138_in),
        .I5(\i_/committed[5]_i_6_n_0 ),
        .O(\i_/committed[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \i_/committed[5]_i_3 
       (.I0(\committed_reg_n_0_[0] ),
        .I1(p_1_in152_in),
        .I2(\i_/committed[7]_i_7_n_0 ),
        .O(\i_/committed[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \i_/committed[5]_i_5 
       (.I0(p_1_in149_in),
        .I1(p_1_in146_in),
        .O(\i_/committed[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \i_/committed[5]_i_6 
       (.I0(p_1_in143_in),
        .I1(p_1_in140_in),
        .O(\i_/committed[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \i_/committed[6]_i_2 
       (.I0(\committed_reg_n_0_[0] ),
        .I1(\i_/committed[7]_i_6_n_0 ),
        .I2(p_1_in152_in),
        .O(\i_/committed[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \i_/committed[6]_i_3 
       (.I0(\i_/committed[7]_i_3_n_0 ),
        .I1(\i_/committed[7]_i_7_n_0 ),
        .I2(\i_/committed[5]_i_2_n_0 ),
        .O(\i_/committed[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_/committed[7]_i_2 
       (.I0(\i_/committed[7]_i_7_n_0 ),
        .I1(\i_/committed[5]_i_2_n_0 ),
        .O(\i_/committed[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \i_/committed[7]_i_3 
       (.I0(p_1_in143_in),
        .I1(p_1_in140_in),
        .I2(p_1_in138_in),
        .I3(p_1_in135_in),
        .I4(\i_/committed[7]_i_8_n_0 ),
        .O(\i_/committed[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0888888888888888)) 
    \i_/committed[7]_i_4 
       (.I0(p_1_in149_in),
        .I1(p_1_in146_in),
        .I2(p_1_in140_in),
        .I3(p_1_in143_in),
        .I4(p_1_in135_in),
        .I5(p_1_in138_in),
        .O(\i_/committed[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00808888AAAAAAAA)) 
    \i_/committed[7]_i_6 
       (.I0(p_1_in149_in),
        .I1(p_1_in143_in),
        .I2(p_1_in138_in),
        .I3(p_1_in135_in),
        .I4(p_1_in140_in),
        .I5(p_1_in146_in),
        .O(\i_/committed[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF0D)) 
    \i_/committed[7]_i_7 
       (.I0(p_1_in135_in),
        .I1(p_1_in138_in),
        .I2(p_1_in140_in),
        .I3(p_1_in143_in),
        .I4(p_1_in146_in),
        .I5(p_1_in149_in),
        .O(\i_/committed[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i_/committed[7]_i_8 
       (.I0(p_1_in146_in),
        .I1(p_1_in149_in),
        .I2(p_1_in152_in),
        .I3(\committed_reg_n_0_[0] ),
        .O(\i_/committed[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0888FFFFFFFFFFFF)) 
    \i_/committed[7]_i_9 
       (.I0(p_1_in140_in),
        .I1(p_1_in143_in),
        .I2(p_1_in135_in),
        .I3(p_1_in138_in),
        .I4(p_1_in149_in),
        .I5(p_1_in146_in),
        .O(\i_/committed[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \i_/d2_valid_i_1 
       (.I0(\committed_reg_n_0_[0] ),
        .I1(p_1_in152_in),
        .I2(p_1_in149_in),
        .I3(p_1_in146_in),
        .I4(\i_/d2_valid_i_2_n_0 ),
        .O(alu_operationA_valid));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \i_/d2_valid_i_2 
       (.I0(p_1_in135_in),
        .I1(p_1_in138_in),
        .I2(p_1_in140_in),
        .I3(p_1_in143_in),
        .O(\i_/d2_valid_i_2_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
