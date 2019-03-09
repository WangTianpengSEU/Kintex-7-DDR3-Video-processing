                `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:07 05/29/2014 
// Design Name: 
// Module Name:    ADV7612_Interface 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
        module ADV7611_INTERFACE(
        input clk100M,
        output HDMI_I_SCL,
        inout HDMI_I_SDA,
        output HDMI_I_RESET//低电平则重置
        //            output HDMI_I_CS//低电平则片选
        );
        
        wire [3:0] I2C_state;
        wire [3:0] Config_state;
        wire [7:0] data;
        //*****************************************下面定义为后来添加
        wire clk2M;
        wire go_flag;
        wire clk200k;
        
        assign HDMI_I_RESET = 1;
        //        assign HDMI_I_CS = 0;
        
        ADV7611_CLK ADV7611_CLK_1 (
        .clk100M(clk100M), 
        .clk2M(clk2M)
        );
        
        
        ADV7611_CONFIG ADV7611_CONFIG_1 (
        .I2C_state(I2C_state), 
        .clk2M(clk2M), 
        .config_data(data), 
        .flag(go_flag), 
        .Config_state(Config_state)
        );
        
        ADV7611_I2C ADV7611_I2C_1 (
        .clk2M(clk2M), 
        .Data(data), 
        .Go(go_flag), 
        .state(I2C_state), 
        .SCL(HDMI_I_SCL), 
        .SDA(HDMI_I_SDA), 
        .clk200k(clk200k)
        );
        
        endmodule
