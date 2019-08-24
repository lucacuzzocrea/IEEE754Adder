--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SpecialCasesCheck_synthesis.vhd
-- /___/   /\     Timestamp: Sat Aug 24 10:53:07 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm SpecialCasesCheck -w -dir netgen/synthesis -ofmt vhdl -sim SpecialCasesCheck.ngc SpecialCasesCheck_synthesis.vhd 
-- Device	: xa6slx4-3-csg225
-- Input file	: SpecialCasesCheck.ngc
-- Output file	: /home/Luca/ISE/IEEE754Adder/netgen/synthesis/SpecialCasesCheck_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: SpecialCasesCheck
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity SpecialCasesCheck is
  port (
    isNaN : out STD_LOGIC; 
    isZero : out STD_LOGIC; 
    X : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    Y : in STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end SpecialCasesCheck;

architecture Structure of SpecialCasesCheck is
  signal X_31_IBUF_0 : STD_LOGIC; 
  signal X_30_IBUF_1 : STD_LOGIC; 
  signal X_29_IBUF_2 : STD_LOGIC; 
  signal X_28_IBUF_3 : STD_LOGIC; 
  signal X_27_IBUF_4 : STD_LOGIC; 
  signal X_26_IBUF_5 : STD_LOGIC; 
  signal X_25_IBUF_6 : STD_LOGIC; 
  signal X_24_IBUF_7 : STD_LOGIC; 
  signal X_23_IBUF_8 : STD_LOGIC; 
  signal X_22_IBUF_9 : STD_LOGIC; 
  signal X_21_IBUF_10 : STD_LOGIC; 
  signal X_20_IBUF_11 : STD_LOGIC; 
  signal X_19_IBUF_12 : STD_LOGIC; 
  signal X_18_IBUF_13 : STD_LOGIC; 
  signal X_17_IBUF_14 : STD_LOGIC; 
  signal X_16_IBUF_15 : STD_LOGIC; 
  signal X_15_IBUF_16 : STD_LOGIC; 
  signal X_14_IBUF_17 : STD_LOGIC; 
  signal X_13_IBUF_18 : STD_LOGIC; 
  signal X_12_IBUF_19 : STD_LOGIC; 
  signal X_11_IBUF_20 : STD_LOGIC; 
  signal X_10_IBUF_21 : STD_LOGIC; 
  signal X_9_IBUF_22 : STD_LOGIC; 
  signal X_8_IBUF_23 : STD_LOGIC; 
  signal X_7_IBUF_24 : STD_LOGIC; 
  signal X_6_IBUF_25 : STD_LOGIC; 
  signal X_5_IBUF_26 : STD_LOGIC; 
  signal X_4_IBUF_27 : STD_LOGIC; 
  signal X_3_IBUF_28 : STD_LOGIC; 
  signal X_2_IBUF_29 : STD_LOGIC; 
  signal X_1_IBUF_30 : STD_LOGIC; 
  signal X_0_IBUF_31 : STD_LOGIC; 
  signal Y_31_IBUF_32 : STD_LOGIC; 
  signal Y_30_IBUF_33 : STD_LOGIC; 
  signal Y_29_IBUF_34 : STD_LOGIC; 
  signal Y_28_IBUF_35 : STD_LOGIC; 
  signal Y_27_IBUF_36 : STD_LOGIC; 
  signal Y_26_IBUF_37 : STD_LOGIC; 
  signal Y_25_IBUF_38 : STD_LOGIC; 
  signal Y_24_IBUF_39 : STD_LOGIC; 
  signal Y_23_IBUF_40 : STD_LOGIC; 
  signal Y_22_IBUF_41 : STD_LOGIC; 
  signal Y_21_IBUF_42 : STD_LOGIC; 
  signal Y_20_IBUF_43 : STD_LOGIC; 
  signal Y_19_IBUF_44 : STD_LOGIC; 
  signal Y_18_IBUF_45 : STD_LOGIC; 
  signal Y_17_IBUF_46 : STD_LOGIC; 
  signal Y_16_IBUF_47 : STD_LOGIC; 
  signal Y_15_IBUF_48 : STD_LOGIC; 
  signal Y_14_IBUF_49 : STD_LOGIC; 
  signal Y_13_IBUF_50 : STD_LOGIC; 
  signal Y_12_IBUF_51 : STD_LOGIC; 
  signal Y_11_IBUF_52 : STD_LOGIC; 
  signal Y_10_IBUF_53 : STD_LOGIC; 
  signal Y_9_IBUF_54 : STD_LOGIC; 
  signal Y_8_IBUF_55 : STD_LOGIC; 
  signal Y_7_IBUF_56 : STD_LOGIC; 
  signal Y_6_IBUF_57 : STD_LOGIC; 
  signal Y_5_IBUF_58 : STD_LOGIC; 
  signal Y_4_IBUF_59 : STD_LOGIC; 
  signal Y_3_IBUF_60 : STD_LOGIC; 
  signal Y_2_IBUF_61 : STD_LOGIC; 
  signal Y_1_IBUF_62 : STD_LOGIC; 
  signal Y_0_IBUF_63 : STD_LOGIC; 
  signal isNaN_OBUF_64 : STD_LOGIC; 
  signal isZero_OBUF_65 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal NC_yCheck_G_compute_G_tmp : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal NC_isNan : STD_LOGIC; 
  signal NC_isNan1_92 : STD_LOGIC; 
  signal NC_isNan2_93 : STD_LOGIC; 
  signal NC_isNan3_94 : STD_LOGIC; 
  signal NC_isNan4_95 : STD_LOGIC; 
  signal NC_isNan5_96 : STD_LOGIC; 
  signal NC_isNan6_97 : STD_LOGIC; 
  signal NC_isNan7_98 : STD_LOGIC; 
  signal NC_isNan8_99 : STD_LOGIC; 
  signal NC_isNan9_100 : STD_LOGIC; 
  signal NC_isNan10_101 : STD_LOGIC; 
  signal NC_isNan11_102 : STD_LOGIC; 
  signal ZC_isZero_wg_lut : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal ZC_isZero_wg_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  ZC_isZero_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => X_29_IBUF_2,
      I1 => Y_29_IBUF_34,
      I2 => X_3_IBUF_28,
      I3 => Y_3_IBUF_60,
      O => ZC_isZero_wg_lut(0)
    );
  ZC_isZero_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => ZC_isZero_wg_lut(0),
      O => ZC_isZero_wg_cy(0)
    );
  ZC_isZero_wg_lut_1_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => X_4_IBUF_27,
      I1 => Y_4_IBUF_59,
      I2 => X_26_IBUF_5,
      I3 => Y_26_IBUF_37,
      I4 => X_7_IBUF_24,
      I5 => Y_7_IBUF_56,
      O => ZC_isZero_wg_lut(1)
    );
  ZC_isZero_wg_cy_1_Q : MUXCY
    port map (
      CI => ZC_isZero_wg_cy(0),
      DI => N0,
      S => ZC_isZero_wg_lut(1),
      O => ZC_isZero_wg_cy(1)
    );
  ZC_isZero_wg_lut_2_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => X_10_IBUF_21,
      I1 => Y_10_IBUF_53,
      I2 => X_15_IBUF_16,
      I3 => Y_15_IBUF_48,
      I4 => X_25_IBUF_6,
      I5 => Y_25_IBUF_38,
      O => ZC_isZero_wg_lut(2)
    );
  ZC_isZero_wg_cy_2_Q : MUXCY
    port map (
      CI => ZC_isZero_wg_cy(1),
      DI => N0,
      S => ZC_isZero_wg_lut(2),
      O => ZC_isZero_wg_cy(2)
    );
  ZC_isZero_wg_lut_3_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => X_14_IBUF_17,
      I1 => Y_14_IBUF_49,
      I2 => X_22_IBUF_9,
      I3 => Y_22_IBUF_41,
      I4 => X_18_IBUF_13,
      I5 => Y_18_IBUF_45,
      O => ZC_isZero_wg_lut(3)
    );
  ZC_isZero_wg_cy_3_Q : MUXCY
    port map (
      CI => ZC_isZero_wg_cy(2),
      DI => N0,
      S => ZC_isZero_wg_lut(3),
      O => ZC_isZero_wg_cy(3)
    );
  ZC_isZero_wg_lut_4_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => X_17_IBUF_14,
      I1 => Y_17_IBUF_46,
      I2 => X_1_IBUF_30,
      I3 => Y_1_IBUF_62,
      I4 => X_21_IBUF_10,
      I5 => Y_21_IBUF_42,
      O => ZC_isZero_wg_lut(4)
    );
  ZC_isZero_wg_cy_4_Q : MUXCY
    port map (
      CI => ZC_isZero_wg_cy(3),
      DI => N0,
      S => ZC_isZero_wg_lut(4),
      O => ZC_isZero_wg_cy(4)
    );
  ZC_isZero_wg_lut_5_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => X_20_IBUF_11,
      I1 => Y_20_IBUF_43,
      I2 => X_24_IBUF_7,
      I3 => Y_24_IBUF_39,
      I4 => X_19_IBUF_12,
      I5 => Y_19_IBUF_44,
      O => ZC_isZero_wg_lut(5)
    );
  ZC_isZero_wg_cy_5_Q : MUXCY
    port map (
      CI => ZC_isZero_wg_cy(4),
      DI => N0,
      S => ZC_isZero_wg_lut(5),
      O => ZC_isZero_wg_cy(5)
    );
  ZC_isZero_wg_lut_6_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => X_23_IBUF_8,
      I1 => Y_23_IBUF_40,
      I2 => X_16_IBUF_15,
      I3 => Y_16_IBUF_47,
      I4 => X_28_IBUF_3,
      I5 => Y_28_IBUF_35,
      O => ZC_isZero_wg_lut(6)
    );
  ZC_isZero_wg_cy_6_Q : MUXCY
    port map (
      CI => ZC_isZero_wg_cy(5),
      DI => N0,
      S => ZC_isZero_wg_lut(6),
      O => ZC_isZero_wg_cy(6)
    );
  ZC_isZero_wg_lut_7_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => X_27_IBUF_4,
      I1 => Y_27_IBUF_36,
      I2 => X_30_IBUF_1,
      I3 => Y_30_IBUF_33,
      I4 => Y_12_IBUF_51,
      I5 => X_12_IBUF_19,
      O => ZC_isZero_wg_lut(7)
    );
  ZC_isZero_wg_cy_7_Q : MUXCY
    port map (
      CI => ZC_isZero_wg_cy(6),
      DI => N0,
      S => ZC_isZero_wg_lut(7),
      O => ZC_isZero_wg_cy(7)
    );
  ZC_isZero_wg_lut_8_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => X_2_IBUF_29,
      I1 => Y_2_IBUF_61,
      I2 => X_13_IBUF_18,
      I3 => Y_13_IBUF_50,
      I4 => X_6_IBUF_25,
      I5 => Y_6_IBUF_57,
      O => ZC_isZero_wg_lut(8)
    );
  ZC_isZero_wg_cy_8_Q : MUXCY
    port map (
      CI => ZC_isZero_wg_cy(7),
      DI => N0,
      S => ZC_isZero_wg_lut(8),
      O => ZC_isZero_wg_cy(8)
    );
  ZC_isZero_wg_lut_9_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => X_5_IBUF_26,
      I1 => Y_5_IBUF_58,
      I2 => X_0_IBUF_31,
      I3 => Y_0_IBUF_63,
      I4 => X_9_IBUF_22,
      I5 => Y_9_IBUF_54,
      O => ZC_isZero_wg_lut(9)
    );
  ZC_isZero_wg_cy_9_Q : MUXCY
    port map (
      CI => ZC_isZero_wg_cy(8),
      DI => N0,
      S => ZC_isZero_wg_lut(9),
      O => ZC_isZero_wg_cy(9)
    );
  ZC_isZero_wg_cy_10_Q : MUXCY
    port map (
      CI => ZC_isZero_wg_cy(9),
      DI => N0,
      S => ZC_isZero_wg_lut(10),
      O => isZero_OBUF_65
    );
  NC_yCheck_G_compute_G_tmp_0_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Y_25_IBUF_38,
      I1 => Y_24_IBUF_39,
      I2 => Y_23_IBUF_40,
      O => N2
    );
  NC_yCheck_G_compute_G_tmp_0_Q : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => Y_30_IBUF_33,
      I1 => Y_29_IBUF_34,
      I2 => Y_28_IBUF_35,
      I3 => Y_27_IBUF_36,
      I4 => Y_26_IBUF_37,
      I5 => N2,
      O => NC_yCheck_G_compute_G_tmp
    );
  NC_isNan1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => X_27_IBUF_4,
      I1 => X_28_IBUF_3,
      I2 => X_25_IBUF_6,
      I3 => X_26_IBUF_5,
      I4 => X_23_IBUF_8,
      I5 => X_24_IBUF_7,
      O => NC_isNan
    );
  NC_isNan2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => X_29_IBUF_2,
      I1 => X_30_IBUF_1,
      I2 => NC_isNan,
      O => NC_isNan1_92
    );
  NC_isNan3 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => X_1_IBUF_30,
      I1 => X_20_IBUF_11,
      I2 => X_18_IBUF_13,
      I3 => X_19_IBUF_12,
      I4 => X_16_IBUF_15,
      I5 => X_17_IBUF_14,
      O => NC_isNan2_93
    );
  NC_isNan4 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => X_12_IBUF_19,
      I1 => X_13_IBUF_18,
      I2 => X_0_IBUF_31,
      I3 => X_10_IBUF_21,
      I4 => X_11_IBUF_20,
      O => NC_isNan3_94
    );
  NC_isNan5 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => X_8_IBUF_23,
      I1 => X_9_IBUF_22,
      I2 => X_6_IBUF_25,
      I3 => X_7_IBUF_24,
      O => NC_isNan4_95
    );
  NC_isNan6 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => X_4_IBUF_27,
      I1 => X_5_IBUF_26,
      I2 => X_2_IBUF_29,
      I3 => X_3_IBUF_28,
      I4 => X_21_IBUF_10,
      I5 => X_22_IBUF_9,
      O => NC_isNan5_96
    );
  NC_isNan7 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NC_isNan4_95,
      I1 => NC_isNan5_96,
      I2 => NC_isNan2_93,
      I3 => X_14_IBUF_17,
      I4 => X_15_IBUF_16,
      I5 => NC_isNan3_94,
      O => NC_isNan6_97
    );
  NC_isNan8 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => Y_1_IBUF_62,
      I1 => Y_20_IBUF_43,
      I2 => Y_18_IBUF_45,
      I3 => Y_19_IBUF_44,
      I4 => Y_16_IBUF_47,
      I5 => Y_17_IBUF_46,
      O => NC_isNan7_98
    );
  NC_isNan9 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => Y_12_IBUF_51,
      I1 => Y_13_IBUF_50,
      I2 => Y_0_IBUF_63,
      I3 => Y_10_IBUF_53,
      I4 => Y_11_IBUF_52,
      O => NC_isNan8_99
    );
  NC_isNan10 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Y_8_IBUF_55,
      I1 => Y_9_IBUF_54,
      I2 => Y_6_IBUF_57,
      I3 => Y_7_IBUF_56,
      O => NC_isNan9_100
    );
  NC_isNan11 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => Y_4_IBUF_59,
      I1 => Y_5_IBUF_58,
      I2 => Y_2_IBUF_61,
      I3 => Y_3_IBUF_60,
      I4 => Y_21_IBUF_42,
      I5 => Y_22_IBUF_41,
      O => NC_isNan10_101
    );
  NC_isNan12 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NC_isNan9_100,
      I1 => NC_isNan10_101,
      I2 => NC_isNan7_98,
      I3 => Y_14_IBUF_49,
      I4 => Y_15_IBUF_48,
      I5 => NC_isNan8_99,
      O => NC_isNan11_102
    );
  X_31_IBUF : IBUF
    port map (
      I => X(31),
      O => X_31_IBUF_0
    );
  X_30_IBUF : IBUF
    port map (
      I => X(30),
      O => X_30_IBUF_1
    );
  X_29_IBUF : IBUF
    port map (
      I => X(29),
      O => X_29_IBUF_2
    );
  X_28_IBUF : IBUF
    port map (
      I => X(28),
      O => X_28_IBUF_3
    );
  X_27_IBUF : IBUF
    port map (
      I => X(27),
      O => X_27_IBUF_4
    );
  X_26_IBUF : IBUF
    port map (
      I => X(26),
      O => X_26_IBUF_5
    );
  X_25_IBUF : IBUF
    port map (
      I => X(25),
      O => X_25_IBUF_6
    );
  X_24_IBUF : IBUF
    port map (
      I => X(24),
      O => X_24_IBUF_7
    );
  X_23_IBUF : IBUF
    port map (
      I => X(23),
      O => X_23_IBUF_8
    );
  X_22_IBUF : IBUF
    port map (
      I => X(22),
      O => X_22_IBUF_9
    );
  X_21_IBUF : IBUF
    port map (
      I => X(21),
      O => X_21_IBUF_10
    );
  X_20_IBUF : IBUF
    port map (
      I => X(20),
      O => X_20_IBUF_11
    );
  X_19_IBUF : IBUF
    port map (
      I => X(19),
      O => X_19_IBUF_12
    );
  X_18_IBUF : IBUF
    port map (
      I => X(18),
      O => X_18_IBUF_13
    );
  X_17_IBUF : IBUF
    port map (
      I => X(17),
      O => X_17_IBUF_14
    );
  X_16_IBUF : IBUF
    port map (
      I => X(16),
      O => X_16_IBUF_15
    );
  X_15_IBUF : IBUF
    port map (
      I => X(15),
      O => X_15_IBUF_16
    );
  X_14_IBUF : IBUF
    port map (
      I => X(14),
      O => X_14_IBUF_17
    );
  X_13_IBUF : IBUF
    port map (
      I => X(13),
      O => X_13_IBUF_18
    );
  X_12_IBUF : IBUF
    port map (
      I => X(12),
      O => X_12_IBUF_19
    );
  X_11_IBUF : IBUF
    port map (
      I => X(11),
      O => X_11_IBUF_20
    );
  X_10_IBUF : IBUF
    port map (
      I => X(10),
      O => X_10_IBUF_21
    );
  X_9_IBUF : IBUF
    port map (
      I => X(9),
      O => X_9_IBUF_22
    );
  X_8_IBUF : IBUF
    port map (
      I => X(8),
      O => X_8_IBUF_23
    );
  X_7_IBUF : IBUF
    port map (
      I => X(7),
      O => X_7_IBUF_24
    );
  X_6_IBUF : IBUF
    port map (
      I => X(6),
      O => X_6_IBUF_25
    );
  X_5_IBUF : IBUF
    port map (
      I => X(5),
      O => X_5_IBUF_26
    );
  X_4_IBUF : IBUF
    port map (
      I => X(4),
      O => X_4_IBUF_27
    );
  X_3_IBUF : IBUF
    port map (
      I => X(3),
      O => X_3_IBUF_28
    );
  X_2_IBUF : IBUF
    port map (
      I => X(2),
      O => X_2_IBUF_29
    );
  X_1_IBUF : IBUF
    port map (
      I => X(1),
      O => X_1_IBUF_30
    );
  X_0_IBUF : IBUF
    port map (
      I => X(0),
      O => X_0_IBUF_31
    );
  Y_31_IBUF : IBUF
    port map (
      I => Y(31),
      O => Y_31_IBUF_32
    );
  Y_30_IBUF : IBUF
    port map (
      I => Y(30),
      O => Y_30_IBUF_33
    );
  Y_29_IBUF : IBUF
    port map (
      I => Y(29),
      O => Y_29_IBUF_34
    );
  Y_28_IBUF : IBUF
    port map (
      I => Y(28),
      O => Y_28_IBUF_35
    );
  Y_27_IBUF : IBUF
    port map (
      I => Y(27),
      O => Y_27_IBUF_36
    );
  Y_26_IBUF : IBUF
    port map (
      I => Y(26),
      O => Y_26_IBUF_37
    );
  Y_25_IBUF : IBUF
    port map (
      I => Y(25),
      O => Y_25_IBUF_38
    );
  Y_24_IBUF : IBUF
    port map (
      I => Y(24),
      O => Y_24_IBUF_39
    );
  Y_23_IBUF : IBUF
    port map (
      I => Y(23),
      O => Y_23_IBUF_40
    );
  Y_22_IBUF : IBUF
    port map (
      I => Y(22),
      O => Y_22_IBUF_41
    );
  Y_21_IBUF : IBUF
    port map (
      I => Y(21),
      O => Y_21_IBUF_42
    );
  Y_20_IBUF : IBUF
    port map (
      I => Y(20),
      O => Y_20_IBUF_43
    );
  Y_19_IBUF : IBUF
    port map (
      I => Y(19),
      O => Y_19_IBUF_44
    );
  Y_18_IBUF : IBUF
    port map (
      I => Y(18),
      O => Y_18_IBUF_45
    );
  Y_17_IBUF : IBUF
    port map (
      I => Y(17),
      O => Y_17_IBUF_46
    );
  Y_16_IBUF : IBUF
    port map (
      I => Y(16),
      O => Y_16_IBUF_47
    );
  Y_15_IBUF : IBUF
    port map (
      I => Y(15),
      O => Y_15_IBUF_48
    );
  Y_14_IBUF : IBUF
    port map (
      I => Y(14),
      O => Y_14_IBUF_49
    );
  Y_13_IBUF : IBUF
    port map (
      I => Y(13),
      O => Y_13_IBUF_50
    );
  Y_12_IBUF : IBUF
    port map (
      I => Y(12),
      O => Y_12_IBUF_51
    );
  Y_11_IBUF : IBUF
    port map (
      I => Y(11),
      O => Y_11_IBUF_52
    );
  Y_10_IBUF : IBUF
    port map (
      I => Y(10),
      O => Y_10_IBUF_53
    );
  Y_9_IBUF : IBUF
    port map (
      I => Y(9),
      O => Y_9_IBUF_54
    );
  Y_8_IBUF : IBUF
    port map (
      I => Y(8),
      O => Y_8_IBUF_55
    );
  Y_7_IBUF : IBUF
    port map (
      I => Y(7),
      O => Y_7_IBUF_56
    );
  Y_6_IBUF : IBUF
    port map (
      I => Y(6),
      O => Y_6_IBUF_57
    );
  Y_5_IBUF : IBUF
    port map (
      I => Y(5),
      O => Y_5_IBUF_58
    );
  Y_4_IBUF : IBUF
    port map (
      I => Y(4),
      O => Y_4_IBUF_59
    );
  Y_3_IBUF : IBUF
    port map (
      I => Y(3),
      O => Y_3_IBUF_60
    );
  Y_2_IBUF : IBUF
    port map (
      I => Y(2),
      O => Y_2_IBUF_61
    );
  Y_1_IBUF : IBUF
    port map (
      I => Y(1),
      O => Y_1_IBUF_62
    );
  Y_0_IBUF : IBUF
    port map (
      I => Y(0),
      O => Y_0_IBUF_63
    );
  isNaN_OBUF : OBUF
    port map (
      I => isNaN_OBUF_64,
      O => isNaN
    );
  isZero_OBUF : OBUF
    port map (
      I => isZero_OBUF_65,
      O => isZero
    );
  ZC_isZero_wg_lut_10_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => X_8_IBUF_23,
      I1 => Y_8_IBUF_55,
      I2 => X_31_IBUF_0,
      I3 => Y_31_IBUF_32,
      I4 => X_11_IBUF_20,
      I5 => Y_11_IBUF_52,
      O => ZC_isZero_wg_lut(10)
    );
  NC_isNan13 : LUT6
    generic map(
      INIT => X"EEEECCCCAAAA0880"
    )
    port map (
      I0 => NC_yCheck_G_compute_G_tmp,
      I1 => NC_isNan1_92,
      I2 => X_31_IBUF_0,
      I3 => Y_31_IBUF_32,
      I4 => NC_isNan11_102,
      I5 => NC_isNan6_97,
      O => isNaN_OBUF_64
    );

end Structure;

