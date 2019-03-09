                        `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:12:50 05/22/2014 
// Design Name: 
// Module Name:    clock 
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
module ADV7511_CLK(
input clk100M,
output clk2M
);
////差分转单端
//IBUFGDS CLKIN_IBUFG_INST(.I(sysclk_p),
//             .IB(sysclk_n),
//                 .O(CLKIN_IBUFGDS));
//
//BUFG CLK_BUFG_INST(.I(CLKIN_IBUFGDS),
//           .O(clk200M));
//通用分频

reg [9:0]cnt = 0;
reg clk2M = 1;
always @ (posedge clk100M)
begin

if (cnt > 24) begin cnt <= 0; clk2M <= ~clk2M; end//49 499
else cnt <= cnt + 1;

end




endmodule
