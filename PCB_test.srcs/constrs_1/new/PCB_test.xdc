#set_property PACKAGE_PIN AC9 [get_ports {clk_in1_p}]
#set_property IOSTANDARD LVDS [get_ports {clk_in1_p}]
#set_property PACKAGE_PIN AD9 [get_ports {clk_in1_n}]
#set_property IOSTANDARD LVDS [get_ports {clk_in1_n}]

#set_property PACKAGE_PIN AA9 [get_ports {clk_in2_p}]
#set_property IOSTANDARD LVDS [get_ports {clk_in2_p}]
#set_property PACKAGE_PIN AB9 [get_ports {clk_in2_n}]
#set_property IOSTANDARD LVDS [get_ports {clk_in2_n}]


set_property PACKAGE_PIN V9 [get_ports led1]
set_property IOSTANDARD LVCMOS15 [get_ports led1]
set_property PACKAGE_PIN W8 [get_ports led2]
set_property IOSTANDARD LVCMOS15 [get_ports led2]

set_property PACKAGE_PIN W10 [get_ports init_calib_complete]
set_property IOSTANDARD LVCMOS15 [get_ports init_calib_complete]


set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets HDMI_O_CLK_OUT_1_OBUF]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets HDMI_O_CLK_OUT_2_OBUF]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets HDMI_O_CLK_OUT_3_OBUF]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets HDMI_O_CLK_OUT_4_OBUF]

################################################################# ADV7611_1

set_property PACKAGE_PIN P25 [get_ports HDMI_I_P_IN_1[23]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[23]]
set_property PACKAGE_PIN P26 [get_ports HDMI_I_P_IN_1[22]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[22]]
set_property PACKAGE_PIN R25 [get_ports HDMI_I_P_IN_1[21]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[21]]
set_property PACKAGE_PIN R26 [get_ports HDMI_I_P_IN_1[20]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[20]]
set_property PACKAGE_PIN T25 [get_ports HDMI_I_P_IN_1[19]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[19]]
set_property PACKAGE_PIN T24 [get_ports HDMI_I_P_IN_1[18]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[18]]
set_property PACKAGE_PIN U26 [get_ports HDMI_I_P_IN_1[17]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[17]]
set_property PACKAGE_PIN U25 [get_ports HDMI_I_P_IN_1[16]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[16]]
set_property PACKAGE_PIN W26 [get_ports HDMI_I_P_IN_1[15]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[15]]
set_property PACKAGE_PIN W25 [get_ports HDMI_I_P_IN_1[14]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[14]]
set_property PACKAGE_PIN Y26 [get_ports HDMI_I_P_IN_1[13]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[13]]
set_property PACKAGE_PIN Y25 [get_ports HDMI_I_P_IN_1[12]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[12]]

set_property PACKAGE_PIN AA25 [get_ports HDMI_I_P_IN_1[11]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[11]]
set_property PACKAGE_PIN AB26 [get_ports HDMI_I_P_IN_1[10]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[10]]
set_property PACKAGE_PIN AB25 [get_ports HDMI_I_P_IN_1[9]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[9]]
set_property PACKAGE_PIN AC26 [get_ports HDMI_I_P_IN_1[8]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[8]]
set_property PACKAGE_PIN AD26 [get_ports HDMI_I_P_IN_1[7]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[7]]
set_property PACKAGE_PIN AD25 [get_ports HDMI_I_P_IN_1[6]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[6]]
set_property PACKAGE_PIN AE26 [get_ports HDMI_I_P_IN_1[5]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[5]]
set_property PACKAGE_PIN AE25 [get_ports HDMI_I_P_IN_1[4]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[4]]
set_property PACKAGE_PIN AF25 [get_ports HDMI_I_P_IN_1[3]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[3]]
set_property PACKAGE_PIN AF24 [get_ports HDMI_I_P_IN_1[2]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[2]]
set_property PACKAGE_PIN AE23 [get_ports HDMI_I_P_IN_1[1]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[1]]
set_property PACKAGE_PIN AF23 [get_ports HDMI_I_P_IN_1[0]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_1[0]]


set_property PACKAGE_PIN AB21 [get_ports HDMI_I_SCL_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_SCL_1]
set_property PACKAGE_PIN AC21 [get_ports HDMI_I_SDA_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_SDA_1]
set_property PACKAGE_PIN AD21 [get_ports HDMI_I_RESET_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_RESET_1]

set_property PACKAGE_PIN AA22 [get_ports HDMI_I_LLC_IN_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_LLC_IN_1]
set_property PACKAGE_PIN AF22 [get_ports HDMI_I_HSYNC_IN_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_HSYNC_IN_1]
set_property PACKAGE_PIN AE21 [get_ports HDMI_I_VSYNC_IN_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_VSYNC_IN_1]
set_property PACKAGE_PIN AE22 [get_ports HDMI_I_DE_IN_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_DE_IN_1]

################################################################# ADV7611_2

set_property PACKAGE_PIN AD24 [get_ports HDMI_I_P_IN_2[23]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[23]]
set_property PACKAGE_PIN AC24 [get_ports HDMI_I_P_IN_2[22]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[22]]
set_property PACKAGE_PIN AB22 [get_ports HDMI_I_P_IN_2[21]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[21]]
set_property PACKAGE_PIN AB24 [get_ports HDMI_I_P_IN_2[20]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[20]]
set_property PACKAGE_PIN R23 [get_ports HDMI_I_P_IN_2[19]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[19]]
set_property PACKAGE_PIN AA24 [get_ports HDMI_I_P_IN_2[18]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[18]]
set_property PACKAGE_PIN AA23 [get_ports HDMI_I_P_IN_2[17]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[17]]
set_property PACKAGE_PIN Y23 [get_ports HDMI_I_P_IN_2[16]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[16]]
set_property PACKAGE_PIN W24 [get_ports HDMI_I_P_IN_2[15]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[15]]
set_property PACKAGE_PIN W23 [get_ports HDMI_I_P_IN_2[14]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[14]]
set_property PACKAGE_PIN V24 [get_ports HDMI_I_P_IN_2[13]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[13]]
set_property PACKAGE_PIN V23 [get_ports HDMI_I_P_IN_2[12]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[12]]

set_property PACKAGE_PIN P21 [get_ports HDMI_I_P_IN_2[11]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[11]]
set_property PACKAGE_PIN R21 [get_ports HDMI_I_P_IN_2[10]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[10]]
set_property PACKAGE_PIN R22 [get_ports HDMI_I_P_IN_2[9]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[9]]
set_property PACKAGE_PIN P23 [get_ports HDMI_I_P_IN_2[8]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[8]]
set_property PACKAGE_PIN P24 [get_ports HDMI_I_P_IN_2[7]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[7]]
set_property PACKAGE_PIN V26 [get_ports HDMI_I_P_IN_2[6]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[6]]
set_property PACKAGE_PIN U22 [get_ports HDMI_I_P_IN_2[5]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[5]]
set_property PACKAGE_PIN T23 [get_ports HDMI_I_P_IN_2[4]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[4]]
set_property PACKAGE_PIN V21 [get_ports HDMI_I_P_IN_2[3]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[3]]
set_property PACKAGE_PIN V22 [get_ports HDMI_I_P_IN_2[2]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[2]]
set_property PACKAGE_PIN W21 [get_ports HDMI_I_P_IN_2[1]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[1]]
set_property PACKAGE_PIN W20 [get_ports HDMI_I_P_IN_2[0]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_2[0]]


set_property PACKAGE_PIN AC22 [get_ports HDMI_I_SCL_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_SCL_2]
set_property PACKAGE_PIN AD23 [get_ports HDMI_I_SDA_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_SDA_2]
set_property PACKAGE_PIN AC23 [get_ports HDMI_I_RESET_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_RESET_2]

set_property PACKAGE_PIN Y22 [get_ports HDMI_I_LLC_IN_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_LLC_IN_2]
set_property PACKAGE_PIN Y21 [get_ports HDMI_I_HSYNC_IN_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_HSYNC_IN_2]
set_property PACKAGE_PIN Y20 [get_ports HDMI_I_VSYNC_IN_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_VSYNC_IN_2]
set_property PACKAGE_PIN U24 [get_ports HDMI_I_DE_IN_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_DE_IN_2]

################################################################# ADV7611_3

set_property PACKAGE_PIN U20 [get_ports HDMI_I_P_IN_3[23]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[23]]
set_property PACKAGE_PIN U21 [get_ports HDMI_I_P_IN_3[22]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[22]]
set_property PACKAGE_PIN U17 [get_ports HDMI_I_P_IN_3[21]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[21]]
set_property PACKAGE_PIN T22 [get_ports HDMI_I_P_IN_3[20]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[20]]
set_property PACKAGE_PIN T20 [get_ports HDMI_I_P_IN_3[19]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[19]]
set_property PACKAGE_PIN T19 [get_ports HDMI_I_P_IN_3[18]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[18]]
set_property PACKAGE_PIN R20 [get_ports HDMI_I_P_IN_3[17]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[17]]
set_property PACKAGE_PIN P20 [get_ports HDMI_I_P_IN_3[16]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[16]]
set_property PACKAGE_PIN N24 [get_ports HDMI_I_P_IN_3[15]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[15]]
set_property PACKAGE_PIN N23 [get_ports HDMI_I_P_IN_3[14]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[14]]
set_property PACKAGE_PIN T18 [get_ports HDMI_I_P_IN_3[13]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[13]]
set_property PACKAGE_PIN K21 [get_ports HDMI_I_P_IN_3[12]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[12]]

set_property PACKAGE_PIN L23 [get_ports HDMI_I_P_IN_3[11]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[11]]
set_property PACKAGE_PIN J24 [get_ports HDMI_I_P_IN_3[10]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[10]]
set_property PACKAGE_PIN K23 [get_ports HDMI_I_P_IN_3[9]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[9]]
set_property PACKAGE_PIN H24 [get_ports HDMI_I_P_IN_3[8]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[8]]
set_property PACKAGE_PIN F18 [get_ports HDMI_I_P_IN_3[7]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[7]]
set_property PACKAGE_PIN E17 [get_ports HDMI_I_P_IN_3[6]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[6]]
set_property PACKAGE_PIN L17 [get_ports HDMI_I_P_IN_3[5]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[5]]
set_property PACKAGE_PIN L24 [get_ports HDMI_I_P_IN_3[4]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[4]]
set_property PACKAGE_PIN M17 [get_ports HDMI_I_P_IN_3[3]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[3]]
set_property PACKAGE_PIN M24 [get_ports HDMI_I_P_IN_3[2]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[2]]
set_property PACKAGE_PIN N18 [get_ports HDMI_I_P_IN_3[1]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[1]]
set_property PACKAGE_PIN N17 [get_ports HDMI_I_P_IN_3[0]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_3[0]]


set_property PACKAGE_PIN R16 [get_ports HDMI_I_SCL_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_SCL_3]
set_property PACKAGE_PIN T17 [get_ports HDMI_I_SDA_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_SDA_3]
set_property PACKAGE_PIN U19 [get_ports HDMI_I_RESET_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_RESET_3]

set_property PACKAGE_PIN N22 [get_ports HDMI_I_LLC_IN_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_LLC_IN_3]
set_property PACKAGE_PIN M16 [get_ports HDMI_I_HSYNC_IN_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_HSYNC_IN_3]
set_property PACKAGE_PIN P16 [get_ports HDMI_I_VSYNC_IN_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_VSYNC_IN_3]
set_property PACKAGE_PIN N16 [get_ports HDMI_I_DE_IN_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_DE_IN_3]

################################################################# ADV7611_4

set_property PACKAGE_PIN H23 [get_ports HDMI_I_P_IN_4[23]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[23]]
set_property PACKAGE_PIN G24 [get_ports HDMI_I_P_IN_4[22]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[22]]
set_property PACKAGE_PIN G22 [get_ports HDMI_I_P_IN_4[21]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[21]]
set_property PACKAGE_PIN F25 [get_ports HDMI_I_P_IN_4[20]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[20]]
set_property PACKAGE_PIN F24 [get_ports HDMI_I_P_IN_4[19]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[19]]
set_property PACKAGE_PIN C24 [get_ports HDMI_I_P_IN_4[18]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[18]]
set_property PACKAGE_PIN D24 [get_ports HDMI_I_P_IN_4[17]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[17]]
set_property PACKAGE_PIN D23 [get_ports HDMI_I_P_IN_4[16]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[16]]
set_property PACKAGE_PIN H22 [get_ports HDMI_I_P_IN_4[15]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[15]]
set_property PACKAGE_PIN H21 [get_ports HDMI_I_P_IN_4[14]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[14]]
set_property PACKAGE_PIN H19 [get_ports HDMI_I_P_IN_4[13]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[13]]
set_property PACKAGE_PIN A23 [get_ports HDMI_I_P_IN_4[12]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[12]]

set_property PACKAGE_PIN C21 [get_ports HDMI_I_P_IN_4[11]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[11]]
set_property PACKAGE_PIN B21 [get_ports HDMI_I_P_IN_4[10]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[10]]
set_property PACKAGE_PIN B20 [get_ports HDMI_I_P_IN_4[9]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[9]]
set_property PACKAGE_PIN A20 [get_ports HDMI_I_P_IN_4[8]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[8]]
set_property PACKAGE_PIN M20 [get_ports HDMI_I_P_IN_4[7]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[7]]
set_property PACKAGE_PIN M21 [get_ports HDMI_I_P_IN_4[6]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[6]]
set_property PACKAGE_PIN J23 [get_ports HDMI_I_P_IN_4[5]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[5]]
set_property PACKAGE_PIN K22 [get_ports HDMI_I_P_IN_4[4]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[4]]
set_property PACKAGE_PIN L22 [get_ports HDMI_I_P_IN_4[3]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[3]]
set_property PACKAGE_PIN H11 [get_ports HDMI_I_P_IN_4[2]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[2]]
set_property PACKAGE_PIN M22 [get_ports HDMI_I_P_IN_4[1]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[1]]
set_property PACKAGE_PIN N21 [get_ports HDMI_I_P_IN_4[0]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_P_IN_4[0]]


set_property PACKAGE_PIN R17 [get_ports HDMI_I_SCL_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_SCL_4]
set_property PACKAGE_PIN R18 [get_ports HDMI_I_SDA_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_SDA_4]
set_property PACKAGE_PIN U16 [get_ports HDMI_I_RESET_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_RESET_4]

set_property PACKAGE_PIN E23 [get_ports HDMI_I_LLC_IN_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_LLC_IN_4]
set_property PACKAGE_PIN P19 [get_ports HDMI_I_HSYNC_IN_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_HSYNC_IN_4]
set_property PACKAGE_PIN P18 [get_ports HDMI_I_VSYNC_IN_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_VSYNC_IN_4]
set_property PACKAGE_PIN N19 [get_ports HDMI_I_DE_IN_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_I_DE_IN_4]



#################################################################  ADV7511_1

set_property PACKAGE_PIN H13 [get_ports HDMI_O_P_OUT_1[23]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[23]]
set_property PACKAGE_PIN F13 [get_ports HDMI_O_P_OUT_1[22]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[22]]
set_property PACKAGE_PIN E13 [get_ports HDMI_O_P_OUT_1[21]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[21]]
set_property PACKAGE_PIN J13 [get_ports HDMI_O_P_OUT_1[20]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[20]]
set_property PACKAGE_PIN J14 [get_ports HDMI_O_P_OUT_1[19]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[19]]
set_property PACKAGE_PIN J15 [get_ports HDMI_O_P_OUT_1[18]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[18]]
set_property PACKAGE_PIN J11 [get_ports HDMI_O_P_OUT_1[17]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[17]]
set_property PACKAGE_PIN J10 [get_ports HDMI_O_P_OUT_1[16]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[16]]


set_property PACKAGE_PIN K15 [get_ports HDMI_O_P_OUT_1[15]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[15]]
set_property PACKAGE_PIN H14 [get_ports HDMI_O_P_OUT_1[14]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[14]]
set_property PACKAGE_PIN F15 [get_ports HDMI_O_P_OUT_1[13]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[13]]
set_property PACKAGE_PIN E16 [get_ports HDMI_O_P_OUT_1[12]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[12]]
set_property PACKAGE_PIN E15 [get_ports HDMI_O_P_OUT_1[11]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[11]]
set_property PACKAGE_PIN E11 [get_ports HDMI_O_P_OUT_1[10]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[10]]
set_property PACKAGE_PIN E12 [get_ports HDMI_O_P_OUT_1[9]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[9]]
set_property PACKAGE_PIN F17 [get_ports HDMI_O_P_OUT_1[8]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[8]]


set_property PACKAGE_PIN H16 [get_ports HDMI_O_P_OUT_1[7]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[7]]
set_property PACKAGE_PIN J16 [get_ports HDMI_O_P_OUT_1[6]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[6]]
set_property PACKAGE_PIN J8 [get_ports HDMI_O_P_OUT_1[5]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[5]]
set_property PACKAGE_PIN H12 [get_ports HDMI_O_P_OUT_1[4]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[4]]
set_property PACKAGE_PIN G12 [get_ports HDMI_O_P_OUT_1[3]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[3]]
set_property PACKAGE_PIN G15 [get_ports HDMI_O_P_OUT_1[2]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[2]]
set_property PACKAGE_PIN G14 [get_ports HDMI_O_P_OUT_1[1]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[1]]
set_property PACKAGE_PIN F14 [get_ports HDMI_O_P_OUT_1[0]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_1[0]]

set_property PACKAGE_PIN H8 [get_ports HDMI_O_SCL_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_SCL_1]
set_property PACKAGE_PIN H9 [get_ports HDMI_O_SDA_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_SDA_1]

set_property PACKAGE_PIN D10 [get_ports HDMI_O_CLK_OUT_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_CLK_OUT_1]
set_property PACKAGE_PIN F9 [get_ports HDMI_O_HSYNC_OUT_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_HSYNC_OUT_1]
set_property PACKAGE_PIN F12 [get_ports HDMI_O_VSYNC_OUT_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_VSYNC_OUT_1]
set_property PACKAGE_PIN F10 [get_ports HDMI_O_DE_OUT_1]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_DE_OUT_1]

#################################################################  ADV7511_2

set_property PACKAGE_PIN E10 [get_ports HDMI_O_P_OUT_2[23]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[23]]
set_property PACKAGE_PIN D9 [get_ports HDMI_O_P_OUT_2[22]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[22]]
set_property PACKAGE_PIN D8 [get_ports HDMI_O_P_OUT_2[21]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[21]]
set_property PACKAGE_PIN G11 [get_ports HDMI_O_P_OUT_2[20]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[20]]
set_property PACKAGE_PIN C9 [get_ports HDMI_O_P_OUT_2[19]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[19]]
set_property PACKAGE_PIN D15 [get_ports HDMI_O_P_OUT_2[18]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[18]]
set_property PACKAGE_PIN D14 [get_ports HDMI_O_P_OUT_2[17]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[17]]
set_property PACKAGE_PIN A8 [get_ports HDMI_O_P_OUT_2[16]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[16]]


set_property PACKAGE_PIN D16 [get_ports HDMI_O_P_OUT_2[15]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[15]]
set_property PACKAGE_PIN E18 [get_ports HDMI_O_P_OUT_2[14]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[14]]
set_property PACKAGE_PIN C17 [get_ports HDMI_O_P_OUT_2[13]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[13]]
set_property PACKAGE_PIN D19 [get_ports HDMI_O_P_OUT_2[12]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[12]]
set_property PACKAGE_PIN D18 [get_ports HDMI_O_P_OUT_2[11]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[11]]
set_property PACKAGE_PIN A15 [get_ports HDMI_O_P_OUT_2[10]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[10]]
set_property PACKAGE_PIN C16 [get_ports HDMI_O_P_OUT_2[9]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[9]]
set_property PACKAGE_PIN C14 [get_ports HDMI_O_P_OUT_2[8]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[8]]


set_property PACKAGE_PIN B9 [get_ports HDMI_O_P_OUT_2[7]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[7]]
set_property PACKAGE_PIN A9 [get_ports HDMI_O_P_OUT_2[6]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[6]]
set_property PACKAGE_PIN B10 [get_ports HDMI_O_P_OUT_2[5]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[5]]
set_property PACKAGE_PIN A10 [get_ports HDMI_O_P_OUT_2[4]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[4]]
set_property PACKAGE_PIN B11 [get_ports HDMI_O_P_OUT_2[3]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[3]]
set_property PACKAGE_PIN B12 [get_ports HDMI_O_P_OUT_2[2]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[2]]
set_property PACKAGE_PIN A12 [get_ports HDMI_O_P_OUT_2[1]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[1]]
set_property PACKAGE_PIN C13 [get_ports HDMI_O_P_OUT_2[0]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_2[0]]

set_property PACKAGE_PIN G9 [get_ports HDMI_O_SCL_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_SCL_2]
set_property PACKAGE_PIN F8 [get_ports HDMI_O_SDA_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_SDA_2]

set_property PACKAGE_PIN C11 [get_ports HDMI_O_CLK_OUT_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_CLK_OUT_2]
set_property PACKAGE_PIN B14 [get_ports HDMI_O_HSYNC_OUT_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_HSYNC_OUT_2]
set_property PACKAGE_PIN A14 [get_ports HDMI_O_VSYNC_OUT_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_VSYNC_OUT_2]
set_property PACKAGE_PIN A13 [get_ports HDMI_O_DE_OUT_2]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_DE_OUT_2]

#################################################################  ADV7511_3

set_property PACKAGE_PIN G16 [get_ports HDMI_O_P_OUT_3[23]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[23]]
set_property PACKAGE_PIN H17 [get_ports HDMI_O_P_OUT_3[22]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[22]]
set_property PACKAGE_PIN G17 [get_ports HDMI_O_P_OUT_3[21]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[21]]
set_property PACKAGE_PIN G19 [get_ports HDMI_O_P_OUT_3[20]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[20]]
set_property PACKAGE_PIN F19 [get_ports HDMI_O_P_OUT_3[19]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[19]]
set_property PACKAGE_PIN F20 [get_ports HDMI_O_P_OUT_3[18]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[18]]
set_property PACKAGE_PIN E20 [get_ports HDMI_O_P_OUT_3[17]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[17]]
set_property PACKAGE_PIN C18 [get_ports HDMI_O_P_OUT_3[16]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[16]]


set_property PACKAGE_PIN D20 [get_ports HDMI_O_P_OUT_3[15]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[15]]
set_property PACKAGE_PIN C19 [get_ports HDMI_O_P_OUT_3[14]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[14]]
set_property PACKAGE_PIN H18 [get_ports HDMI_O_P_OUT_3[13]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[13]]
set_property PACKAGE_PIN D21 [get_ports HDMI_O_P_OUT_3[12]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[12]]
set_property PACKAGE_PIN J19 [get_ports HDMI_O_P_OUT_3[11]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[11]]
set_property PACKAGE_PIN C22 [get_ports HDMI_O_P_OUT_3[10]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[10]]
set_property PACKAGE_PIN E22 [get_ports HDMI_O_P_OUT_3[9]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[9]]
set_property PACKAGE_PIN F22 [get_ports HDMI_O_P_OUT_3[8]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[8]]


set_property PACKAGE_PIN G21 [get_ports HDMI_O_P_OUT_3[7]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[7]]
set_property PACKAGE_PIN J18 [get_ports HDMI_O_P_OUT_3[6]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[6]]
set_property PACKAGE_PIN K17 [get_ports HDMI_O_P_OUT_3[5]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[5]]
set_property PACKAGE_PIN K16 [get_ports HDMI_O_P_OUT_3[4]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[4]]
set_property PACKAGE_PIN B16 [get_ports HDMI_O_P_OUT_3[3]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[3]]
set_property PACKAGE_PIN A17 [get_ports HDMI_O_P_OUT_3[2]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[2]]
set_property PACKAGE_PIN B17 [get_ports HDMI_O_P_OUT_3[1]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[1]]
set_property PACKAGE_PIN A18 [get_ports HDMI_O_P_OUT_3[0]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_3[0]]

set_property PACKAGE_PIN D11 [get_ports HDMI_O_SCL_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_SCL_3]
set_property PACKAGE_PIN G10 [get_ports HDMI_O_SDA_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_SDA_3]

set_property PACKAGE_PIN C12 [get_ports HDMI_O_CLK_OUT_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_CLK_OUT_3]
set_property PACKAGE_PIN E21 [get_ports HDMI_O_HSYNC_OUT_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_HSYNC_OUT_3]
set_property PACKAGE_PIN G20 [get_ports HDMI_O_VSYNC_OUT_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_VSYNC_OUT_3]
set_property PACKAGE_PIN A24 [get_ports HDMI_O_DE_OUT_3]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_DE_OUT_3]

#################################################################  ADV7511_4

set_property PACKAGE_PIN K18 [get_ports HDMI_O_P_OUT_4[23]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[23]]
set_property PACKAGE_PIN J20 [get_ports HDMI_O_P_OUT_4[22]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[22]]
set_property PACKAGE_PIN K20 [get_ports HDMI_O_P_OUT_4[21]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[21]]
set_property PACKAGE_PIN J21 [get_ports HDMI_O_P_OUT_4[20]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[20]]
set_property PACKAGE_PIN L19 [get_ports HDMI_O_P_OUT_4[19]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[19]]
set_property PACKAGE_PIN L20 [get_ports HDMI_O_P_OUT_4[18]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[18]]
set_property PACKAGE_PIN M19 [get_ports HDMI_O_P_OUT_4[17]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[17]]
set_property PACKAGE_PIN L18 [get_ports HDMI_O_P_OUT_4[16]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[16]]


set_property PACKAGE_PIN A19 [get_ports HDMI_O_P_OUT_4[15]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[15]]
set_property PACKAGE_PIN B19 [get_ports HDMI_O_P_OUT_4[14]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[14]]
set_property PACKAGE_PIN B26 [get_ports HDMI_O_P_OUT_4[13]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[13]]
set_property PACKAGE_PIN C26 [get_ports HDMI_O_P_OUT_4[12]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[12]]
set_property PACKAGE_PIN D25 [get_ports HDMI_O_P_OUT_4[11]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[11]]
set_property PACKAGE_PIN D26 [get_ports HDMI_O_P_OUT_4[10]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[10]]
set_property PACKAGE_PIN E25 [get_ports HDMI_O_P_OUT_4[9]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[9]]
set_property PACKAGE_PIN E26 [get_ports HDMI_O_P_OUT_4[8]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[8]]


set_property PACKAGE_PIN G25 [get_ports HDMI_O_P_OUT_4[7]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[7]]
set_property PACKAGE_PIN G26 [get_ports HDMI_O_P_OUT_4[6]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[6]]
set_property PACKAGE_PIN H26 [get_ports HDMI_O_P_OUT_4[5]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[5]]
set_property PACKAGE_PIN J25 [get_ports HDMI_O_P_OUT_4[4]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[4]]
set_property PACKAGE_PIN J26 [get_ports HDMI_O_P_OUT_4[3]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[3]]
set_property PACKAGE_PIN K25 [get_ports HDMI_O_P_OUT_4[2]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[2]]
set_property PACKAGE_PIN K26 [get_ports HDMI_O_P_OUT_4[1]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[1]]
set_property PACKAGE_PIN L25 [get_ports HDMI_O_P_OUT_4[0]]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_P_OUT_4[0]]

set_property PACKAGE_PIN D13 [get_ports HDMI_O_SCL_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_SCL_4]
set_property PACKAGE_PIN B15 [get_ports HDMI_O_SDA_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_SDA_4]

set_property PACKAGE_PIN F23 [get_ports HDMI_O_CLK_OUT_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_CLK_OUT_4]
set_property PACKAGE_PIN M26 [get_ports HDMI_O_HSYNC_OUT_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_HSYNC_OUT_4]
set_property PACKAGE_PIN N26 [get_ports HDMI_O_VSYNC_OUT_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_VSYNC_OUT_4]
set_property PACKAGE_PIN M25 [get_ports HDMI_O_DE_OUT_4]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_O_DE_OUT_4]

##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  ÖÜËÄ 10ÔÂ 25 10:04:43 2018
##  Generated by MIG Version 4.0
##  
##################################################################################################
##  File name :       mig_7series_0.xdc
##  Details :     Constraints file
##                    FPGA Family:       KINTEX7
##                    FPGA Part:         XC7K325T-FFG676
##                    Speedgrade:        -1
##                    Design Entry:      VERILOG
##                    Frequency:         0 MHz
##                    Time Period:       2500 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->SODIMMs->MT8KTF51264HZ-1G6
## Data Width: 64
## Time Period: 2500
## Data Mask: 1
##################################################################################################

set_property IO_BUFFER_TYPE NONE [get_ports {ddr3_ck_n[*]} ]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr3_ck_p[*]} ]
          
create_clock -period 5 [get_ports sys_clk_p]
          
############## NET - IOSTANDARD ##################


# PadFunction: IO_L5P_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[0]}]
set_property SLEW FAST [get_ports {ddr3_dq[0]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[0]}]
set_property PACKAGE_PIN AF19 [get_ports {ddr3_dq[0]}]

# PadFunction: IO_L1P_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[1]}]
set_property SLEW FAST [get_ports {ddr3_dq[1]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[1]}]
set_property PACKAGE_PIN AE17 [get_ports {ddr3_dq[1]}]

# PadFunction: IO_L2N_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[2]}]
set_property SLEW FAST [get_ports {ddr3_dq[2]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[2]}]
set_property PACKAGE_PIN AF15 [get_ports {ddr3_dq[2]}]

# PadFunction: IO_L4N_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[3]}]
set_property SLEW FAST [get_ports {ddr3_dq[3]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[3]}]
set_property PACKAGE_PIN AE15 [get_ports {ddr3_dq[3]}]

# PadFunction: IO_L5N_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[4]}]
set_property SLEW FAST [get_ports {ddr3_dq[4]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[4]}]
set_property PACKAGE_PIN AF20 [get_ports {ddr3_dq[4]}]

# PadFunction: IO_L1N_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[5]}]
set_property SLEW FAST [get_ports {ddr3_dq[5]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[5]}]
set_property PACKAGE_PIN AF17 [get_ports {ddr3_dq[5]}]

# PadFunction: IO_L6P_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[6]}]
set_property SLEW FAST [get_ports {ddr3_dq[6]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[6]}]
set_property PACKAGE_PIN AD16 [get_ports {ddr3_dq[6]}]

# PadFunction: IO_L2P_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[7]}]
set_property SLEW FAST [get_ports {ddr3_dq[7]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[7]}]
set_property PACKAGE_PIN AF14 [get_ports {ddr3_dq[7]}]

# PadFunction: IO_L11P_T1_SRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[8]}]
set_property SLEW FAST [get_ports {ddr3_dq[8]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[8]}]
set_property PACKAGE_PIN AA17 [get_ports {ddr3_dq[8]}]

# PadFunction: IO_L12N_T1_MRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[9]}]
set_property SLEW FAST [get_ports {ddr3_dq[9]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[9]}]
set_property PACKAGE_PIN AC16 [get_ports {ddr3_dq[9]}]

# PadFunction: IO_L10P_T1_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[10]}]
set_property SLEW FAST [get_ports {ddr3_dq[10]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[10]}]
set_property PACKAGE_PIN AB14 [get_ports {ddr3_dq[10]}]

# PadFunction: IO_L7P_T1_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[11]}]
set_property SLEW FAST [get_ports {ddr3_dq[11]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[11]}]
set_property PACKAGE_PIN AA14 [get_ports {ddr3_dq[11]}]

# PadFunction: IO_L11N_T1_SRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[12]}]
set_property SLEW FAST [get_ports {ddr3_dq[12]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[12]}]
set_property PACKAGE_PIN AA18 [get_ports {ddr3_dq[12]}]

# PadFunction: IO_L12P_T1_MRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[13]}]
set_property SLEW FAST [get_ports {ddr3_dq[13]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[13]}]
set_property PACKAGE_PIN AB16 [get_ports {ddr3_dq[13]}]

# PadFunction: IO_L8N_T1_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[14]}]
set_property SLEW FAST [get_ports {ddr3_dq[14]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[14]}]
set_property PACKAGE_PIN AD14 [get_ports {ddr3_dq[14]}]

# PadFunction: IO_L8P_T1_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[15]}]
set_property SLEW FAST [get_ports {ddr3_dq[15]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[15]}]
set_property PACKAGE_PIN AC14 [get_ports {ddr3_dq[15]}]

# PadFunction: IO_L16N_T2_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[16]}]
set_property SLEW FAST [get_ports {ddr3_dq[16]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[16]}]
set_property PACKAGE_PIN AA20 [get_ports {ddr3_dq[16]}]

# PadFunction: IO_L13N_T2_MRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[17]}]
set_property SLEW FAST [get_ports {ddr3_dq[17]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[17]}]
set_property PACKAGE_PIN AD18 [get_ports {ddr3_dq[17]}]

# PadFunction: IO_L18P_T2_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[18]}]
set_property SLEW FAST [get_ports {ddr3_dq[18]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[18]}]
set_property PACKAGE_PIN AB19 [get_ports {ddr3_dq[18]}]

# PadFunction: IO_L16P_T2_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[19]}]
set_property SLEW FAST [get_ports {ddr3_dq[19]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[19]}]
set_property PACKAGE_PIN AA19 [get_ports {ddr3_dq[19]}]

# PadFunction: IO_L17N_T2_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[20]}]
set_property SLEW FAST [get_ports {ddr3_dq[20]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[20]}]
set_property PACKAGE_PIN AD19 [get_ports {ddr3_dq[20]}]

# PadFunction: IO_L17P_T2_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[21]}]
set_property SLEW FAST [get_ports {ddr3_dq[21]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[21]}]
set_property PACKAGE_PIN AC19 [get_ports {ddr3_dq[21]}]

# PadFunction: IO_L14N_T2_SRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[22]}]
set_property SLEW FAST [get_ports {ddr3_dq[22]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[22]}]
set_property PACKAGE_PIN AC17 [get_ports {ddr3_dq[22]}]

# PadFunction: IO_L14P_T2_SRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[23]}]
set_property SLEW FAST [get_ports {ddr3_dq[23]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[23]}]
set_property PACKAGE_PIN AB17 [get_ports {ddr3_dq[23]}]

# PadFunction: IO_L22N_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[24]}]
set_property SLEW FAST [get_ports {ddr3_dq[24]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[24]}]
set_property PACKAGE_PIN W16 [get_ports {ddr3_dq[24]}]

# PadFunction: IO_L24N_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[25]}]
set_property SLEW FAST [get_ports {ddr3_dq[25]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[25]}]
set_property PACKAGE_PIN W14 [get_ports {ddr3_dq[25]}]

# PadFunction: IO_L20P_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[26]}]
set_property SLEW FAST [get_ports {ddr3_dq[26]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[26]}]
set_property PACKAGE_PIN V16 [get_ports {ddr3_dq[26]}]

# PadFunction: IO_L23N_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[27]}]
set_property SLEW FAST [get_ports {ddr3_dq[27]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[27]}]
set_property PACKAGE_PIN V19 [get_ports {ddr3_dq[27]}]

# PadFunction: IO_L19P_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[28]}]
set_property SLEW FAST [get_ports {ddr3_dq[28]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[28]}]
set_property PACKAGE_PIN Y17 [get_ports {ddr3_dq[28]}]

# PadFunction: IO_L22P_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[29]}]
set_property SLEW FAST [get_ports {ddr3_dq[29]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[29]}]
set_property PACKAGE_PIN W15 [get_ports {ddr3_dq[29]}]

# PadFunction: IO_L24P_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[30]}]
set_property SLEW FAST [get_ports {ddr3_dq[30]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[30]}]
set_property PACKAGE_PIN V14 [get_ports {ddr3_dq[30]}]

# PadFunction: IO_L23P_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[31]}]
set_property SLEW FAST [get_ports {ddr3_dq[31]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[31]}]
set_property PACKAGE_PIN V18 [get_ports {ddr3_dq[31]}]

# PadFunction: IO_L4P_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[32]}]
set_property SLEW FAST [get_ports {ddr3_dq[32]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[32]}]
set_property PACKAGE_PIN V3 [get_ports {ddr3_dq[32]}]

# PadFunction: IO_L2P_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[33]}]
set_property SLEW FAST [get_ports {ddr3_dq[33]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[33]}]
set_property PACKAGE_PIN U2 [get_ports {ddr3_dq[33]}]

# PadFunction: IO_L1P_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[34]}]
set_property SLEW FAST [get_ports {ddr3_dq[34]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[34]}]
set_property PACKAGE_PIN U6 [get_ports {ddr3_dq[34]}]

# PadFunction: IO_L5P_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[35]}]
set_property SLEW FAST [get_ports {ddr3_dq[35]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[35]}]
set_property PACKAGE_PIN U7 [get_ports {ddr3_dq[35]}]

# PadFunction: IO_L4N_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[36]}]
set_property SLEW FAST [get_ports {ddr3_dq[36]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[36]}]
set_property PACKAGE_PIN W3 [get_ports {ddr3_dq[36]}]

# PadFunction: IO_L2N_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[37]}]
set_property SLEW FAST [get_ports {ddr3_dq[37]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[37]}]
set_property PACKAGE_PIN U1 [get_ports {ddr3_dq[37]}]

# PadFunction: IO_L1N_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[38]}]
set_property SLEW FAST [get_ports {ddr3_dq[38]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[38]}]
set_property PACKAGE_PIN U5 [get_ports {ddr3_dq[38]}]

# PadFunction: IO_L5N_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[39]}]
set_property SLEW FAST [get_ports {ddr3_dq[39]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[39]}]
set_property PACKAGE_PIN V6 [get_ports {ddr3_dq[39]}]

# PadFunction: IO_L11P_T1_SRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[40]}]
set_property SLEW FAST [get_ports {ddr3_dq[40]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[40]}]
set_property PACKAGE_PIN AB2 [get_ports {ddr3_dq[40]}]

# PadFunction: IO_L11N_T1_SRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[41]}]
set_property SLEW FAST [get_ports {ddr3_dq[41]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[41]}]
set_property PACKAGE_PIN AC2 [get_ports {ddr3_dq[41]}]

# PadFunction: IO_L10P_T1_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[42]}]
set_property SLEW FAST [get_ports {ddr3_dq[42]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[42]}]
set_property PACKAGE_PIN W1 [get_ports {ddr3_dq[42]}]

# PadFunction: IO_L8P_T1_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[43]}]
set_property SLEW FAST [get_ports {ddr3_dq[43]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[43]}]
set_property PACKAGE_PIN V2 [get_ports {ddr3_dq[43]}]

# PadFunction: IO_L7P_T1_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[44]}]
set_property SLEW FAST [get_ports {ddr3_dq[44]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[44]}]
set_property PACKAGE_PIN Y3 [get_ports {ddr3_dq[44]}]

# PadFunction: IO_L12P_T1_MRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[45]}]
set_property SLEW FAST [get_ports {ddr3_dq[45]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[45]}]
set_property PACKAGE_PIN AA3 [get_ports {ddr3_dq[45]}]

# PadFunction: IO_L10N_T1_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[46]}]
set_property SLEW FAST [get_ports {ddr3_dq[46]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[46]}]
set_property PACKAGE_PIN Y1 [get_ports {ddr3_dq[46]}]

# PadFunction: IO_L8N_T1_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[47]}]
set_property SLEW FAST [get_ports {ddr3_dq[47]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[47]}]
set_property PACKAGE_PIN V1 [get_ports {ddr3_dq[47]}]

# PadFunction: IO_L18P_T2_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[48]}]
set_property SLEW FAST [get_ports {ddr3_dq[48]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[48]}]
set_property PACKAGE_PIN AD6 [get_ports {ddr3_dq[48]}]

# PadFunction: IO_L16N_T2_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[49]}]
set_property SLEW FAST [get_ports {ddr3_dq[49]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[49]}]
set_property PACKAGE_PIN AC6 [get_ports {ddr3_dq[49]}]

# PadFunction: IO_L16P_T2_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[50]}]
set_property SLEW FAST [get_ports {ddr3_dq[50]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[50]}]
set_property PACKAGE_PIN AB6 [get_ports {ddr3_dq[50]}]

# PadFunction: IO_L17N_T2_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[51]}]
set_property SLEW FAST [get_ports {ddr3_dq[51]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[51]}]
set_property PACKAGE_PIN Y5 [get_ports {ddr3_dq[51]}]

# PadFunction: IO_L14P_T2_SRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[52]}]
set_property SLEW FAST [get_ports {ddr3_dq[52]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[52]}]
set_property PACKAGE_PIN AC4 [get_ports {ddr3_dq[52]}]

# PadFunction: IO_L14N_T2_SRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[53]}]
set_property SLEW FAST [get_ports {ddr3_dq[53]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[53]}]
set_property PACKAGE_PIN AC3 [get_ports {ddr3_dq[53]}]

# PadFunction: IO_L13P_T2_MRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[54]}]
set_property SLEW FAST [get_ports {ddr3_dq[54]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[54]}]
set_property PACKAGE_PIN AA4 [get_ports {ddr3_dq[54]}]

# PadFunction: IO_L17P_T2_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[55]}]
set_property SLEW FAST [get_ports {ddr3_dq[55]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[55]}]
set_property PACKAGE_PIN Y6 [get_ports {ddr3_dq[55]}]

# PadFunction: IO_L22P_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[56]}]
set_property SLEW FAST [get_ports {ddr3_dq[56]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[56]}]
set_property PACKAGE_PIN AE3 [get_ports {ddr3_dq[56]}]

# PadFunction: IO_L24N_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[57]}]
set_property SLEW FAST [get_ports {ddr3_dq[57]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[57]}]
set_property PACKAGE_PIN AF2 [get_ports {ddr3_dq[57]}]

# PadFunction: IO_L23N_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[58]}]
set_property SLEW FAST [get_ports {ddr3_dq[58]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[58]}]
set_property PACKAGE_PIN AE5 [get_ports {ddr3_dq[58]}]

# PadFunction: IO_L20P_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[59]}]
set_property SLEW FAST [get_ports {ddr3_dq[59]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[59]}]
set_property PACKAGE_PIN AD1 [get_ports {ddr3_dq[59]}]

# PadFunction: IO_L24P_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[60]}]
set_property SLEW FAST [get_ports {ddr3_dq[60]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[60]}]
set_property PACKAGE_PIN AF3 [get_ports {ddr3_dq[60]}]

# PadFunction: IO_L23P_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[61]}]
set_property SLEW FAST [get_ports {ddr3_dq[61]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[61]}]
set_property PACKAGE_PIN AE6 [get_ports {ddr3_dq[61]}]

# PadFunction: IO_L20N_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[62]}]
set_property SLEW FAST [get_ports {ddr3_dq[62]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[62]}]
set_property PACKAGE_PIN AE1 [get_ports {ddr3_dq[62]}]

# PadFunction: IO_L19P_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[63]}]
set_property SLEW FAST [get_ports {ddr3_dq[63]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[63]}]
set_property PACKAGE_PIN AD4 [get_ports {ddr3_dq[63]}]

# PadFunction: IO_L17P_T2_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[15]}]
set_property SLEW FAST [get_ports {ddr3_addr[15]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[15]}]
set_property PACKAGE_PIN AC13 [get_ports {ddr3_addr[15]}]

# PadFunction: IO_L17N_T2_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[14]}]
set_property SLEW FAST [get_ports {ddr3_addr[14]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[14]}]
set_property PACKAGE_PIN AD13 [get_ports {ddr3_addr[14]}]

# PadFunction: IO_L14N_T2_SRCC_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[13]}]
set_property SLEW FAST [get_ports {ddr3_addr[13]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[13]}]
set_property PACKAGE_PIN AB10 [get_ports {ddr3_addr[13]}]

# PadFunction: IO_L15P_T2_DQS_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[12]}]
set_property SLEW FAST [get_ports {ddr3_addr[12]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[12]}]
set_property PACKAGE_PIN AB12 [get_ports {ddr3_addr[12]}]

# PadFunction: IO_L23P_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[11]}]
set_property SLEW FAST [get_ports {ddr3_addr[11]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[11]}]
set_property PACKAGE_PIN AE13 [get_ports {ddr3_addr[11]}]

# PadFunction: IO_L16P_T2_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[10]}]
set_property SLEW FAST [get_ports {ddr3_addr[10]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[10]}]
set_property PACKAGE_PIN AA13 [get_ports {ddr3_addr[10]}]

# PadFunction: IO_L15N_T2_DQS_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[9]}]
set_property SLEW FAST [get_ports {ddr3_addr[9]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[9]}]
set_property PACKAGE_PIN AC12 [get_ports {ddr3_addr[9]}]

# PadFunction: IO_L24P_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[8]}]
set_property SLEW FAST [get_ports {ddr3_addr[8]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[8]}]
set_property PACKAGE_PIN AF10 [get_ports {ddr3_addr[8]}]

# PadFunction: IO_L19N_T3_VREF_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[7]}]
set_property SLEW FAST [get_ports {ddr3_addr[7]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[7]}]
set_property PACKAGE_PIN AE11 [get_ports {ddr3_addr[7]}]

# PadFunction: IO_L24N_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[6]}]
set_property SLEW FAST [get_ports {ddr3_addr[6]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[6]}]
set_property PACKAGE_PIN AF9 [get_ports {ddr3_addr[6]}]

# PadFunction: IO_L22P_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[5]}]
set_property SLEW FAST [get_ports {ddr3_addr[5]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[5]}]
set_property PACKAGE_PIN AE8 [get_ports {ddr3_addr[5]}]

# PadFunction: IO_L22N_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[4]}]
set_property SLEW FAST [get_ports {ddr3_addr[4]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[4]}]
set_property PACKAGE_PIN AF8 [get_ports {ddr3_addr[4]}]

# PadFunction: IO_L19P_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[3]}]
set_property SLEW FAST [get_ports {ddr3_addr[3]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[3]}]
set_property PACKAGE_PIN AD11 [get_ports {ddr3_addr[3]}]

# PadFunction: IO_L9N_T1_DQS_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[2]}]
set_property SLEW FAST [get_ports {ddr3_addr[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[2]}]
set_property PACKAGE_PIN AD8 [get_ports {ddr3_addr[2]}]

# PadFunction: IO_L7P_T1_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[1]}]
set_property SLEW FAST [get_ports {ddr3_addr[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[1]}]
set_property PACKAGE_PIN AE7 [get_ports {ddr3_addr[1]}]

# PadFunction: IO_L7N_T1_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[0]}]
set_property SLEW FAST [get_ports {ddr3_addr[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[0]}]
set_property PACKAGE_PIN AF7 [get_ports {ddr3_addr[0]}]

# PadFunction: IO_L23N_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ba[2]}]
set_property SLEW FAST [get_ports {ddr3_ba[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[2]}]
set_property PACKAGE_PIN AF13 [get_ports {ddr3_ba[2]}]

# PadFunction: IO_L20N_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ba[1]}]
set_property SLEW FAST [get_ports {ddr3_ba[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[1]}]
set_property PACKAGE_PIN AE10 [get_ports {ddr3_ba[1]}]

# PadFunction: IO_L20P_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ba[0]}]
set_property SLEW FAST [get_ports {ddr3_ba[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[0]}]
set_property PACKAGE_PIN AD10 [get_ports {ddr3_ba[0]}]

# PadFunction: IO_L16N_T2_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ras_n}]
set_property SLEW FAST [get_ports {ddr3_ras_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ras_n}]
set_property PACKAGE_PIN AA12 [get_ports {ddr3_ras_n}]

# PadFunction: IO_L8P_T1_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_cas_n}]
set_property SLEW FAST [get_ports {ddr3_cas_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cas_n}]
set_property PACKAGE_PIN AA8 [get_ports {ddr3_cas_n}]

# PadFunction: IO_L14P_T2_SRCC_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_we_n}]
set_property SLEW FAST [get_ports {ddr3_we_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_we_n}]
set_property PACKAGE_PIN AA10 [get_ports {ddr3_we_n}]

# PadFunction: IO_L10N_T1_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_reset_n}]
set_property SLEW FAST [get_ports {ddr3_reset_n}]
set_property IOSTANDARD LVCMOS15 [get_ports {ddr3_reset_n}]
set_property PACKAGE_PIN AB15 [get_ports {ddr3_reset_n}]

# PadFunction: IO_L18P_T2_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_cke[0]}]
set_property SLEW FAST [get_ports {ddr3_cke[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cke[0]}]
set_property PACKAGE_PIN Y13 [get_ports {ddr3_cke[0]}]

# PadFunction: IO_L10N_T1_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_odt[0]}]
set_property SLEW FAST [get_ports {ddr3_odt[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_odt[0]}]
set_property PACKAGE_PIN AC7 [get_ports {ddr3_odt[0]}]

# PadFunction: IO_L9P_T1_DQS_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_cs_n[0]}]
set_property SLEW FAST [get_ports {ddr3_cs_n[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cs_n[0]}]
set_property PACKAGE_PIN AC8 [get_ports {ddr3_cs_n[0]}]

# PadFunction: IO_L4P_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[0]}]
set_property SLEW FAST [get_ports {ddr3_dm[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[0]}]
set_property PACKAGE_PIN AD15 [get_ports {ddr3_dm[0]}]

# PadFunction: IO_L7N_T1_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[1]}]
set_property SLEW FAST [get_ports {ddr3_dm[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[1]}]
set_property PACKAGE_PIN AA15 [get_ports {ddr3_dm[1]}]

# PadFunction: IO_L13P_T2_MRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[2]}]
set_property SLEW FAST [get_ports {ddr3_dm[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[2]}]
set_property PACKAGE_PIN AC18 [get_ports {ddr3_dm[2]}]

# PadFunction: IO_L20N_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[3]}]
set_property SLEW FAST [get_ports {ddr3_dm[3]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[3]}]
set_property PACKAGE_PIN V17 [get_ports {ddr3_dm[3]}]

# PadFunction: IO_L6P_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[4]}]
set_property SLEW FAST [get_ports {ddr3_dm[4]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[4]}]
set_property PACKAGE_PIN V4 [get_ports {ddr3_dm[4]}]

# PadFunction: IO_L7N_T1_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[5]}]
set_property SLEW FAST [get_ports {ddr3_dm[5]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[5]}]
set_property PACKAGE_PIN Y2 [get_ports {ddr3_dm[5]}]

# PadFunction: IO_L13N_T2_MRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[6]}]
set_property SLEW FAST [get_ports {ddr3_dm[6]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[6]}]
set_property PACKAGE_PIN AB4 [get_ports {ddr3_dm[6]}]

# PadFunction: IO_L22N_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[7]}]
set_property SLEW FAST [get_ports {ddr3_dm[7]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[7]}]
set_property PACKAGE_PIN AE2 [get_ports {ddr3_dm[7]}]

# PadFunction: IO_L12P_T1_MRCC_33 
set_property VCCAUX_IO DONTCARE [get_ports {sys_clk_p}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {sys_clk_p}]
set_property PACKAGE_PIN AC9 [get_ports {sys_clk_p}]

# PadFunction: IO_L12N_T1_MRCC_33 
set_property VCCAUX_IO DONTCARE [get_ports {sys_clk_n}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {sys_clk_n}]
set_property PACKAGE_PIN AD9 [get_ports {sys_clk_n}]

# PadFunction: IO_L3P_T0_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[0]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[0]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[0]}]
set_property PACKAGE_PIN AE18 [get_ports {ddr3_dqs_p[0]}]

# PadFunction: IO_L3N_T0_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[0]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[0]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[0]}]
set_property PACKAGE_PIN AF18 [get_ports {ddr3_dqs_n[0]}]

# PadFunction: IO_L9P_T1_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[1]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[1]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[1]}]
set_property PACKAGE_PIN Y15 [get_ports {ddr3_dqs_p[1]}]

# PadFunction: IO_L9N_T1_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[1]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[1]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[1]}]
set_property PACKAGE_PIN Y16 [get_ports {ddr3_dqs_n[1]}]

# PadFunction: IO_L15P_T2_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[2]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[2]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[2]}]
set_property PACKAGE_PIN AD20 [get_ports {ddr3_dqs_p[2]}]

# PadFunction: IO_L15N_T2_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[2]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[2]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[2]}]
set_property PACKAGE_PIN AE20 [get_ports {ddr3_dqs_n[2]}]

# PadFunction: IO_L21P_T3_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[3]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[3]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[3]}]
set_property PACKAGE_PIN W18 [get_ports {ddr3_dqs_p[3]}]

# PadFunction: IO_L21N_T3_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[3]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[3]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[3]}]
set_property PACKAGE_PIN W19 [get_ports {ddr3_dqs_n[3]}]

# PadFunction: IO_L3P_T0_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[4]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[4]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[4]}]
set_property PACKAGE_PIN W6 [get_ports {ddr3_dqs_p[4]}]

# PadFunction: IO_L3N_T0_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[4]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[4]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[4]}]
set_property PACKAGE_PIN W5 [get_ports {ddr3_dqs_n[4]}]

# PadFunction: IO_L9P_T1_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[5]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[5]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[5]}]
set_property PACKAGE_PIN AB1 [get_ports {ddr3_dqs_p[5]}]

# PadFunction: IO_L9N_T1_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[5]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[5]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[5]}]
set_property PACKAGE_PIN AC1 [get_ports {ddr3_dqs_n[5]}]

# PadFunction: IO_L15P_T2_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[6]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[6]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[6]}]
set_property PACKAGE_PIN AA5 [get_ports {ddr3_dqs_p[6]}]

# PadFunction: IO_L15N_T2_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[6]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[6]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[6]}]
set_property PACKAGE_PIN AB5 [get_ports {ddr3_dqs_n[6]}]

# PadFunction: IO_L21P_T3_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[7]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[7]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[7]}]
set_property PACKAGE_PIN AF5 [get_ports {ddr3_dqs_p[7]}]

# PadFunction: IO_L21N_T3_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[7]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[7]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[7]}]
set_property PACKAGE_PIN AF4 [get_ports {ddr3_dqs_n[7]}]

# PadFunction: IO_L13P_T2_MRCC_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ck_p[0]}]
set_property SLEW FAST [get_ports {ddr3_ck_p[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_p[0]}]
set_property PACKAGE_PIN AB11 [get_ports {ddr3_ck_p[0]}]

# PadFunction: IO_L13N_T2_MRCC_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ck_n[0]}]
set_property SLEW FAST [get_ports {ddr3_ck_n[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_n[0]}]
set_property PACKAGE_PIN AC11 [get_ports {ddr3_ck_n[0]}]



set_property LOC PHASER_OUT_PHY_X1Y3 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y0 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y4 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y11 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y10 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y9 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y8 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out}]

set_property LOC PHASER_IN_PHY_X1Y3 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y0 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_in_gen.phaser_in}]
## set_property LOC PHASER_IN_PHY_X1Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_in_gen.phaser_in}]
## set_property LOC PHASER_IN_PHY_X1Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in}]
## set_property LOC PHASER_IN_PHY_X1Y4 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y11 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y10 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y9 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y8 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_in_gen.phaser_in}]



set_property LOC OUT_FIFO_X1Y3 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/out_fifo}]
set_property LOC OUT_FIFO_X1Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/out_fifo}]
set_property LOC OUT_FIFO_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/out_fifo}]
set_property LOC OUT_FIFO_X1Y0 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/out_fifo}]
set_property LOC OUT_FIFO_X1Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/out_fifo}]
set_property LOC OUT_FIFO_X1Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/out_fifo}]
set_property LOC OUT_FIFO_X1Y4 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/out_fifo}]
set_property LOC OUT_FIFO_X1Y11 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/out_fifo}]
set_property LOC OUT_FIFO_X1Y10 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/out_fifo}]
set_property LOC OUT_FIFO_X1Y9 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/out_fifo}]
set_property LOC OUT_FIFO_X1Y8 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/out_fifo}]

set_property LOC IN_FIFO_X1Y3 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y0 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y11 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y10 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y9 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y8 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/in_fifo_gen.in_fifo}]

set_property LOC PHY_CONTROL_X1Y0 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/phy_control_i}]
set_property LOC PHY_CONTROL_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/phy_control_i}]
set_property LOC PHY_CONTROL_X1Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/phy_control_i}]

set_property LOC PHASER_REF_X1Y0 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/phaser_ref_i}]
set_property LOC PHASER_REF_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_1.u_ddr_phy_4lanes/phaser_ref_i}]
set_property LOC PHASER_REF_X1Y2 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/phaser_ref_i}]

set_property LOC OLOGIC_X1Y43 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y31 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y19 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y7 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y143 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y131 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y119 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y107 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/*slave_ts}]

set_property LOC PLLE2_ADV_X1Y1 [get_cells -hier -filter {NAME =~ */u_ddr3_infrastructure/plle2_i}]
set_property LOC MMCME2_ADV_X1Y1 [get_cells -hier -filter {NAME =~ */u_ddr3_infrastructure/gen_mmcm.mmcm_i}]


set_multicycle_path -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r_reg}] \
                    -to   [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] \
                    -setup 6

set_multicycle_path -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r_reg}] \
                    -to   [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] \
                    -hold 5

set_false_path -through [get_pins -filter {NAME =~ */DQSFOUND} -of [get_cells -hier -filter {REF_NAME == PHASER_IN_PHY}]]

set_multicycle_path -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] -setup 2 -start
set_multicycle_path -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] -hold 1 -start

set_max_delay -datapath_only -from [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/* && IS_SEQUENTIAL}] -to [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/device_temp_sync_r1*}] 20
set_max_delay -from [get_cells -hier *rstdiv0_sync_r1_reg*] -to [get_pins -filter {NAME =~ */RESET} -of [get_cells -hier -filter {REF_NAME == PHY_CONTROL}]] -datapath_only 5
set_false_path -through [get_pins -hier -filter {NAME =~ */u_iodelay_ctrl/sys_rst}]
          
set_max_delay -datapath_only -from [get_cells -hier -filter {NAME =~ *ddr3_infrastructure/rstdiv0_sync_r1_reg*}] -to [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/xadc_supplied_temperature.rst_r1*}] 20
          