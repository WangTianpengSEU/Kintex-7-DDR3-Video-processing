                        `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:43 05/29/2014 
// Design Name: 
// Module Name:    ADV7511_Interface 
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
module ADV7511_INTERFACE(
input clk100M,
output HDMI_O_SCL,
inout HDMI_O_SDA
);

wire [3:0] I2C_state;
wire [3:0] Config_state;
wire [7:0] data;
wire Go;
wire clk2M;
wire clk200k;

ADV7511_CLK ADV7511_CLK_1 (
.clk100M(clk100M), 
.clk2M(clk2M)
);


ADV7511_CONFIG ADV7511_CONFIG_1 (
.I2C_state(I2C_state), 
.clk2M(clk2M), //
.config_data(data), 
.flag(Go),
.Config_state(Config_state)
);

ADV7511_I2C ADV7511_I2C_1 (
.clk2M(clk2M), //
.Data(data), 
.Go(Go), 
.state(I2C_state), 
.SCL(HDMI_O_SCL), 
.SDA(HDMI_O_SDA), 
.clk200k(clk200k)
);

endmodule
