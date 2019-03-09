                `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:33 05/29/2014 
// Design Name: 
// Module Name:    ADV7612_I2C 
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
module ADV7611_I2C(
input clk2M,
input [7:0]Data,
input Go,
output [3:0]state,
output SCL,
inout SDA,
output clk200k
);

reg [3:0] cnt1 = 0;
reg clk200k = 1;//保证clk200k的下降沿瞄准SCL电平
always @(posedge clk2M) 
begin
if (cnt1 >= 4) begin cnt1 <= 0; clk200k = ~clk200k; end
else cnt1 <= cnt1 + 1;
end

reg [3:0] cnt2 = 0;
reg SCL = 1;//保证clk200k的下降沿瞄准SCL电平
always @(posedge clk2M) 
begin
if (cnt2 >= 9) begin cnt2 <= 0; SCL = ~SCL; end
else cnt2 <= cnt2 + 1;
end


reg [3:0] state = 4'b1111;
reg [3:0] count = 0;
reg [3:0] process = 0;
reg [7:0] BUFF;
reg SDA_BUF = 1'bz;

assign SDA = SDA_BUF;//SDA传输线

always@(negedge clk200k) 
begin
case (state)
4'b1111: begin
            if(Go)
                begin
                state <= 4'b0000;//若标志为1，则开始任务
                end
            else state <= 4'b1111;//否则等待标志
        end
4'b0000: begin
            if(!SCL)//若SCL为低
                begin
                    SDA_BUF <= 1;  //SDA拉高，为下沿开始做准备
                    state <= 4'b0001;
                end
            else state <= 4'b0000;//否则等待SCL为低
        end
4'b0001: begin
            SDA_BUF <= 0; //SDA下降沿，SCL为高，开始
            BUFF <= Data;
            state <= 4'b0010;
        end
///////////////////////////////////////////////////
///////////////////////////////////////////////////                
4'b0010: begin
            SDA_BUF <= BUFF[7];//最高位送SDA
            BUFF <= BUFF << 1;
            state <= 4'b0011;
        end
4'b0011: begin
            count <= count + 1;//与此同时I2C总线上的第一个数据有效了
            if(count >= 7)
                begin
                    count <= 0;
                    state <= 4'b0100;//8位数据送完
                end
            else
                    state <= 4'b0010;
        end
///////////////////////////////////////////////////                
4'b0100: begin
            SDA_BUF <= 1'bz; //SDA高阻为ACK准备
       process <= process + 1;
            //3段未完
            if(process < 2) state <= 4'b0101;
            //最后一段
            else begin process <= 0; state <= 4'b0111; end 
        end

4'b0101: begin
            //此时高阻，准备新一轮SDA
            BUFF <= Data;
            state <= 4'b0010;
        end
//////////////////////////////////////////////////
4'b0111: begin
            //此时高阻，处于SCL上升沿
            state <= 4'b1001;
        end
4'b1001: begin
            SDA_BUF <= 1'b0;//此时高阻，压低SDA，准备制造上升沿
            state <= 4'b1000;
        end
4'b1000: begin
            SDA_BUF <= 1'b1;//上升沿，此时结束
            state <= 4'b1110;
        end
//////////////////////////////////////////////////    
4'b1110: begin
            state <= 4'b1111;
        end
default:
        state <= 4'b1111;
endcase    
end




endmodule
