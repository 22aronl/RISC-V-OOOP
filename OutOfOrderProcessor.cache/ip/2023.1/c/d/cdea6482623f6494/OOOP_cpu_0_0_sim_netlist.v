// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Jun 28 19:43:38 2023
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
    seg,
    an);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  output [6:0]seg;
  output [3:0]an;

  wire \<const0> ;
  wire [3:0]an;
  wire clk;
  wire [6:0]\^seg ;

  assign seg[6] = \^seg [6];
  assign seg[5] = \^seg [6];
  assign seg[4] = an[1];
  assign seg[3] = \^seg [3];
  assign seg[2] = \<const0> ;
  assign seg[1:0] = \^seg [1:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu inst
       (.an(an),
        .clk(clk),
        .seg({\^seg [6],\^seg [3],\^seg [1:0]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu
   (an,
    seg,
    clk);
  output [3:0]an;
  output [3:0]seg;
  input clk;

  wire [3:0]an;
  wire clk;
  wire [3:0]seg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_display display
       (.an(an),
        .clk(clk),
        .seg(seg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_display
   (an,
    seg,
    clk);
  output [3:0]an;
  output [3:0]seg;
  input clk;

  wire [1:0]activate_refresh;
  wire [3:0]an;
  wire clk;
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

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an[0]_INST_0 
       (.I0(activate_refresh[1]),
        .I1(activate_refresh[0]),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[3]_INST_0 
       (.I0(activate_refresh[0]),
        .I1(activate_refresh[1]),
        .O(an[3]));
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \seg[0]_INST_0 
       (.I0(activate_refresh[0]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \seg[1]_INST_0 
       (.I0(activate_refresh[1]),
        .I1(activate_refresh[0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \seg[3]_INST_0 
       (.I0(activate_refresh[0]),
        .I1(activate_refresh[1]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \seg[5]_INST_0 
       (.I0(activate_refresh[0]),
        .I1(activate_refresh[1]),
        .O(seg[3]));
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
