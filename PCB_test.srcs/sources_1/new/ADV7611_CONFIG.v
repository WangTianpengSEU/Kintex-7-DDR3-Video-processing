                `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:50:37 05/29/2014 
// Design Name: 
// Module Name:    ADV7612_Config 
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
module ADV7611_CONFIG(
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

reg [31:0]wait_5ms = 0;

always@ (posedge clk2M)
begin
if (wait_5ms < 10000) wait_5ms = wait_5ms + 1;
else wait_5ms = 20002;
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
    
//            4'd6:    begin
//                if(I2C_state == 4'b0100) begin cnt_data = cnt_data + 1; Config_state <= 11; end //3号字节ACK,装新地址的1号字节
//                else Config_state <= 6;
//                end
        
        4'd6: begin 
        if(I2C_state == 4'b0100) Config_state <= 15; 
        else  Config_state <= 6;
        end //3号字节ACK,准备等待5ms
        
        4'd15: begin
        if (wait_5ms > 10000) begin cnt_data = cnt_data + 1; Config_state <= 11; end //等待5ms完成，装新地址的1号字节
        else Config_state <= 15;
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



reg [7:0] config_data = 8'h98;
reg [7:0]cnt_data = 0;
parameter cnt_data_T = 137;
//        parameter cnt_data_T = 110;   改

always@ (posedge clk2M)
begin    
    case(cnt_data)
//                16'd0: config_data = 8'h98;        //Slave address
//                16'd1: config_data = 8'hFF;        //Base register address
//                16'd2: config_data = 8'h80;        //reset
//        
        16'd3: config_data = 8'h98;        //Slave address
        16'd4: config_data = 8'hF5;        //Base register address
        16'd5: config_data = 8'h7C;        //INFOFRAME Map I2C address
        
        16'd6: config_data = 8'h98;        //Slave address
        16'd7: config_data = 8'hF8;        //Base register address
        16'd8: config_data = 8'h4C;        //DPLL Map I2C address
        
        16'd9: config_data = 8'h98;        //Slave address
        16'd10: config_data = 8'hF9;        //Base register address
        16'd11: config_data = 8'h64;        //KSV Map I2C address
        
        16'd12: config_data = 8'h98;        //Slave address
        16'd13: config_data = 8'hFA;        //Base register address
        16'd14: config_data = 8'h6C;        //EDID Map I2C address
        
        16'd15: config_data = 8'h98;        //Slave address
        16'd16: config_data = 8'hFB;        //Base register address
        16'd17: config_data = 8'h68;         //HDMI Map I2C address
        
        16'd18: config_data = 8'h98;        //Slave address
        16'd19: config_data = 8'hFD;        //Base register address
        16'd20: config_data = 8'h44;        //CP Map I2C address
        
        16'd21: config_data = 8'h98;        //Slave address
        16'd22: config_data = 8'hF4;        //Base register address
        16'd23: config_data = 8'h80;        //CEC MAP I2C address
        
        
        16'd24: config_data = 8'h98;        //Slave address
        16'd25: config_data = 8'h01;        //Base register address
        16'd26: config_data = 8'h06; 

        16'd27: config_data = 8'h98;        //Slave address
        16'd28: config_data = 8'h02;        //Base register address
        //16'd98: config_data = 8'hF2;        // Auto CSC, YCrCb out, Set op_656 bit
        16'd29: config_data = 8'hF5;        // Auto CSC, YCrCb out, 
//********************************************************************************此处改了色深 原来为 16'd32: config_data = 8'h42; 
        16'd30: config_data = 8'h98;        //Slave address
        16'd31: config_data = 8'h03;        //Base register address
//                16'd80: config_data = 8'h46;        //36-bit SDR 4:4:4 Mode 1 //淡青
        16'd32: config_data = 8'h40;        //36-bit SDR 4:4:4 Mode 0 //淡紫
//                16'd80: config_data = 8'h52;        //36-bit SDR 4:4:4 Mode 4 //蓝
//                16'd80: config_data = 8'h62;        //36-bit DDR 4:4:4 Mode//淡紫

        16'd33: config_data = 8'h98;        //Slave address
        16'd34: config_data = 8'h05;        //Base register address
        16'd35: config_data = 8'h28;
        
        16'd36: config_data = 8'h98;        //Slave address
        16'd37: config_data = 8'h06;        //Base register address
        16'd38: config_data = 8'hA6;        //Invert VS,HS pins.  Positive polarity VS/FIELD  ;Positive polarity HS

        16'd39: config_data = 8'h98;        //Slave address
        16'd40: config_data = 8'h0B;        //Base register address
        16'd41: config_data = 8'h44; 
        
        16'd42: config_data = 8'h98;        //Slave address
        16'd43: config_data = 8'h0C;        //Base register address
        16'd44: config_data = 8'h42;        //0x0C[5]=0; Chip is operational
        
        16'd45: config_data = 8'h98;        //Slave address
        16'd46: config_data = 8'h14;        //Base register address
        16'd47: config_data = 8'h7F;        //MAX dirve strength
        
        16'd48: config_data = 8'h98;        //Slave address
        16'd49: config_data = 8'h15;        //Base register address
        //16'd92: config_data = 8'hA0;        //LLC active; Pixel bus active; Sync output pins active
        16'd50: config_data = 8'h80;        //LLC active; Pixel bus active; Sync output pins active

        16'd51: config_data = 8'h98;        //Slave address
        16'd52: config_data = 8'h19;        //Base register address
        16'd53: config_data = 8'h83;  
        
        16'd54: config_data = 8'h98;        //Slave address
        16'd55: config_data = 8'h33;        //Base register address
        16'd56: config_data = 8'h40;  
        
       16'd57: config_data = 8'h44;        //Slave address
        16'd58: config_data = 8'hBA;        //Base register address
        16'd59: config_data = 8'h01;        //Set HDMI FreeRun
        
        16'd60: config_data = 8'h64;        //Slave address
        16'd61: config_data = 8'h40;        //Base register address
        16'd62: config_data = 8'h81;        //Disable HDCP 1.1 features

        16'd63: config_data = 8'h68;        //Slave address
        16'd64: config_data = 8'h9B;        //Base register address
        16'd65: config_data = 8'h03;                
//*******************************************增加                        
        16'd66: config_data = 8'h68;        //Slave address
        16'd67: config_data = 8'hC1;        //Base register address
        16'd68: config_data = 8'h01;                

        16'd69: config_data = 8'h68;        //Slave address
        16'd70: config_data = 8'hC2;        //Base register address
        16'd71: config_data = 8'h01;                

        16'd72: config_data = 8'h68;        //Slave address
        16'd73: config_data = 8'hC3;        //Base register address
        16'd74: config_data = 8'h01;                

        16'd75: config_data = 8'h68;        //Slave address
        16'd76: config_data = 8'hC4;        //Base register address
        16'd77: config_data = 8'h01;                

        16'd78: config_data = 8'h68;        //Slave address
        16'd79: config_data = 8'hC5;        //Base register address
        16'd80: config_data = 8'h01;                

        16'd81: config_data = 8'h68;        //Slave address
        16'd82: config_data = 8'hC6;        //Base register address
        16'd83: config_data = 8'h01;                

        16'd84: config_data = 8'h68;        //Slave address
        16'd85: config_data = 8'hC7;        //Base register address
        16'd86: config_data = 8'h01;                

        16'd87: config_data = 8'h68;        //Slave address
        16'd88: config_data = 8'hC8;        //Base register address
        16'd89: config_data = 8'h01;                

        16'd90: config_data = 8'h68;        //Slave address
        16'd91: config_data = 8'hC9;        //Base register address
        16'd92: config_data = 8'h01;                

        16'd93: config_data = 8'h68;        //Slave address
        16'd94: config_data = 8'hCA;        //Base register address
        16'd95: config_data = 8'h01;                

        16'd96: config_data = 8'h68;        //Slave address
        16'd97: config_data = 8'hCB;        //Base register address
        16'd98: config_data = 8'h01;                

        16'd99: config_data = 8'h68;        //Slave address
        16'd100: config_data = 8'hCC;        //Base register address
        16'd101: config_data = 8'h01;                
//**************************************************以上为增加    

   //*********************************** 修改 原来为     16'd68: config_data = 8'h08
        16'd102: config_data = 8'h68;        //Slave address
        16'd103: config_data = 8'h00;        //Base register address
        16'd104: config_data = 8'h00; 
    //************************************ 修改 注释掉 
//                        16'd69: config_data = 8'h68;        //Slave address
//                        16'd70: config_data = 8'h02;        //Base register address
//                        16'd71: config_data = 8'h03; 
    
    //************************************ 修改 原来为   16'd74: config_data = 8'hFC;  
        16'd105: config_data = 8'h68;        //Slave address
        16'd106: config_data = 8'h83;        //Base register address
        16'd107: config_data = 8'hFE; 
        
        16'd108: config_data = 8'h68;        //Slave address
        16'd109: config_data = 8'h6F;        //Base register address
        16'd110: config_data = 8'h0C;       

        16'd111: config_data = 8'h68;        //Slave address
        16'd112: config_data = 8'h85;        //Base register address
        16'd113: config_data = 8'h1F;        

        16'd114: config_data = 8'h68;        //Slave address
        16'd115: config_data = 8'h87;        //Base register address
        16'd116: config_data = 8'h70;   
        
        16'd117: config_data = 8'h68;        //Slave address
        16'd118: config_data = 8'h8D;        //Base register address
        16'd119: config_data = 8'h04;

        16'd120: config_data = 8'h68;        //Slave address
        16'd121: config_data = 8'h8E;        //Base register address
        16'd122: config_data = 8'h1E; 
        
        16'd123: config_data = 8'h68;        //Slave address
        16'd124: config_data = 8'h1A;        //Base register address
        16'd125: config_data = 8'h8A; 
        
        
        16'd126: config_data = 8'h68;        //Slave address
        16'd127: config_data = 8'h57;        //Base register address
        16'd128: config_data = 8'hDA;
        
        16'd129: config_data = 8'h68;        //Slave address
        16'd130: config_data = 8'h58;        //Base register address
        16'd131: config_data = 8'h01;
        
        16'd132: config_data = 8'h68;        //Slave address
        16'd133: config_data = 8'h03;        //Base register address
        16'd134: config_data = 8'h98;
        
        16'd135: config_data = 8'h68;        //Slave address
        16'd136: config_data = 8'h75;        //Base register address
        16'd137: config_data = 8'h10;

   //****************************注释掉  

//                        16'd105: config_data = 8'h68;        //Slave address
//                        16'd106: config_data = 8'h90;        //Base register address
//                        16'd107: config_data = 8'h04; 
        
//                        16'd108: config_data = 8'h68;        //Slave address
//                        16'd109: config_data = 8'h91;        //Base register address
//                        16'd110: config_data = 8'h1E; 



        default: config_data = 8'hFF; 
    endcase

end

//                16'd78: config_data = 8'h44;        //Slave address
//                16'd79: config_data = 8'hBF;        //Base register address
//                16'd80: config_data = 8'h17;        //0xBF[2] = 1 ADV7612仿真一个蓝屏（BLUE）输出 

endmodule
