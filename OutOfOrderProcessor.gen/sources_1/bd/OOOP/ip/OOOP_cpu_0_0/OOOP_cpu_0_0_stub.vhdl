-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Jun 28 19:47:48 2023
-- Host        : DESKTOP-M2KV102 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/Aaron
--               Lo/Documents/FPGA/OutOfOrderProcessor/OutOfOrderProcessor.gen/sources_1/bd/OOOP/ip/OOOP_cpu_0_0/OOOP_cpu_0_0_stub.vhdl}
-- Design      : OOOP_cpu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OOOP_cpu_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end OOOP_cpu_0_0;

architecture stub of OOOP_cpu_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,seg[6:0],an[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cpu,Vivado 2023.1";
begin
end;
