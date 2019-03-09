-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Oct 29 18:40:40 2018
-- Host        : DESKTOP-AI64EI3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               H:/Desktop/Video_new_PCB/PCB_test_project/PCB_test_DDR3_ok1/PCB_test/PCB_test.srcs/sources_1/ip/ila_1/ila_1_stub.vhdl
-- Design      : ila_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_1 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe13 : in STD_LOGIC_VECTOR ( 18 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 18 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end ila_1;

architecture stub of ila_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[0:0],probe1[0:0],probe2[0:0],probe3[23:0],probe4[23:0],probe5[0:0],probe6[0:0],probe7[0:0],probe8[0:0],probe9[0:0],probe10[0:0],probe11[0:0],probe12[0:0],probe13[18:0],probe14[10:0],probe15[18:0],probe16[10:0],probe17[7:0],probe18[7:0],probe19[7:0],probe20[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2017.4";
begin
end;
