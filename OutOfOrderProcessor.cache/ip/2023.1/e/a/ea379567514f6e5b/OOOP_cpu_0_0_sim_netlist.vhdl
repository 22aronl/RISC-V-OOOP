-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Jun 28 19:47:48 2023
-- Host        : DESKTOP-M2KV102 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ OOOP_cpu_0_0_sim_netlist.vhdl
-- Design      : OOOP_cpu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_display is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_display;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_display is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu is
begin
display: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_display
     port map (
      an(3 downto 0) => an(3 downto 0),
      clk => clk,
      seg(0) => seg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "OOOP_cpu_0_0,cpu,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cpu,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  signal \^seg\ : STD_LOGIC_VECTOR ( 5 to 5 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
begin
  seg(6) <= \<const1>\;
  seg(5) <= \^seg\(5);
  seg(4) <= \^seg\(5);
  seg(3) <= \^seg\(5);
  seg(2) <= \^seg\(5);
  seg(1) <= \^seg\(5);
  seg(0) <= \^seg\(5);
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cpu
     port map (
      an(3 downto 0) => an(3 downto 0),
      clk => clk,
      seg(0) => \^seg\(5)
    );
end STRUCTURE;
