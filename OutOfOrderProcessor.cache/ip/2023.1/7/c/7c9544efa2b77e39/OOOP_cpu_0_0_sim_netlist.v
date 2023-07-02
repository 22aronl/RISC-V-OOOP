// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Jul  1 18:25:13 2023
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
  wire [5:5]\^seg ;
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
  assign seg[5] = \^seg [5];
  assign seg[4] = \^seg [5];
  assign seg[3] = \^seg [5];
  assign seg[2] = \^seg [5];
  assign seg[1] = \^seg [5];
  assign seg[0] = \^seg [5];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu inst
       (.an(an),
        .clk(clk),
        .led(\^led ),
        .seg(\^seg ),
        .sw(sw[14:0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu
   (an,
    led,
    seg,
    clk,
    sw);
  output [3:0]an;
  output [3:0]led;
  output [0:0]seg;
  input clk;
  input [14:0]sw;

  wire [3:0]an;
  wire clk;
  wire [1:1]instructA;
  wire [1:1]instructB;
  wire [1:1]instructC;
  wire [3:0]led;
  wire \led_light[0]_i_1_n_0 ;
  wire \led_light[1]_i_1_n_0 ;
  wire \led_light[2]_i_1_n_0 ;
  wire \led_light[3]_i_1_n_0 ;
  wire \pc[1]_i_2_n_0 ;
  wire \pc[1]_i_3_n_0 ;
  wire \pc_reg[13]_i_1_n_2 ;
  wire \pc_reg[13]_i_1_n_3 ;
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
  wire [15:1]raddr0;
  wire rdata;
  wire [0:0]seg;
  wire [14:0]sw;
  wire [3:2]\NLW_pc_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pc_reg[13]_i_1_O_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_display display
       (.an(an),
        .clk(clk),
        .seg(seg));
  LUT2 #(
    .INIT(4'hE)) 
    \led_light[0]_i_1 
       (.I0(led[0]),
        .I1(instructA),
        .O(\led_light[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \led_light[1]_i_1 
       (.I0(led[1]),
        .I1(instructB),
        .O(\led_light[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \led_light[2]_i_1 
       (.I0(led[2]),
        .I1(instructC),
        .O(\led_light[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \led_light[3]_i_1 
       (.I0(led[3]),
        .I1(rdata),
        .O(\led_light[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \led_light_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_light[0]_i_1_n_0 ),
        .Q(led[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_light_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_light[1]_i_1_n_0 ),
        .Q(led[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_light_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_light[2]_i_1_n_0 ),
        .Q(led[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_light_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_light[3]_i_1_n_0 ),
        .Q(led[3]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem mem
       (.clk(clk),
        .out(raddr0),
        .rdata0_(instructA),
        .rdata1_(instructB),
        .rdata2_(instructC),
        .rdata3_(rdata),
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
  CARRY4 \pc_reg[13]_i_1 
       (.CI(\pc_reg[9]_i_1_n_0 ),
        .CO({\NLW_pc_reg[13]_i_1_CO_UNCONNECTED [3:2],\pc_reg[13]_i_1_n_2 ,\pc_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_reg[13]_i_1_O_UNCONNECTED [3],\pc_reg[13]_i_1_n_5 ,\pc_reg[13]_i_1_n_6 ,\pc_reg[13]_i_1_n_7 }),
        .S({1'b0,raddr0[15:13]}));
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
        .Q(raddr0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[1]_i_1_n_7 ),
        .Q(raddr0[1]),
        .R(1'b0));
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
  CARRY4 \pc_reg[9]_i_1 
       (.CI(\pc_reg[5]_i_1_n_0 ),
        .CO({\pc_reg[9]_i_1_n_0 ,\pc_reg[9]_i_1_n_1 ,\pc_reg[9]_i_1_n_2 ,\pc_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[9]_i_1_n_4 ,\pc_reg[9]_i_1_n_5 ,\pc_reg[9]_i_1_n_6 ,\pc_reg[9]_i_1_n_7 }),
        .S(raddr0[12:9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_display
   (seg,
    an,
    clk);
  output [0:0]seg;
  output [3:0]an;
  input clk;

  wire [1:0]activate_refresh;
  wire [3:0]an;
  wire clk;
  wire \display_third_reg_n_0_[3] ;
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
  wire [0:0]seg;
  wire [3:3]\NLW_refresh_reg[16]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    LED_N
       (.I0(activate_refresh[0]),
        .I1(activate_refresh[1]),
        .I2(\display_third_reg_n_0_[3] ),
        .O(seg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an[0]_INST_0 
       (.I0(activate_refresh[1]),
        .I1(activate_refresh[0]),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_INST_0 
       (.I0(activate_refresh[0]),
        .I1(activate_refresh[1]),
        .O(an[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_INST_0 
       (.I0(activate_refresh[1]),
        .I1(activate_refresh[0]),
        .O(an[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \an[3]_INST_0 
       (.I0(activate_refresh[1]),
        .I1(activate_refresh[0]),
        .O(an[3]));
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
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem
   (rdata3_,
    rdata2_,
    rdata1_,
    rdata0_,
    clk,
    sw,
    out);
  output rdata3_;
  output [0:0]rdata2_;
  output [0:0]rdata1_;
  output [0:0]rdata0_;
  input clk;
  input [14:0]sw;
  input [14:0]out;

  wire \buf_raddr0_reg_n_0_[0][10] ;
  wire \buf_raddr0_reg_n_0_[0][11] ;
  wire \buf_raddr0_reg_n_0_[0][12] ;
  wire \buf_raddr0_reg_n_0_[0][13] ;
  wire \buf_raddr0_reg_n_0_[0][14] ;
  wire \buf_raddr0_reg_n_0_[0][15] ;
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
  wire \buf_raddr0_reg_n_0_[1][15] ;
  wire \buf_raddr0_reg_n_0_[1][1] ;
  wire \buf_raddr0_reg_n_0_[1][2] ;
  wire \buf_raddr0_reg_n_0_[1][3] ;
  wire \buf_raddr0_reg_n_0_[1][4] ;
  wire \buf_raddr0_reg_n_0_[1][5] ;
  wire \buf_raddr0_reg_n_0_[1][6] ;
  wire \buf_raddr0_reg_n_0_[1][7] ;
  wire \buf_raddr0_reg_n_0_[1][8] ;
  wire \buf_raddr0_reg_n_0_[1][9] ;
  wire \buf_raddr1[1][3]_i_2_n_0 ;
  wire \buf_raddr1_reg[1][11]_i_1_n_0 ;
  wire \buf_raddr1_reg[1][11]_i_1_n_1 ;
  wire \buf_raddr1_reg[1][11]_i_1_n_2 ;
  wire \buf_raddr1_reg[1][11]_i_1_n_3 ;
  wire \buf_raddr1_reg[1][15]_i_1_n_1 ;
  wire \buf_raddr1_reg[1][15]_i_1_n_2 ;
  wire \buf_raddr1_reg[1][15]_i_1_n_3 ;
  wire \buf_raddr1_reg[1][3]_i_1_n_0 ;
  wire \buf_raddr1_reg[1][3]_i_1_n_1 ;
  wire \buf_raddr1_reg[1][3]_i_1_n_2 ;
  wire \buf_raddr1_reg[1][3]_i_1_n_3 ;
  wire \buf_raddr1_reg[1][7]_i_1_n_0 ;
  wire \buf_raddr1_reg[1][7]_i_1_n_1 ;
  wire \buf_raddr1_reg[1][7]_i_1_n_2 ;
  wire \buf_raddr1_reg[1][7]_i_1_n_3 ;
  wire \buf_raddr1_reg_n_0_[0][10] ;
  wire \buf_raddr1_reg_n_0_[0][11] ;
  wire \buf_raddr1_reg_n_0_[0][12] ;
  wire \buf_raddr1_reg_n_0_[0][13] ;
  wire \buf_raddr1_reg_n_0_[0][14] ;
  wire \buf_raddr1_reg_n_0_[0][15] ;
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
  wire \buf_raddr1_reg_n_0_[1][15] ;
  wire \buf_raddr1_reg_n_0_[1][1] ;
  wire \buf_raddr1_reg_n_0_[1][2] ;
  wire \buf_raddr1_reg_n_0_[1][3] ;
  wire \buf_raddr1_reg_n_0_[1][4] ;
  wire \buf_raddr1_reg_n_0_[1][5] ;
  wire \buf_raddr1_reg_n_0_[1][6] ;
  wire \buf_raddr1_reg_n_0_[1][7] ;
  wire \buf_raddr1_reg_n_0_[1][8] ;
  wire \buf_raddr1_reg_n_0_[1][9] ;
  wire \buf_raddr2[1][4]_i_2_n_0 ;
  wire \buf_raddr2_reg[1][12]_i_1_n_0 ;
  wire \buf_raddr2_reg[1][12]_i_1_n_1 ;
  wire \buf_raddr2_reg[1][12]_i_1_n_2 ;
  wire \buf_raddr2_reg[1][12]_i_1_n_3 ;
  wire \buf_raddr2_reg[1][15]_i_1_n_2 ;
  wire \buf_raddr2_reg[1][15]_i_1_n_3 ;
  wire \buf_raddr2_reg[1][4]_i_1_n_0 ;
  wire \buf_raddr2_reg[1][4]_i_1_n_1 ;
  wire \buf_raddr2_reg[1][4]_i_1_n_2 ;
  wire \buf_raddr2_reg[1][4]_i_1_n_3 ;
  wire \buf_raddr2_reg[1][8]_i_1_n_0 ;
  wire \buf_raddr2_reg[1][8]_i_1_n_1 ;
  wire \buf_raddr2_reg[1][8]_i_1_n_2 ;
  wire \buf_raddr2_reg[1][8]_i_1_n_3 ;
  wire \buf_raddr2_reg_n_0_[0][10] ;
  wire \buf_raddr2_reg_n_0_[0][11] ;
  wire \buf_raddr2_reg_n_0_[0][12] ;
  wire \buf_raddr2_reg_n_0_[0][13] ;
  wire \buf_raddr2_reg_n_0_[0][14] ;
  wire \buf_raddr2_reg_n_0_[0][15] ;
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
  wire \buf_raddr2_reg_n_0_[1][15] ;
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
  wire \buf_waddr_reg[1][15]__0_n_0 ;
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
  wire \buf_waddr_reg[2][15]_srl5_n_0 ;
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
  wire \buf_waddr_reg[7][15]__0_n_0 ;
  wire \buf_waddr_reg[7][1]__0_n_0 ;
  wire \buf_waddr_reg[7][2]__0_n_0 ;
  wire \buf_waddr_reg[7][3]__0_n_0 ;
  wire \buf_waddr_reg[7][4]__0_n_0 ;
  wire \buf_waddr_reg[7][5]__0_n_0 ;
  wire \buf_waddr_reg[7][6]__0_n_0 ;
  wire \buf_waddr_reg[7][7]__0_n_0 ;
  wire \buf_waddr_reg[7][8]__0_n_0 ;
  wire \buf_waddr_reg[7][9]__0_n_0 ;
  wire clk;
  wire [14:0]out;
  wire [15:1]raddr1;
  wire [15:1]raddr2;
  wire [0:0]rdata0_;
  wire [0:0]rdata1_;
  wire [0:0]rdata2_;
  wire rdata3_;
  wire [14:0]sw;
  wire [3:3]\NLW_buf_raddr1_reg[1][15]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_buf_raddr1_reg[1][3]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_buf_raddr2_reg[1][15]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_buf_raddr2_reg[1][15]_i_1_O_UNCONNECTED ;
  wire NLW_data_reg_1_0_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_1_0_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_1_0_0_DBITERR_UNCONNECTED;
  wire NLW_data_reg_1_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_1_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_1_0_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_1_0_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_data_reg_1_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_1_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_1_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_1_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_2_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_2_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_2_0_1_DBITERR_UNCONNECTED;
  wire NLW_data_reg_2_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_2_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_2_0_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_2_0_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_data_reg_2_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_2_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_2_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_2_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_2_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_3_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_3_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_3_0_1_DBITERR_UNCONNECTED;
  wire NLW_data_reg_3_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_3_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_3_0_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_3_0_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_data_reg_3_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_3_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_3_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_3_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_3_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_data_reg_4_0_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_data_reg_4_0_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_data_reg_4_0_1_DBITERR_UNCONNECTED;
  wire NLW_data_reg_4_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_data_reg_4_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_data_reg_4_0_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_data_reg_4_0_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_data_reg_4_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_data_reg_4_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_data_reg_4_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_data_reg_4_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_data_reg_4_0_1_RDADDRECC_UNCONNECTED;

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
  FDRE \buf_raddr0_reg[0][15] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr0_reg_n_0_[1][15] ),
        .Q(\buf_raddr0_reg_n_0_[0][15] ),
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
  FDRE \buf_raddr0_reg[1][15] 
       (.C(clk),
        .CE(1'b1),
        .D(out[14]),
        .Q(\buf_raddr0_reg_n_0_[1][15] ),
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
    \buf_raddr1[1][3]_i_2 
       (.I0(out[0]),
        .O(\buf_raddr1[1][3]_i_2_n_0 ));
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
  FDRE \buf_raddr1_reg[0][15] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr1_reg_n_0_[1][15] ),
        .Q(\buf_raddr1_reg_n_0_[0][15] ),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr1_reg[1][11]_i_1 
       (.CI(\buf_raddr1_reg[1][7]_i_1_n_0 ),
        .CO({\buf_raddr1_reg[1][11]_i_1_n_0 ,\buf_raddr1_reg[1][11]_i_1_n_1 ,\buf_raddr1_reg[1][11]_i_1_n_2 ,\buf_raddr1_reg[1][11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(raddr1[11:8]),
        .S(out[10:7]));
  FDRE \buf_raddr1_reg[1][12] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[12]),
        .Q(\buf_raddr1_reg_n_0_[1][12] ),
        .R(1'b0));
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
  FDRE \buf_raddr1_reg[1][15] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[15]),
        .Q(\buf_raddr1_reg_n_0_[1][15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr1_reg[1][15]_i_1 
       (.CI(\buf_raddr1_reg[1][11]_i_1_n_0 ),
        .CO({\NLW_buf_raddr1_reg[1][15]_i_1_CO_UNCONNECTED [3],\buf_raddr1_reg[1][15]_i_1_n_1 ,\buf_raddr1_reg[1][15]_i_1_n_2 ,\buf_raddr1_reg[1][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(raddr1[15:12]),
        .S(out[14:11]));
  FDRE \buf_raddr1_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[1]),
        .Q(\buf_raddr1_reg_n_0_[1][1] ),
        .R(1'b0));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr1_reg[1][3]_i_1 
       (.CI(1'b0),
        .CO({\buf_raddr1_reg[1][3]_i_1_n_0 ,\buf_raddr1_reg[1][3]_i_1_n_1 ,\buf_raddr1_reg[1][3]_i_1_n_2 ,\buf_raddr1_reg[1][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,out[0],1'b0}),
        .O({raddr1[3:1],\NLW_buf_raddr1_reg[1][3]_i_1_O_UNCONNECTED [0]}),
        .S({out[2:1],\buf_raddr1[1][3]_i_2_n_0 ,1'b0}));
  FDRE \buf_raddr1_reg[1][4] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[4]),
        .Q(\buf_raddr1_reg_n_0_[1][4] ),
        .R(1'b0));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr1_reg[1][7]_i_1 
       (.CI(\buf_raddr1_reg[1][3]_i_1_n_0 ),
        .CO({\buf_raddr1_reg[1][7]_i_1_n_0 ,\buf_raddr1_reg[1][7]_i_1_n_1 ,\buf_raddr1_reg[1][7]_i_1_n_2 ,\buf_raddr1_reg[1][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(raddr1[7:4]),
        .S(out[6:3]));
  FDRE \buf_raddr1_reg[1][8] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[8]),
        .Q(\buf_raddr1_reg_n_0_[1][8] ),
        .R(1'b0));
  FDRE \buf_raddr1_reg[1][9] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr1[9]),
        .Q(\buf_raddr1_reg_n_0_[1][9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \buf_raddr2[1][4]_i_2 
       (.I0(out[1]),
        .O(\buf_raddr2[1][4]_i_2_n_0 ));
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
  FDRE \buf_raddr2_reg[0][15] 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_raddr2_reg_n_0_[1][15] ),
        .Q(\buf_raddr2_reg_n_0_[0][15] ),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr2_reg[1][12]_i_1 
       (.CI(\buf_raddr2_reg[1][8]_i_1_n_0 ),
        .CO({\buf_raddr2_reg[1][12]_i_1_n_0 ,\buf_raddr2_reg[1][12]_i_1_n_1 ,\buf_raddr2_reg[1][12]_i_1_n_2 ,\buf_raddr2_reg[1][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(raddr2[12:9]),
        .S(out[11:8]));
  FDRE \buf_raddr2_reg[1][13] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[13]),
        .Q(\buf_raddr2_reg_n_0_[1][13] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][14] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[14]),
        .Q(\buf_raddr2_reg_n_0_[1][14] ),
        .R(1'b0));
  FDRE \buf_raddr2_reg[1][15] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[15]),
        .Q(\buf_raddr2_reg_n_0_[1][15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr2_reg[1][15]_i_1 
       (.CI(\buf_raddr2_reg[1][12]_i_1_n_0 ),
        .CO({\NLW_buf_raddr2_reg[1][15]_i_1_CO_UNCONNECTED [3:2],\buf_raddr2_reg[1][15]_i_1_n_2 ,\buf_raddr2_reg[1][15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_buf_raddr2_reg[1][15]_i_1_O_UNCONNECTED [3],raddr2[15:13]}),
        .S({1'b0,out[14:12]}));
  FDRE \buf_raddr2_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[1]),
        .Q(\buf_raddr2_reg_n_0_[1][1] ),
        .R(1'b0));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr2_reg[1][4]_i_1 
       (.CI(1'b0),
        .CO({\buf_raddr2_reg[1][4]_i_1_n_0 ,\buf_raddr2_reg[1][4]_i_1_n_1 ,\buf_raddr2_reg[1][4]_i_1_n_2 ,\buf_raddr2_reg[1][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,out[1],1'b0}),
        .O(raddr2[4:1]),
        .S({out[3:2],\buf_raddr2[1][4]_i_2_n_0 ,out[0]}));
  FDRE \buf_raddr2_reg[1][5] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[5]),
        .Q(\buf_raddr2_reg_n_0_[1][5] ),
        .R(1'b0));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buf_raddr2_reg[1][8]_i_1 
       (.CI(\buf_raddr2_reg[1][4]_i_1_n_0 ),
        .CO({\buf_raddr2_reg[1][8]_i_1_n_0 ,\buf_raddr2_reg[1][8]_i_1_n_1 ,\buf_raddr2_reg[1][8]_i_1_n_2 ,\buf_raddr2_reg[1][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(raddr2[8:5]),
        .S(out[7:4]));
  FDRE \buf_raddr2_reg[1][9] 
       (.C(clk),
        .CE(1'b1),
        .D(raddr2[9]),
        .Q(\buf_raddr2_reg_n_0_[1][9] ),
        .R(1'b0));
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
  FDRE \buf_waddr_reg[1][15]__0 
       (.C(clk),
        .CE(1'b1),
        .D(\buf_waddr_reg[2][15]_srl5_n_0 ),
        .Q(\buf_waddr_reg[1][15]__0_n_0 ),
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
  (* srl_name = "\\inst/mem/buf_waddr_reg[2][15]_srl5 " *) 
  SRL16E \buf_waddr_reg[2][15]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(\buf_waddr_reg[7][15]__0_n_0 ),
        .Q(\buf_waddr_reg[2][15]_srl5_n_0 ));
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
  FDRE \buf_waddr_reg[7][15]__0 
       (.C(clk),
        .CE(1'b1),
        .D(sw[14]),
        .Q(\buf_waddr_reg[7][15]__0_n_0 ),
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
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_1_0_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000001),
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    data_reg_1_0_0
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][15]__0_n_0 ,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 }),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_1_0_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_1_0_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_1_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_1_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_1_0_0_DOBDO_UNCONNECTED[31:1],rdata3_}),
        .DOPADOP(NLW_data_reg_1_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_1_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_1_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_1_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_1_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_1_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_1_0_0_SBITERR_UNCONNECTED),
        .WEA({1'b1,1'b1,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_2_0_1" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000001),
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    data_reg_2_0_1
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][15]__0_n_0 ,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 }),
        .ADDRBWRADDR({1'b1,\buf_raddr2_reg_n_0_[0][15] ,\buf_raddr2_reg_n_0_[0][14] ,\buf_raddr2_reg_n_0_[0][13] ,\buf_raddr2_reg_n_0_[0][12] ,\buf_raddr2_reg_n_0_[0][11] ,\buf_raddr2_reg_n_0_[0][10] ,\buf_raddr2_reg_n_0_[0][9] ,\buf_raddr2_reg_n_0_[0][8] ,\buf_raddr2_reg_n_0_[0][7] ,\buf_raddr2_reg_n_0_[0][6] ,\buf_raddr2_reg_n_0_[0][5] ,\buf_raddr2_reg_n_0_[0][4] ,\buf_raddr2_reg_n_0_[0][3] ,\buf_raddr2_reg_n_0_[0][2] ,\buf_raddr2_reg_n_0_[0][1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_2_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_2_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_2_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_2_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_2_0_1_DOBDO_UNCONNECTED[31:1],rdata2_}),
        .DOPADOP(NLW_data_reg_2_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_2_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_2_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_2_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_2_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_2_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_2_0_1_SBITERR_UNCONNECTED),
        .WEA({1'b1,1'b1,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_3_0_1" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000001),
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    data_reg_3_0_1
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][15]__0_n_0 ,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 }),
        .ADDRBWRADDR({1'b1,\buf_raddr1_reg_n_0_[0][15] ,\buf_raddr1_reg_n_0_[0][14] ,\buf_raddr1_reg_n_0_[0][13] ,\buf_raddr1_reg_n_0_[0][12] ,\buf_raddr1_reg_n_0_[0][11] ,\buf_raddr1_reg_n_0_[0][10] ,\buf_raddr1_reg_n_0_[0][9] ,\buf_raddr1_reg_n_0_[0][8] ,\buf_raddr1_reg_n_0_[0][7] ,\buf_raddr1_reg_n_0_[0][6] ,\buf_raddr1_reg_n_0_[0][5] ,\buf_raddr1_reg_n_0_[0][4] ,\buf_raddr1_reg_n_0_[0][3] ,\buf_raddr1_reg_n_0_[0][2] ,\buf_raddr1_reg_n_0_[0][1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_3_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_3_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_3_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_3_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_3_0_1_DOBDO_UNCONNECTED[31:1],rdata1_}),
        .DOPADOP(NLW_data_reg_3_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_3_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_3_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_3_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_3_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_3_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_3_0_1_SBITERR_UNCONNECTED),
        .WEA({1'b1,1'b1,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "inst/mem/data_reg_4_0_1" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000001),
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
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    data_reg_4_0_1
       (.ADDRARDADDR({1'b1,\buf_waddr_reg[1][15]__0_n_0 ,\buf_waddr_reg[1][14]__0_n_0 ,\buf_waddr_reg[1][13]__0_n_0 ,\buf_waddr_reg[1][12]__0_n_0 ,\buf_waddr_reg[1][11]__0_n_0 ,\buf_waddr_reg[1][10]__0_n_0 ,\buf_waddr_reg[1][9]__0_n_0 ,\buf_waddr_reg[1][8]__0_n_0 ,\buf_waddr_reg[1][7]__0_n_0 ,\buf_waddr_reg[1][6]__0_n_0 ,\buf_waddr_reg[1][5]__0_n_0 ,\buf_waddr_reg[1][4]__0_n_0 ,\buf_waddr_reg[1][3]__0_n_0 ,\buf_waddr_reg[1][2]__0_n_0 ,\buf_waddr_reg[1][1]__0_n_0 }),
        .ADDRBWRADDR({1'b1,\buf_raddr0_reg_n_0_[0][15] ,\buf_raddr0_reg_n_0_[0][14] ,\buf_raddr0_reg_n_0_[0][13] ,\buf_raddr0_reg_n_0_[0][12] ,\buf_raddr0_reg_n_0_[0][11] ,\buf_raddr0_reg_n_0_[0][10] ,\buf_raddr0_reg_n_0_[0][9] ,\buf_raddr0_reg_n_0_[0][8] ,\buf_raddr0_reg_n_0_[0][7] ,\buf_raddr0_reg_n_0_[0][6] ,\buf_raddr0_reg_n_0_[0][5] ,\buf_raddr0_reg_n_0_[0][4] ,\buf_raddr0_reg_n_0_[0][3] ,\buf_raddr0_reg_n_0_[0][2] ,\buf_raddr0_reg_n_0_[0][1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_data_reg_4_0_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_data_reg_4_0_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_data_reg_4_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_data_reg_4_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_data_reg_4_0_1_DOBDO_UNCONNECTED[31:1],rdata0_}),
        .DOPADOP(NLW_data_reg_4_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_data_reg_4_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_data_reg_4_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_data_reg_4_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_data_reg_4_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_data_reg_4_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_data_reg_4_0_1_SBITERR_UNCONNECTED),
        .WEA({1'b1,1'b1,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
