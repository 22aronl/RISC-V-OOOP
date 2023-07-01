//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Sat Jul  1 05:05:26 2023
//Host        : DESKTOP-M2KV102 running 64-bit major release  (build 9200)
//Command     : generate_target OOOP_wrapper.bd
//Design      : OOOP_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module OOOP_wrapper
   (an,
    led,
    reset,
    seg,
    sw,
    sys_clock);
  output [3:0]an;
  output [15:0]led;
  input reset;
  output [6:0]seg;
  input [15:0]sw;
  input sys_clock;

  wire [3:0]an;
  wire [15:0]led;
  wire reset;
  wire [6:0]seg;
  wire [15:0]sw;
  wire sys_clock;

  OOOP OOOP_i
       (.an(an),
        .led(led),
        .reset(reset),
        .seg(seg),
        .sw(sw),
        .sys_clock(sys_clock));
endmodule
