//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Mon Jul  3 21:06:46 2023
//Host        : DESKTOP-M2KV102 running 64-bit major release  (build 9200)
//Command     : generate_target OOOP.bd
//Design      : OOOP
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "OOOP,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=OOOP,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "OOOP.hwdef" *) 
module OOOP
   (an,
    led,
    reset,
    seg,
    sw,
    sys_clock);
  output [3:0]an;
  output [15:0]led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  output [6:0]seg;
  input [15:0]sw;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN OOOP_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;

  wire clk_wiz_clk_out1;
  wire [3:0]cpu_0_an;
  wire [15:0]cpu_0_led;
  wire [6:0]cpu_0_seg;
  wire reset_1;
  wire [15:0]sw_0_1;
  wire sys_clock_1;

  assign an[3:0] = cpu_0_an;
  assign led[15:0] = cpu_0_led;
  assign reset_1 = reset;
  assign seg[6:0] = cpu_0_seg;
  assign sw_0_1 = sw[15:0];
  assign sys_clock_1 = sys_clock;
  OOOP_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .reset(reset_1));
  OOOP_cpu_0_0 cpu_0
       (.an(cpu_0_an),
        .clk(clk_wiz_clk_out1),
        .led(cpu_0_led),
        .seg(cpu_0_seg),
        .sw(sw_0_1));
endmodule
