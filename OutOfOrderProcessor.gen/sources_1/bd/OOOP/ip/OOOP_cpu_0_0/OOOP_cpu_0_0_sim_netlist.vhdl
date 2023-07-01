-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Jul  1 05:06:10 2023
-- Host        : DESKTOP-M2KV102 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Aaron
--               Lo/Documents/FPGA/OutOfOrderProcessor/OutOfOrderProcessor.gen/sources_1/bd/OOOP/ip/OOOP_cpu_0_0/OOOP_cpu_0_0_sim_netlist.vhdl}
-- Design      : OOOP_cpu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OOOP_cpu_0_0_display is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of OOOP_cpu_0_0_display : entity is "display";
end OOOP_cpu_0_0_display;

architecture STRUCTURE of OOOP_cpu_0_0_display is
  signal activate_refresh : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \display_third_reg_n_0_[3]\ : STD_LOGIC;
  signal \refresh[0]_i_2_n_0\ : STD_LOGIC;
  signal \refresh_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \refresh_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \refresh_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \refresh_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \refresh_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \refresh_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \refresh_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \refresh_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \refresh_reg_n_0_[0]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[10]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[11]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[12]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[13]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[14]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[15]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[16]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[17]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[1]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[2]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[3]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[4]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[5]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[6]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[7]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[8]\ : STD_LOGIC;
  signal \refresh_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_refresh_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of LED_N : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \an[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \an[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \an[2]_INST_0\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \refresh_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refresh_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refresh_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refresh_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refresh_reg[8]_i_1\ : label is 11;
begin
LED_N: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => activate_refresh(0),
      I1 => activate_refresh(1),
      I2 => \display_third_reg_n_0_[3]\,
      O => seg(0)
    );
\an[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => activate_refresh(1),
      I1 => activate_refresh(0),
      O => an(0)
    );
\an[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => activate_refresh(0),
      I1 => activate_refresh(1),
      O => an(1)
    );
\an[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => activate_refresh(1),
      I1 => activate_refresh(0),
      O => an(2)
    );
\an[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => activate_refresh(1),
      I1 => activate_refresh(0),
      O => an(3)
    );
\display_third_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      Q => \display_third_reg_n_0_[3]\,
      R => '0'
    );
\refresh[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \refresh_reg_n_0_[0]\,
      O => \refresh[0]_i_2_n_0\
    );
\refresh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[0]_i_1_n_7\,
      Q => \refresh_reg_n_0_[0]\,
      R => '0'
    );
\refresh_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \refresh_reg[0]_i_1_n_0\,
      CO(2) => \refresh_reg[0]_i_1_n_1\,
      CO(1) => \refresh_reg[0]_i_1_n_2\,
      CO(0) => \refresh_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \refresh_reg[0]_i_1_n_4\,
      O(2) => \refresh_reg[0]_i_1_n_5\,
      O(1) => \refresh_reg[0]_i_1_n_6\,
      O(0) => \refresh_reg[0]_i_1_n_7\,
      S(3) => \refresh_reg_n_0_[3]\,
      S(2) => \refresh_reg_n_0_[2]\,
      S(1) => \refresh_reg_n_0_[1]\,
      S(0) => \refresh[0]_i_2_n_0\
    );
\refresh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[8]_i_1_n_5\,
      Q => \refresh_reg_n_0_[10]\,
      R => '0'
    );
\refresh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[8]_i_1_n_4\,
      Q => \refresh_reg_n_0_[11]\,
      R => '0'
    );
\refresh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[12]_i_1_n_7\,
      Q => \refresh_reg_n_0_[12]\,
      R => '0'
    );
\refresh_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_reg[8]_i_1_n_0\,
      CO(3) => \refresh_reg[12]_i_1_n_0\,
      CO(2) => \refresh_reg[12]_i_1_n_1\,
      CO(1) => \refresh_reg[12]_i_1_n_2\,
      CO(0) => \refresh_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refresh_reg[12]_i_1_n_4\,
      O(2) => \refresh_reg[12]_i_1_n_5\,
      O(1) => \refresh_reg[12]_i_1_n_6\,
      O(0) => \refresh_reg[12]_i_1_n_7\,
      S(3) => \refresh_reg_n_0_[15]\,
      S(2) => \refresh_reg_n_0_[14]\,
      S(1) => \refresh_reg_n_0_[13]\,
      S(0) => \refresh_reg_n_0_[12]\
    );
\refresh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[12]_i_1_n_6\,
      Q => \refresh_reg_n_0_[13]\,
      R => '0'
    );
\refresh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[12]_i_1_n_5\,
      Q => \refresh_reg_n_0_[14]\,
      R => '0'
    );
\refresh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[12]_i_1_n_4\,
      Q => \refresh_reg_n_0_[15]\,
      R => '0'
    );
\refresh_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[16]_i_1_n_7\,
      Q => \refresh_reg_n_0_[16]\,
      R => '0'
    );
\refresh_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_reg[12]_i_1_n_0\,
      CO(3) => \NLW_refresh_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \refresh_reg[16]_i_1_n_1\,
      CO(1) => \refresh_reg[16]_i_1_n_2\,
      CO(0) => \refresh_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refresh_reg[16]_i_1_n_4\,
      O(2) => \refresh_reg[16]_i_1_n_5\,
      O(1) => \refresh_reg[16]_i_1_n_6\,
      O(0) => \refresh_reg[16]_i_1_n_7\,
      S(3 downto 2) => activate_refresh(1 downto 0),
      S(1) => \refresh_reg_n_0_[17]\,
      S(0) => \refresh_reg_n_0_[16]\
    );
\refresh_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[16]_i_1_n_6\,
      Q => \refresh_reg_n_0_[17]\,
      R => '0'
    );
\refresh_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[16]_i_1_n_5\,
      Q => activate_refresh(0),
      R => '0'
    );
\refresh_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[16]_i_1_n_4\,
      Q => activate_refresh(1),
      R => '0'
    );
\refresh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[0]_i_1_n_6\,
      Q => \refresh_reg_n_0_[1]\,
      R => '0'
    );
\refresh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[0]_i_1_n_5\,
      Q => \refresh_reg_n_0_[2]\,
      R => '0'
    );
\refresh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[0]_i_1_n_4\,
      Q => \refresh_reg_n_0_[3]\,
      R => '0'
    );
\refresh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[4]_i_1_n_7\,
      Q => \refresh_reg_n_0_[4]\,
      R => '0'
    );
\refresh_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_reg[0]_i_1_n_0\,
      CO(3) => \refresh_reg[4]_i_1_n_0\,
      CO(2) => \refresh_reg[4]_i_1_n_1\,
      CO(1) => \refresh_reg[4]_i_1_n_2\,
      CO(0) => \refresh_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refresh_reg[4]_i_1_n_4\,
      O(2) => \refresh_reg[4]_i_1_n_5\,
      O(1) => \refresh_reg[4]_i_1_n_6\,
      O(0) => \refresh_reg[4]_i_1_n_7\,
      S(3) => \refresh_reg_n_0_[7]\,
      S(2) => \refresh_reg_n_0_[6]\,
      S(1) => \refresh_reg_n_0_[5]\,
      S(0) => \refresh_reg_n_0_[4]\
    );
\refresh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[4]_i_1_n_6\,
      Q => \refresh_reg_n_0_[5]\,
      R => '0'
    );
\refresh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[4]_i_1_n_5\,
      Q => \refresh_reg_n_0_[6]\,
      R => '0'
    );
\refresh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[4]_i_1_n_4\,
      Q => \refresh_reg_n_0_[7]\,
      R => '0'
    );
\refresh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[8]_i_1_n_7\,
      Q => \refresh_reg_n_0_[8]\,
      R => '0'
    );
\refresh_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_reg[4]_i_1_n_0\,
      CO(3) => \refresh_reg[8]_i_1_n_0\,
      CO(2) => \refresh_reg[8]_i_1_n_1\,
      CO(1) => \refresh_reg[8]_i_1_n_2\,
      CO(0) => \refresh_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refresh_reg[8]_i_1_n_4\,
      O(2) => \refresh_reg[8]_i_1_n_5\,
      O(1) => \refresh_reg[8]_i_1_n_6\,
      O(0) => \refresh_reg[8]_i_1_n_7\,
      S(3) => \refresh_reg_n_0_[11]\,
      S(2) => \refresh_reg_n_0_[10]\,
      S(1) => \refresh_reg_n_0_[9]\,
      S(0) => \refresh_reg_n_0_[8]\
    );
\refresh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \refresh_reg[8]_i_1_n_6\,
      Q => \refresh_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OOOP_cpu_0_0_mem is
  port (
    \rdata3_\ : out STD_LOGIC;
    \rdata2_\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rdata1_\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rdata0_\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of OOOP_cpu_0_0_mem : entity is "mem";
end OOOP_cpu_0_0_mem;

architecture STRUCTURE of OOOP_cpu_0_0_mem is
  signal \buf_waddr_reg[1][10]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][11]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][12]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][13]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][14]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][15]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][1]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][2]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][3]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][4]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][5]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][6]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][7]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][8]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[1][9]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][10]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][11]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][12]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][13]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][14]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][15]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][1]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][2]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][3]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][4]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][5]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][6]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][7]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][8]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[2][9]_srl5_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][10]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][11]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][12]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][13]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][14]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][15]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][1]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][2]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][3]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][4]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][5]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][6]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][7]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][8]__0_n_0\ : STD_LOGIC;
  signal \buf_waddr_reg[7][9]__0_n_0\ : STD_LOGIC;
  signal NLW_data_reg_1_0_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_1_0_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_1_0_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_1_0_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_1_0_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_1_0_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_1_0_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_data_reg_1_0_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_data_reg_1_0_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_reg_1_0_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_reg_1_0_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_reg_1_0_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_data_reg_2_0_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_2_0_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_2_0_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_2_0_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_2_0_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_2_0_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_2_0_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_data_reg_2_0_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_data_reg_2_0_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_reg_2_0_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_reg_2_0_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_reg_2_0_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_data_reg_3_0_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_3_0_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_3_0_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_3_0_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_3_0_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_3_0_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_3_0_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_data_reg_3_0_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_data_reg_3_0_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_reg_3_0_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_reg_3_0_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_reg_3_0_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_data_reg_4_0_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_4_0_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_4_0_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_4_0_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_4_0_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_4_0_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_data_reg_4_0_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_data_reg_4_0_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_data_reg_4_0_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_reg_4_0_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_reg_4_0_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_data_reg_4_0_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \buf_waddr_reg[2][10]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name : string;
  attribute srl_name of \buf_waddr_reg[2][10]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][10]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][11]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][11]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][11]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][12]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][12]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][12]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][13]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][13]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][13]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][14]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][14]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][14]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][15]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][15]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][15]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][1]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][1]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][1]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][2]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][2]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][2]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][3]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][3]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][3]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][4]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][4]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][4]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][5]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][5]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][5]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][6]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][6]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][6]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][7]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][7]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][7]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][8]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][8]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][8]_srl5 ";
  attribute srl_bus_name of \buf_waddr_reg[2][9]_srl5\ : label is "\inst/mem/buf_waddr_reg[2] ";
  attribute srl_name of \buf_waddr_reg[2][9]_srl5\ : label is "\inst/mem/buf_waddr_reg[2][9]_srl5 ";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of data_reg_1_0_0 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of data_reg_1_0_0 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_reg_1_0_0 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of data_reg_1_0_0 : label is 65536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of data_reg_1_0_0 : label is "inst/mem/data_reg_1_0_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of data_reg_1_0_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of data_reg_1_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of data_reg_1_0_0 : label is 32767;
  attribute ram_offset : integer;
  attribute ram_offset of data_reg_1_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of data_reg_1_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of data_reg_1_0_0 : label is 0;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of data_reg_2_0_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of data_reg_2_0_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of data_reg_2_0_1 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of data_reg_2_0_1 : label is 65536;
  attribute RTL_RAM_NAME of data_reg_2_0_1 : label is "inst/mem/data_reg_2_0_1";
  attribute RTL_RAM_TYPE of data_reg_2_0_1 : label is "RAM_SDP";
  attribute ram_addr_begin of data_reg_2_0_1 : label is 0;
  attribute ram_addr_end of data_reg_2_0_1 : label is 32767;
  attribute ram_offset of data_reg_2_0_1 : label is 0;
  attribute ram_slice_begin of data_reg_2_0_1 : label is 1;
  attribute ram_slice_end of data_reg_2_0_1 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of data_reg_3_0_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of data_reg_3_0_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of data_reg_3_0_1 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of data_reg_3_0_1 : label is 65536;
  attribute RTL_RAM_NAME of data_reg_3_0_1 : label is "inst/mem/data_reg_3_0_1";
  attribute RTL_RAM_TYPE of data_reg_3_0_1 : label is "RAM_SDP";
  attribute ram_addr_begin of data_reg_3_0_1 : label is 0;
  attribute ram_addr_end of data_reg_3_0_1 : label is 32767;
  attribute ram_offset of data_reg_3_0_1 : label is 0;
  attribute ram_slice_begin of data_reg_3_0_1 : label is 1;
  attribute ram_slice_end of data_reg_3_0_1 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of data_reg_4_0_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of data_reg_4_0_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of data_reg_4_0_1 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of data_reg_4_0_1 : label is 65536;
  attribute RTL_RAM_NAME of data_reg_4_0_1 : label is "inst/mem/data_reg_4_0_1";
  attribute RTL_RAM_TYPE of data_reg_4_0_1 : label is "RAM_SDP";
  attribute ram_addr_begin of data_reg_4_0_1 : label is 0;
  attribute ram_addr_end of data_reg_4_0_1 : label is 32767;
  attribute ram_offset of data_reg_4_0_1 : label is 0;
  attribute ram_slice_begin of data_reg_4_0_1 : label is 1;
  attribute ram_slice_end of data_reg_4_0_1 : label is 1;
begin
\buf_waddr_reg[1][10]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][10]_srl5_n_0\,
      Q => \buf_waddr_reg[1][10]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][11]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][11]_srl5_n_0\,
      Q => \buf_waddr_reg[1][11]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][12]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][12]_srl5_n_0\,
      Q => \buf_waddr_reg[1][12]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][13]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][13]_srl5_n_0\,
      Q => \buf_waddr_reg[1][13]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][14]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][14]_srl5_n_0\,
      Q => \buf_waddr_reg[1][14]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][15]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][15]_srl5_n_0\,
      Q => \buf_waddr_reg[1][15]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][1]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][1]_srl5_n_0\,
      Q => \buf_waddr_reg[1][1]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][2]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][2]_srl5_n_0\,
      Q => \buf_waddr_reg[1][2]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][3]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][3]_srl5_n_0\,
      Q => \buf_waddr_reg[1][3]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][4]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][4]_srl5_n_0\,
      Q => \buf_waddr_reg[1][4]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][5]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][5]_srl5_n_0\,
      Q => \buf_waddr_reg[1][5]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][6]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][6]_srl5_n_0\,
      Q => \buf_waddr_reg[1][6]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][7]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][7]_srl5_n_0\,
      Q => \buf_waddr_reg[1][7]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][8]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][8]_srl5_n_0\,
      Q => \buf_waddr_reg[1][8]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[1][9]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \buf_waddr_reg[2][9]_srl5_n_0\,
      Q => \buf_waddr_reg[1][9]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[2][10]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][10]__0_n_0\,
      Q => \buf_waddr_reg[2][10]_srl5_n_0\
    );
\buf_waddr_reg[2][11]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][11]__0_n_0\,
      Q => \buf_waddr_reg[2][11]_srl5_n_0\
    );
\buf_waddr_reg[2][12]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][12]__0_n_0\,
      Q => \buf_waddr_reg[2][12]_srl5_n_0\
    );
\buf_waddr_reg[2][13]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][13]__0_n_0\,
      Q => \buf_waddr_reg[2][13]_srl5_n_0\
    );
\buf_waddr_reg[2][14]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][14]__0_n_0\,
      Q => \buf_waddr_reg[2][14]_srl5_n_0\
    );
\buf_waddr_reg[2][15]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][15]__0_n_0\,
      Q => \buf_waddr_reg[2][15]_srl5_n_0\
    );
\buf_waddr_reg[2][1]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][1]__0_n_0\,
      Q => \buf_waddr_reg[2][1]_srl5_n_0\
    );
\buf_waddr_reg[2][2]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][2]__0_n_0\,
      Q => \buf_waddr_reg[2][2]_srl5_n_0\
    );
\buf_waddr_reg[2][3]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][3]__0_n_0\,
      Q => \buf_waddr_reg[2][3]_srl5_n_0\
    );
\buf_waddr_reg[2][4]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][4]__0_n_0\,
      Q => \buf_waddr_reg[2][4]_srl5_n_0\
    );
\buf_waddr_reg[2][5]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][5]__0_n_0\,
      Q => \buf_waddr_reg[2][5]_srl5_n_0\
    );
\buf_waddr_reg[2][6]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][6]__0_n_0\,
      Q => \buf_waddr_reg[2][6]_srl5_n_0\
    );
\buf_waddr_reg[2][7]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][7]__0_n_0\,
      Q => \buf_waddr_reg[2][7]_srl5_n_0\
    );
\buf_waddr_reg[2][8]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][8]__0_n_0\,
      Q => \buf_waddr_reg[2][8]_srl5_n_0\
    );
\buf_waddr_reg[2][9]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \buf_waddr_reg[7][9]__0_n_0\,
      Q => \buf_waddr_reg[2][9]_srl5_n_0\
    );
\buf_waddr_reg[7][10]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(9),
      Q => \buf_waddr_reg[7][10]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][11]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(10),
      Q => \buf_waddr_reg[7][11]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][12]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(11),
      Q => \buf_waddr_reg[7][12]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][13]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(12),
      Q => \buf_waddr_reg[7][13]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][14]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(13),
      Q => \buf_waddr_reg[7][14]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][15]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(14),
      Q => \buf_waddr_reg[7][15]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][1]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(0),
      Q => \buf_waddr_reg[7][1]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][2]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(1),
      Q => \buf_waddr_reg[7][2]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][3]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(2),
      Q => \buf_waddr_reg[7][3]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][4]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(3),
      Q => \buf_waddr_reg[7][4]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][5]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(4),
      Q => \buf_waddr_reg[7][5]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][6]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(5),
      Q => \buf_waddr_reg[7][6]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][7]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(6),
      Q => \buf_waddr_reg[7][7]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][8]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(7),
      Q => \buf_waddr_reg[7][8]__0_n_0\,
      R => '0'
    );
\buf_waddr_reg[7][9]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sw(8),
      Q => \buf_waddr_reg[7][9]__0_n_0\,
      R => '0'
    );
data_reg_1_0_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \buf_waddr_reg[1][15]__0_n_0\,
      ADDRARDADDR(13) => \buf_waddr_reg[1][14]__0_n_0\,
      ADDRARDADDR(12) => \buf_waddr_reg[1][13]__0_n_0\,
      ADDRARDADDR(11) => \buf_waddr_reg[1][12]__0_n_0\,
      ADDRARDADDR(10) => \buf_waddr_reg[1][11]__0_n_0\,
      ADDRARDADDR(9) => \buf_waddr_reg[1][10]__0_n_0\,
      ADDRARDADDR(8) => \buf_waddr_reg[1][9]__0_n_0\,
      ADDRARDADDR(7) => \buf_waddr_reg[1][8]__0_n_0\,
      ADDRARDADDR(6) => \buf_waddr_reg[1][7]__0_n_0\,
      ADDRARDADDR(5) => \buf_waddr_reg[1][6]__0_n_0\,
      ADDRARDADDR(4) => \buf_waddr_reg[1][5]__0_n_0\,
      ADDRARDADDR(3) => \buf_waddr_reg[1][4]__0_n_0\,
      ADDRARDADDR(2) => \buf_waddr_reg[1][3]__0_n_0\,
      ADDRARDADDR(1) => \buf_waddr_reg[1][2]__0_n_0\,
      ADDRARDADDR(0) => \buf_waddr_reg[1][1]__0_n_0\,
      ADDRBWRADDR(15 downto 0) => B"1000000000000001",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_data_reg_1_0_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_data_reg_1_0_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_data_reg_1_0_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000000000001",
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_data_reg_1_0_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_data_reg_1_0_0_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \rdata3_\,
      DOPADOP(3 downto 0) => NLW_data_reg_1_0_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_data_reg_1_0_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_data_reg_1_0_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => NLW_data_reg_1_0_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_data_reg_1_0_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_data_reg_1_0_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_data_reg_1_0_0_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"1111",
      WEBWE(7 downto 0) => B"00000000"
    );
data_reg_2_0_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \buf_waddr_reg[1][15]__0_n_0\,
      ADDRARDADDR(13) => \buf_waddr_reg[1][14]__0_n_0\,
      ADDRARDADDR(12) => \buf_waddr_reg[1][13]__0_n_0\,
      ADDRARDADDR(11) => \buf_waddr_reg[1][12]__0_n_0\,
      ADDRARDADDR(10) => \buf_waddr_reg[1][11]__0_n_0\,
      ADDRARDADDR(9) => \buf_waddr_reg[1][10]__0_n_0\,
      ADDRARDADDR(8) => \buf_waddr_reg[1][9]__0_n_0\,
      ADDRARDADDR(7) => \buf_waddr_reg[1][8]__0_n_0\,
      ADDRARDADDR(6) => \buf_waddr_reg[1][7]__0_n_0\,
      ADDRARDADDR(5) => \buf_waddr_reg[1][6]__0_n_0\,
      ADDRARDADDR(4) => \buf_waddr_reg[1][5]__0_n_0\,
      ADDRARDADDR(3) => \buf_waddr_reg[1][4]__0_n_0\,
      ADDRARDADDR(2) => \buf_waddr_reg[1][3]__0_n_0\,
      ADDRARDADDR(1) => \buf_waddr_reg[1][2]__0_n_0\,
      ADDRARDADDR(0) => \buf_waddr_reg[1][1]__0_n_0\,
      ADDRBWRADDR(15 downto 0) => B"1100000000000000",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_data_reg_2_0_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_data_reg_2_0_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_data_reg_2_0_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000000000001",
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_data_reg_2_0_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_data_reg_2_0_1_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \rdata2_\(0),
      DOPADOP(3 downto 0) => NLW_data_reg_2_0_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_data_reg_2_0_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_data_reg_2_0_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => NLW_data_reg_2_0_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_data_reg_2_0_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_data_reg_2_0_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_data_reg_2_0_1_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"1111",
      WEBWE(7 downto 0) => B"00000000"
    );
data_reg_3_0_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \buf_waddr_reg[1][15]__0_n_0\,
      ADDRARDADDR(13) => \buf_waddr_reg[1][14]__0_n_0\,
      ADDRARDADDR(12) => \buf_waddr_reg[1][13]__0_n_0\,
      ADDRARDADDR(11) => \buf_waddr_reg[1][12]__0_n_0\,
      ADDRARDADDR(10) => \buf_waddr_reg[1][11]__0_n_0\,
      ADDRARDADDR(9) => \buf_waddr_reg[1][10]__0_n_0\,
      ADDRARDADDR(8) => \buf_waddr_reg[1][9]__0_n_0\,
      ADDRARDADDR(7) => \buf_waddr_reg[1][8]__0_n_0\,
      ADDRARDADDR(6) => \buf_waddr_reg[1][7]__0_n_0\,
      ADDRARDADDR(5) => \buf_waddr_reg[1][6]__0_n_0\,
      ADDRARDADDR(4) => \buf_waddr_reg[1][5]__0_n_0\,
      ADDRARDADDR(3) => \buf_waddr_reg[1][4]__0_n_0\,
      ADDRARDADDR(2) => \buf_waddr_reg[1][3]__0_n_0\,
      ADDRARDADDR(1) => \buf_waddr_reg[1][2]__0_n_0\,
      ADDRARDADDR(0) => \buf_waddr_reg[1][1]__0_n_0\,
      ADDRBWRADDR(15 downto 0) => B"1010000000000000",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_data_reg_3_0_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_data_reg_3_0_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_data_reg_3_0_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000000000001",
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_data_reg_3_0_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_data_reg_3_0_1_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \rdata1_\(0),
      DOPADOP(3 downto 0) => NLW_data_reg_3_0_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_data_reg_3_0_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_data_reg_3_0_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => NLW_data_reg_3_0_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_data_reg_3_0_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_data_reg_3_0_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_data_reg_3_0_1_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"1111",
      WEBWE(7 downto 0) => B"00000000"
    );
data_reg_4_0_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \buf_waddr_reg[1][15]__0_n_0\,
      ADDRARDADDR(13) => \buf_waddr_reg[1][14]__0_n_0\,
      ADDRARDADDR(12) => \buf_waddr_reg[1][13]__0_n_0\,
      ADDRARDADDR(11) => \buf_waddr_reg[1][12]__0_n_0\,
      ADDRARDADDR(10) => \buf_waddr_reg[1][11]__0_n_0\,
      ADDRARDADDR(9) => \buf_waddr_reg[1][10]__0_n_0\,
      ADDRARDADDR(8) => \buf_waddr_reg[1][9]__0_n_0\,
      ADDRARDADDR(7) => \buf_waddr_reg[1][8]__0_n_0\,
      ADDRARDADDR(6) => \buf_waddr_reg[1][7]__0_n_0\,
      ADDRARDADDR(5) => \buf_waddr_reg[1][6]__0_n_0\,
      ADDRARDADDR(4) => \buf_waddr_reg[1][5]__0_n_0\,
      ADDRARDADDR(3) => \buf_waddr_reg[1][4]__0_n_0\,
      ADDRARDADDR(2) => \buf_waddr_reg[1][3]__0_n_0\,
      ADDRARDADDR(1) => \buf_waddr_reg[1][2]__0_n_0\,
      ADDRARDADDR(0) => \buf_waddr_reg[1][1]__0_n_0\,
      ADDRBWRADDR(15 downto 0) => B"1001000000000000",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_data_reg_4_0_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_data_reg_4_0_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_data_reg_4_0_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000000000001",
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_data_reg_4_0_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_data_reg_4_0_1_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \rdata0_\(0),
      DOPADOP(3 downto 0) => NLW_data_reg_4_0_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_data_reg_4_0_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_data_reg_4_0_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => NLW_data_reg_4_0_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_data_reg_4_0_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_data_reg_4_0_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_data_reg_4_0_1_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"1111",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OOOP_cpu_0_0_cpu is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of OOOP_cpu_0_0_cpu : entity is "cpu";
end OOOP_cpu_0_0_cpu;

architecture STRUCTURE of OOOP_cpu_0_0_cpu is
  signal \^led\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \led_light[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_light[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_light[2]_i_1_n_0\ : STD_LOGIC;
  signal \led_light[3]_i_1_n_0\ : STD_LOGIC;
  signal rdata0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rdata1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rdata2 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rdata3 : STD_LOGIC;
begin
  led(3 downto 0) <= \^led\(3 downto 0);
display: entity work.OOOP_cpu_0_0_display
     port map (
      an(3 downto 0) => an(3 downto 0),
      clk => clk,
      seg(0) => seg(0)
    );
\led_light[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^led\(0),
      I1 => rdata0(1),
      O => \led_light[0]_i_1_n_0\
    );
\led_light[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^led\(1),
      I1 => rdata1(1),
      O => \led_light[1]_i_1_n_0\
    );
\led_light[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^led\(2),
      I1 => rdata2(1),
      O => \led_light[2]_i_1_n_0\
    );
\led_light[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^led\(3),
      I1 => rdata3,
      O => \led_light[3]_i_1_n_0\
    );
\led_light_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \led_light[0]_i_1_n_0\,
      Q => \^led\(0),
      R => '0'
    );
\led_light_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \led_light[1]_i_1_n_0\,
      Q => \^led\(1),
      R => '0'
    );
\led_light_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \led_light[2]_i_1_n_0\,
      Q => \^led\(2),
      R => '0'
    );
\led_light_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \led_light[3]_i_1_n_0\,
      Q => \^led\(3),
      R => '0'
    );
mem: entity work.OOOP_cpu_0_0_mem
     port map (
      clk => clk,
      \rdata0_\(0) => rdata0(1),
      \rdata1_\(0) => rdata1(1),
      \rdata2_\(0) => rdata2(1),
      \rdata3_\ => rdata3,
      sw(14 downto 0) => sw(14 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity OOOP_cpu_0_0 is
  port (
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of OOOP_cpu_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of OOOP_cpu_0_0 : entity is "OOOP_cpu_0_0,cpu,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of OOOP_cpu_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of OOOP_cpu_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of OOOP_cpu_0_0 : entity is "cpu,Vivado 2023.1";
end OOOP_cpu_0_0;

architecture STRUCTURE of OOOP_cpu_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^seg\ : STD_LOGIC_VECTOR ( 5 to 5 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
begin
  led(15) <= \<const0>\;
  led(14) <= \<const0>\;
  led(13) <= \<const0>\;
  led(12) <= \<const0>\;
  led(11) <= \<const0>\;
  led(10) <= \<const0>\;
  led(9) <= \<const0>\;
  led(8) <= \<const0>\;
  led(7) <= \<const0>\;
  led(6) <= \<const0>\;
  led(5) <= \<const0>\;
  led(4) <= \<const0>\;
  led(3 downto 0) <= \^led\(3 downto 0);
  seg(6) <= \<const1>\;
  seg(5) <= \^seg\(5);
  seg(4) <= \^seg\(5);
  seg(3) <= \^seg\(5);
  seg(2) <= \^seg\(5);
  seg(1) <= \^seg\(5);
  seg(0) <= \^seg\(5);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.OOOP_cpu_0_0_cpu
     port map (
      an(3 downto 0) => an(3 downto 0),
      clk => clk,
      led(3 downto 0) => \^led\(3 downto 0),
      seg(0) => \^seg\(5),
      sw(14 downto 0) => sw(14 downto 0)
    );
end STRUCTURE;
