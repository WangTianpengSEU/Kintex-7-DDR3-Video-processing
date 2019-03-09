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
reg clk200k = 1;//��֤clk200k���½�����׼SCL��ƽ
always @(posedge clk2M) 
begin
if (cnt1 >= 4) begin cnt1 <= 0; clk200k = ~clk200k; end
else cnt1 <= cnt1 + 1;
end

reg [3:0] cnt2 = 0;
reg SCL = 1;//��֤clk200k���½�����׼SCL��ƽ
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

assign SDA = SDA_BUF;//SDA������

always@(negedge clk200k) 
begin
case (state)
4'b1111: begin
            if(Go)
                begin
                state <= 4'b0000;//����־Ϊ1����ʼ����
                end
            else state <= 4'b1111;//����ȴ���־
        end
4'b0000: begin
            if(!SCL)//��SCLΪ��
                begin
                    SDA_BUF <= 1;  //SDA���ߣ�Ϊ���ؿ�ʼ��׼��
                    state <= 4'b0001;
                end
            else state <= 4'b0000;//����ȴ�SCLΪ��
        end
4'b0001: begin
            SDA_BUF <= 0; //SDA�½��أ�SCLΪ�ߣ���ʼ
            BUFF <= Data;
            state <= 4'b0010;
        end
///////////////////////////////////////////////////
///////////////////////////////////////////////////                
4'b0010: begin
            SDA_BUF <= BUFF[7];//���λ��SDA
            BUFF <= BUFF << 1;
            state <= 4'b0011;
        end
4'b0011: begin
            count <= count + 1;//���ͬʱI2C�����ϵĵ�һ��������Ч��
            if(count >= 7)
                begin
                    count <= 0;
                    state <= 4'b0100;//8λ��������
                end
            else
                    state <= 4'b0010;
        end
///////////////////////////////////////////////////                
4'b0100: begin
            SDA_BUF <= 1'bz; //SDA����ΪACK׼��
       process <= process + 1;
            //3��δ��
            if(process < 2) state <= 4'b0101;
            //���һ��
            else begin process <= 0; state <= 4'b0111; end 
        end

4'b0101: begin
            //��ʱ���裬׼����һ��SDA
            BUFF <= Data;
            state <= 4'b0010;
        end
//////////////////////////////////////////////////
4'b0111: begin
            //��ʱ���裬����SCL������
            state <= 4'b1001;
        end
4'b1001: begin
            SDA_BUF <= 1'b0;//��ʱ���裬ѹ��SDA��׼������������
            state <= 4'b1000;
        end
4'b1000: begin
            SDA_BUF <= 1'b1;//�����أ���ʱ����
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
