        `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:36 05/22/2014 
// Design Name: 
// Module Name:    ADV7511_Config 
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

//输入12位色深，RGB；输出4:4:4 HDMI视频格式

module ADV7511_CONFIG(
    input [3:0] I2C_state,
    input clk2M,
    output [7:0] config_data,
     output flag,
     output [3:0]Config_state
    
    );
     

reg [31:0]wait_500ms = 0;

always@ (posedge clk2M)
begin
if (wait_500ms < 1000000) wait_500ms = wait_500ms + 1;
else wait_500ms = 2000002;
end


reg [3:0]Config_state = 0;
reg flag = 0;

always@ (posedge clk2M)
begin    
        case(Config_state)
            
            4'd0:    begin
                if(wait_500ms > 1000000) Config_state <= 1;
                else Config_state <= 0;
                end
        
            4'd1:begin 
              flag <= 1;
              Config_state <= 2;
              end
                
            4'd2: begin
                if(I2C_state == 4'b0100) begin cnt_data = cnt_data + 1; Config_state <= 3; end //1号字节ACK,装2号字节
                else Config_state <= 2;
    
                end
            
            4'd3: begin
                if(I2C_state == 4'b0011) Config_state <= 4;//等待至2号字节的ACK
                else Config_state <= 3;
                end
            
            4'd4:    begin
                if(I2C_state == 4'b0100) begin cnt_data = cnt_data + 1; Config_state <= 5; end //2号字节ACK,装3号字节
                else Config_state <= 4;
                end
              
            4'd5:    begin
                if(I2C_state == 4'b0011) Config_state <= 6;//等待至3号字节的ACK
                else Config_state <= 5;
                end
            
            4'd6:    begin
                if(I2C_state == 4'b0100) begin cnt_data = cnt_data + 1; Config_state <= 11; end //3号字节ACK,装新地址的1号字节
                else Config_state <= 6;
                end
////////////////////////////////////////////////////////////////////////              
            4'd11:begin    
                if (cnt_data > cnt_data_T) Config_state <= 12;//若发送完成，准备结束
                else Config_state <= 7;
                end
            
            4'd7:    begin
                if(I2C_state == 4'b0011) Config_state <= 2;//等待至新地址的1号字节ACK
                else Config_state <= 7;
                end
///////////////////////////////////////              
            4'd12: begin flag <= 0; end
            
            default: flag <= 0;
        endcase
end


parameter cnt_data_T = 83;

reg [7:0] config_data = 8'h72;
reg [7:0]cnt_data = 0;

always@ (posedge clk2M)
begin    
            case(cnt_data)
                
                    16'd0: config_data = 8'h72;        //Slave address
                    16'd1: config_data = 8'h01;        //Base register address
                    16'd2: config_data = 8'h00;

                    16'd3: config_data = 8'h72;        //Slave address
                    16'd4: config_data = 8'h02;        //Base register address
                    16'd5: config_data = 8'h18;

                    16'd6: config_data = 8'h72;        //Slave address
                    16'd7: config_data = 8'h03;        //Base register address
                    16'd8: config_data = 8'h00;

                    16'd9: config_data = 8'h72;        //Slave address
                    16'd10: config_data = 8'h15;        //Base register address
                    16'd11: config_data = 8'h00;    

                    16'd12: config_data = 8'h72;        //Slave address
                    16'd13: config_data = 8'h16;        //Base register address
                    // 16'd29: config_data = 8'b00100100;  //设置视频输入色深, 输出格式
                    16'd14: config_data = 8'h60;  //设置视频输入色深, 输出格式

                    16'd15: config_data = 8'h72;        //Slave address
                    16'd16: config_data = 8'h18;        //Base register address
                    16'd17: config_data = 8'h46;

                    16'd18: config_data = 8'h72;        //Slave address
                    16'd19: config_data = 8'h40;        //Base register address
                    16'd20: config_data = 8'h80;

                    16'd21: config_data = 8'h72;        //Slave address
                    16'd22: config_data = 8'h41;        //Base register address
                    16'd23: config_data = 8'b00010000;  //POWER UP 设置0x41[6]=0，其余默认值，参考Programming UG p165页,此外 0x41[1]设置待考量

                    16'd24: config_data = 8'h72;        //Slave address
                    16'd25: config_data = 8'h48;        //Base register address
                    16'd26: config_data = 8'h08;

                    16'd27: config_data = 8'h72;        //Slave address
                    16'd28: config_data = 8'h49;        //Base register address
                    //16'd56: config_data = 8'hA8;
                    16'd29: config_data = 8'h00;

                    16'd30: config_data = 8'h72;        //Slave address
                    16'd31: config_data = 8'h4C;        //Base register address
                    16'd32: config_data = 8'h06;

                    16'd33: config_data = 8'h72;        //Slave address
                    16'd34: config_data = 8'h55;        //Base register address
                    16'd35: config_data = 8'h40;

                    16'd36: config_data = 8'h72;        //Slave address
                    16'd37: config_data = 8'h56;        //Base register address
                    16'd38: config_data = 8'h08;

                    16'd39: config_data = 8'h72;        //Slave address
                    16'd40: config_data = 8'h96;        //Base register address
                    16'd41: config_data = 8'h20;

                    16'd42: config_data = 8'h72;        //Slave address
                    16'd43: config_data = 8'h98;        //Base register address
                    16'd44: config_data = 8'h03;

                    16'd45: config_data = 8'h72;        //Slave address
                    16'd46: config_data = 8'h99;        //Base register address
                    16'd47: config_data = 8'h02;

                    16'd48: config_data = 8'h72;        //Slave address
                    16'd49: config_data = 8'h9C;        //Base register address
                    16'd50: config_data = 8'h30;

                    16'd51: config_data = 8'h72;        //Slave address
                    16'd52: config_data = 8'h9D;        //Base register address
                    //16'd14: config_data = 8'b00000001;  //要求0x9D地址中数据[1:0]=0b01
                    16'd53: config_data = 8'h61;  //要求0x9D地址中数据[1:0]=0b01

                    16'd54: config_data = 8'h72;        //Slave address
                    16'd55: config_data = 8'hA2;        //Base register address
                    16'd56: config_data = 8'hA4;

                    16'd57: config_data = 8'h72;        //Slave address
                    16'd58: config_data = 8'hA3;        //Base register address
                    16'd59: config_data = 8'hA4;        

                    16'd60: config_data = 8'h72;        //Slave address
                    16'd61: config_data = 8'hA5;        //Base register address
                    16'd62: config_data = 8'h04;

                    16'd63: config_data = 8'h72;        //Slave address
                    16'd64: config_data = 8'hAB;        //Base register address
                    16'd65: config_data = 8'h40;

                    16'd66: config_data = 8'h72;        //Slave address
                    16'd67: config_data = 8'hAF;        //Base register address
                    //16'd35: config_data = 8'b00000110;  //设置HDMI模式 0xAF[1]=1       
                    16'd68: config_data = 8'h16;  //设置HDMI模式 0xAF[1]=1       


                    16'd69: config_data = 8'h72;        //Slave address
                    16'd70: config_data = 8'hBA;        //Base register address
                    16'd71: config_data = 8'h60;

                    16'd72: config_data = 8'h72;        //Slave address
                    16'd73: config_data = 8'hD1;        //Base register address
                    16'd74: config_data = 8'hFF;

                    16'd75: config_data = 8'h72;        //Slave address
                    16'd76: config_data = 8'hDE;        //Base register address
                    //16'd86: config_data = 8'h9C;
                    16'd77: config_data = 8'hD8;

                    16'd78: config_data = 8'h72;        //Slave address
                    16'd79: config_data = 8'hE4;        //Base register address
                    16'd80: config_data = 8'h60;

                    16'd81: config_data = 8'h72;        //Slave address
                    16'd82: config_data = 8'hFA;        //Base register address
                    16'd83: config_data = 8'h7D;

 
            

            default: config_data = 8'h0F ; 
            endcase
 
end


endmodule




 