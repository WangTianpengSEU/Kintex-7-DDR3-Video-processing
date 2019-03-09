`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/25 13:30:19
// Design Name: 
// Module Name: DDR3_state_machine_v2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DDR3_state_machine_v2(

    input ui_clk,

    input [23:0]HDMI_I_P_IN_1,    
    input HDMI_I_LLC_IN_1,
    input HDMI_I_HSYNC_IN_1,
    input HDMI_I_VSYNC_IN_1,
    input HDMI_I_DE_IN_1,
    
    output reg [23:0]HDMI_O_P_OUT_1,

    output reg[29:0]app_addr,
    output reg[2:0]app_cmd,
    output reg app_en,
    output reg[511:0]app_wdf_data,
    output app_wdf_end,
    output reg app_wdf_wren,
    
    input [511:0]app_rd_data,
    input app_rd_data_end,
    input app_rd_data_valid,
    input app_rdy,
    input app_wdf_rdy,
    input init_calib_complete


    );
	
	parameter Video_hs_length = 1920;  // 视频行像素个数
	parameter Video_hs_length_div8 = 240;  // 视频行像素burst8个数
	parameter Video_vs_length = 1080;  // 视频帧列数
	
	wire [2:0]Video_in_state;
	reg Ram_change_flag = 0;
	reg Ram_change_flag_temp = 0;
	reg W_or_R_flag = 0;
	reg W_or_R_flag_temp = 0;
	
    reg [18:0]addr_row = 0;
    reg [18:0]addr_row_temp = 0;
	reg [10:0]addr_write_column = 0;
    reg [10:0]addr_read_column = 0; 
	
	reg [2:0]Data_in_index = 0;
	reg [2:0]Data_out_index = 0;
	reg [511:0]Video_in_din = 0;
    reg [511:0]Video_in_din_finish = 0;
	reg [511:0]dout_r = 0;
	wire [511:0]dout;
	wire [511:0]doutb1;
	wire [511:0]doutb2;
	
    reg [10:0]Video_in_ddr_addra = 0;
	reg [7:0]Video_in_ddr_addrb = 0;
    reg [7:0]DDR_out_video_addra = 0;
    reg [10:0]DDR_out_video_addrb = 0;

	wire [511:0]app_wdf_data_1;
	wire [511:0]app_wdf_data_2;
	
	reg clk_video_8div_in = 0;
	reg clk_video_8div_out = 0;
	
	reg [23:0]HDMI_I_P_IN_1_r1 = 0;
	reg [23:0]HDMI_I_P_IN_1_r2 = 0;
	reg [23:0]HDMI_I_P_IN_1_r3 = 0;
	reg [23:0]HDMI_I_P_IN_1_r4 = 0;
	
    assign Video_in_state = {HDMI_I_HSYNC_IN_1,HDMI_I_VSYNC_IN_1,HDMI_I_DE_IN_1};
	assign app_wdf_end = app_wdf_wren;
	
	
/* 	ila_1 ila_1 (
	.clk(ui_clk), // input wire clk


	.probe0(HDMI_I_HSYNC_IN_1), // input wire [0:0]  probe0  
	.probe1(HDMI_I_VSYNC_IN_1), // input wire [0:0]  probe1 
	.probe2(HDMI_I_DE_IN_1), // input wire [0:0]  probe2 
	.probe3(HDMI_I_P_IN_1), // input wire [23:0]  probe3 
	.probe4(HDMI_O_P_OUT_1), // input wire [23:0]  probe4 
	.probe5(app_rd_data_end), // input wire [0:0]  probe5 
	.probe6(app_rd_data_valid), // input wire [0:0]  probe6 
	.probe7(Ram_change_flag), // input wire [0:0]  probe7 
	.probe8(W_or_R_flag), // input wire [0:0]  probe8 
	.probe9(app_en), // input wire [0:0]  probe9 
	.probe10(app_rdy), // input wire [0:0]  probe10 
	.probe11(app_wdf_wren), // input wire [0:0]  probe11 
	.probe12(app_wdf_rdy), // input wire [0:0]  probe12 
	.probe13(addr_row), // input wire [18:0]  probe13 
	.probe14(addr_write_column), // input wire [10:0]  probe14 
	.probe15(addr_row_temp), // input wire [18:0]  probe15 
	.probe16(addr_read_column), // input wire [10:0]  probe16 
	.probe17(Video_in_ddr_addra), // input wire [7:0]  probe17 
	.probe18(Video_in_ddr_addrb), // input wire [7:0]  probe18 
	.probe19(DDR_out_video_addra), // input wire [7:0]  probe19 
	.probe20(DDR_out_video_addrb) // input wire [7:0]  probe20
	// .probe21(app_wdf_data), // input wire [511:0]  probe21 
	// .probe22(app_rd_data) // input wire [511:0]  probe22
); */
	
	always@(posedge HDMI_I_LLC_IN_1) //模块用于计算输入像素的行列地址
        begin
		
			HDMI_I_P_IN_1_r1 <= HDMI_I_P_IN_1;
			HDMI_I_P_IN_1_r2 <= HDMI_I_P_IN_1_r1;    //两个寄存器缓冲的话没有噪点，一个寄存器缓冲的话有红蓝噪点
			HDMI_I_P_IN_1_r3 <= HDMI_I_P_IN_1_r2;    //三个寄存器的话有白噪点还有红噪点
		    HDMI_I_P_IN_1_r4 <= HDMI_I_P_IN_1_r3;    //四个寄存器的话就会出现时序错乱
			
			if(HDMI_I_DE_IN_1 == 1 && W_or_R_flag == 1)		
				begin
					HDMI_O_P_OUT_1 <= (Ram_change_flag == 0)? doutb1[23:0] : doutb2[23:0];
				end
			else
				begin
				    HDMI_O_P_OUT_1 <= 0;
				end
				
            case(Video_in_state)
                3'b001:  //数据有效
                    begin
						addr_row_temp <= addr_row;
						Ram_change_flag_temp <= Ram_change_flag;
						W_or_R_flag_temp <= W_or_R_flag;
						Video_in_ddr_addra <= Video_in_ddr_addra + 1;
						DDR_out_video_addrb <= DDR_out_video_addrb + 1;
					end
                3'b100:  //行同步
                    begin
						addr_row <= (addr_row_temp == addr_row)? (addr_row + 1) : addr_row;
						Ram_change_flag <= (Ram_change_flag_temp == 0)? 1 : 0;
						Video_in_ddr_addra <= 0;
						DDR_out_video_addrb <= 0;
                    end 
                3'b010,3'b011,3'b110,3'b111:  //场同步信号
                    begin
						addr_row <= 0;
						addr_row_temp <= 1;
						Ram_change_flag_temp <= 0;
						W_or_R_flag <= (W_or_R_flag_temp == 0)? 1 : 0;
						Video_in_ddr_addra <= 0;
						DDR_out_video_addrb <= 0;
                    end
                3'b000,3'b101: //注意DE传输完毕和传输之前有一段时间是 3'b000，这个是常见状态 不要随便清理什么寄存器
                    begin
						addr_row <= addr_row;
						addr_row_temp <= addr_row_temp;
						Ram_change_flag_temp <= Ram_change_flag_temp;
						W_or_R_flag <= W_or_R_flag;
						W_or_R_flag_temp <= W_or_R_flag_temp;
						Video_in_ddr_addra <= Video_in_ddr_addra;
						DDR_out_video_addrb <= DDR_out_video_addrb;
                    end
                endcase
                                
        end
		
/* 	always@(posedge HDMI_I_LLC_IN_1)
        begin
            if(HDMI_I_DE_IN_1 == 1)  //此处如果换成(HDMI_I_DE_IN_1 == 1 && W_or_R_flag == 0) ,视频会多出很多噪点，目前原因未知
                begin
                    case(Data_in_index)
                            3'b000: begin Video_in_din[63:0] <= {40'b0,HDMI_I_P_IN_1}; Data_in_index <= 3'b001; Video_in_din_finish <= Video_in_din; end //确保只在最后一次并入的时候改变这个512bit组合数据
                            3'b001: begin Video_in_din[127:64] <= {40'b0,HDMI_I_P_IN_1}; Data_in_index <= 3'b010; Video_in_ddr_addra <= Video_in_ddr_addra + 1; end
                            3'b010: begin Video_in_din[191:128] <= {40'b0,HDMI_I_P_IN_1}; Data_in_index <= 3'b011; end
                            3'b011: begin Video_in_din[255:192] <= {40'b0,HDMI_I_P_IN_1}; Data_in_index <= 3'b100; clk_video_8div_in <= 1; end
                            3'b100: begin Video_in_din[319:256] <= {40'b0,HDMI_I_P_IN_1}; Data_in_index <= 3'b101; end
                            3'b101: begin Video_in_din[383:320] <= {40'b0,HDMI_I_P_IN_1}; Data_in_index <= 3'b110; end
                            3'b110: begin Video_in_din[447:384] <= {40'b0,HDMI_I_P_IN_1}; Data_in_index <= 3'b111; end
                            3'b111: begin Video_in_din[511:448] <= {40'b0,HDMI_I_P_IN_1}; Data_in_index <= 3'b000; clk_video_8div_in <= 0; end  
                    endcase
                end
            else
                begin
                    Video_in_din_finish <= 0;
                    Data_in_index <= 3'b000;
                    clk_video_8div_in <= 0;
                    Video_in_ddr_addra <= 0;
                end
        end
 */		
	always@(posedge ui_clk)
		begin
		
			app_wdf_data <= (Ram_change_flag == 0)? app_wdf_data_1 : app_wdf_data_2;
			app_addr <= (app_cmd == 3'b000)? {addr_row,addr_write_column} : {addr_row,addr_read_column};
		
		
			if(W_or_R_flag == 0 && HDMI_I_DE_IN_1 == 1)  //帧写入
				begin
				
		/* 			if(app_rdy == 1 && app_wdf_rdy == 1 && (addr_write_column < Video_hs_length))
						begin
							app_en <= 1;  //地址命令写入使能	
							app_wdf_wren <= 1;  //数据写入使能		
							app_cmd <= 3'b000; //写入命令	
							addr_write_column <= addr_write_column + 8;  //burst 8 mode	
							Video_in_ddr_addrb <= Video_in_ddr_addrb + 1;  //从RAM读取数据		
						end
					else
						begin
							app_en <= 0;  //地址命令写入使能	
							app_wdf_wren <= 0;  //数据写入使能		
							app_cmd <= 3'b000; //写入命令	
							addr_write_column <= addr_write_column;  //burst 8 mode	
							Video_in_ddr_addrb <= Video_in_ddr_addrb;  //从RAM读取数据		
						end */
								
					if(addr_write_column < Video_hs_length)	
						begin		
							app_en <= 1;  //地址命令写入使能		
							app_cmd <= 3'b000; //写入命令	
						end		
					else			
						begin		
							app_en <= 0;  //关闭地址命令写入使能		
							app_cmd <= 3'b000; //写入命令		
						end		
								
					if(app_en == 1 && app_rdy == 1)		
						begin		
							addr_write_column <= addr_write_column + 8;  //burst 8 mode	
						end		
					else		
						begin		
							addr_write_column <= addr_write_column;	
						end		
							
					if(Video_in_ddr_addrb < Video_hs_length_div8)		
						begin		
							app_wdf_wren <= 1;  //数据写入使能		
						end		
					else			
						begin	    
							app_wdf_wren <= 0;  //数据写入使能关闭		
						end		
								
					if(app_wdf_wren == 1 && app_wdf_rdy == 1)		
						begin		
							Video_in_ddr_addrb <= Video_in_ddr_addrb + 1;  //从RAM读取数据		
						end		
					else			
						begin		
							Video_in_ddr_addrb <= Video_in_ddr_addrb;		
						end		 
							  
				end
			else if(W_or_R_flag == 1 && HDMI_I_DE_IN_1 == 1) //帧输出
				begin
					app_wdf_wren <= 0;  //数据写入使能

/* 					if(app_rdy == 1 && addr_read_column < Video_hs_length)
						begin
							app_en <= 1;  //地址命令写入使能		
							app_cmd <= 3'b001; //读出命令
							addr_read_column <= addr_read_column + 8;  //burst 8 mode	
						end
					else
						begin
							app_en <= 0;  //地址命令写入使能		
							app_cmd <= 3'b001; //读出命令
							addr_read_column <= addr_read_column;  //burst 8 mode	
						end */
					
					if(addr_read_column < Video_hs_length)
						begin
							app_en <= 1;  //地址命令写入使能		
							app_cmd <= 3'b001; //读出命令		
						end
					else	
						begin
							app_en <= 0;  //地址命令写入使能		
							app_cmd <= 3'b001; //读出命令		
						end
						
					if(app_en == 1 && app_rdy == 1)		
						begin		
							addr_read_column <= addr_read_column + 8;  //burst 8 mode	
						end		
					else		
						begin		
							addr_read_column <= addr_read_column;	
						end	
									
					if((DDR_out_video_addra < Video_hs_length_div8) && app_rd_data_valid == 1)  
							//(DDR_out_video_addra < Video_hs_length_div8) 必须写上，否则视频时序错误，原因暂未知
						begin
							DDR_out_video_addra <= DDR_out_video_addra + 1;
						end
					else
						begin
							DDR_out_video_addra <= DDR_out_video_addra;
						end
					
				end
			else 
				begin
					Video_in_ddr_addrb <= 0;
					addr_write_column <= 0;
					DDR_out_video_addra <= 0;
					addr_read_column <= 0;
					app_en <= 0;
				end
		end
	
	
/* 	always@(posedge HDMI_I_LLC_IN_1)					
		begin				
						
								
			if(HDMI_I_DE_IN_1 == 1 && W_or_R_flag == 1)					
				begin					
					case(Data_out_index)					
					  3'b000: begin HDMI_O_P_OUT_1 <= dout_r[23:0]; Data_out_index <= 3'b001; end					
					  3'b001: begin HDMI_O_P_OUT_1 <= dout_r[87:64]; Data_out_index <= 3'b010; end					
					  3'b010: begin HDMI_O_P_OUT_1 <= dout_r[151:128]; Data_out_index <= 3'b011; end					
					  3'b011: begin HDMI_O_P_OUT_1 <= dout_r[215:192]; Data_out_index <= 3'b100; clk_video_8div_out <= 1; end					
					  3'b100: begin HDMI_O_P_OUT_1 <= dout_r[279:256]; Data_out_index <= 3'b101; end					
					  3'b101: begin HDMI_O_P_OUT_1 <= dout_r[343:320]; Data_out_index <= 3'b110; end					
					  3'b110: begin HDMI_O_P_OUT_1 <= dout_r[407:384]; Data_out_index <= 3'b111; end					
					  3'b111: begin 					
								HDMI_O_P_OUT_1 <= dout_r[471:448]; Data_out_index <= 3'b000; 					
								clk_video_8div_out <= 0; 		
								DDR_out_video_addrb <= DDR_out_video_addrb + 1; 
								dout_r <= (Ram_change_flag == 0)? doutb1 : doutb2; 					
							  end  //一定在最后 一轮输入完毕才更新一下数据					
					endcase					
				end					
			else					
				begin					
					Data_out_index <= 0;					
					DDR_out_video_addrb <= 0;					 
					dout_r <= 0;	
					HDMI_O_P_OUT_1 <= 24'b00000011_00000011_00000011;
					clk_video_8div_out <= 0;					
				end					
		end	
 */		
/* 	Video_in_distribute_ram Video_in_distribute_ram_1 (
	  .a(Video_in_ddr_addra),        // input wire [7 : 0] a
	  .d(Video_in_din_finish),        // input wire [511 : 0] d
	  .dpra(Video_in_ddr_addrb),  // input wire [7 : 0] dpra
	  .clk(clk_video_8div_in),    // input wire clk
	  .we(HDMI_I_DE_IN_1 & Ram_change_flag),      // input wire we
	  .dpo(app_wdf_data_1)    // output wire [511 : 0] dpo
	);
	
	Video_in_distribute_ram Video_in_distribute_ram_2 (
	  .a(Video_in_ddr_addra),        // input wire [7 : 0] a
	  .d(Video_in_din_finish),        // input wire [511 : 0] d
	  .dpra(Video_in_ddr_addrb),  // input wire [7 : 0] dpra
	  .clk(clk_video_8div_in),    // input wire clk
	  .we(HDMI_I_DE_IN_1 & (~Ram_change_flag)),      // input wire we
	  .dpo(app_wdf_data_2)    // output wire [511 : 0] dpo
	);

	DDR_out_distribute_ram DDR_out_distribute_ram_1 (
	  .a(DDR_out_video_addra),        // input wire [7 : 0] a
	  .d(app_rd_data),        // input wire [511 : 0] d
	  .dpra(DDR_out_video_addrb),  // input wire [7 : 0] dpra
	  .clk(ui_clk),    // input wire clk
	  .we(HDMI_I_DE_IN_1 & Ram_change_flag),      // input wire we
	  .dpo(doutb1)    // output wire [511 : 0] dpo
	);
	
	DDR_out_distribute_ram DDR_out_distribute_ram_2 (
	  .a(DDR_out_video_addra),        // input wire [7 : 0] a
	  .d(app_rd_data),        // input wire [511 : 0] d
	  .dpra(DDR_out_video_addrb),  // input wire [7 : 0] dpra
	  .clk(ui_clk),    // input wire clk
	  .we(HDMI_I_DE_IN_1 & (~Ram_change_flag)),      // input wire we
	  .dpo(doutb2)    // output wire [511 : 0] dpo
	); */
	
	
	Video_in_ram Video_in_ram1 (
	  .clka(HDMI_I_LLC_IN_1),    // input wire clka
	  .wea(HDMI_I_DE_IN_1 & Ram_change_flag),      // input wire [0 : 0] wea
	  .addra(Video_in_ddr_addra),  // input wire [10 : 0] addra
	  .dina({40'b0,HDMI_I_P_IN_1}),    // input wire [63 : 0] dina
	  .clkb(ui_clk),    // input wire clkb
	  .addrb(Video_in_ddr_addrb),  // input wire [7 : 0] addrb
	  .doutb(app_wdf_data_1)  // output wire [511 : 0] doutb
	);

	Video_in_ram Video_in_ram2 (
	  .clka(HDMI_I_LLC_IN_1),    // input wire clka
	  .wea(HDMI_I_DE_IN_1 & (~Ram_change_flag)),      // input wire [0 : 0] wea
	  .addra(Video_in_ddr_addra),  // input wire [10 : 0] addra
	  .dina({40'b0,HDMI_I_P_IN_1}),    // input wire [63 : 0] dina
	  .clkb(ui_clk),    // input wire clkb
	  .addrb(Video_in_ddr_addrb),  // input wire [7 : 0] addrb
	  .doutb(app_wdf_data_2)  // output wire [511 : 0] doutb
	);

	Video_out_ram Video_out_ram1 (
	  .clka(ui_clk),    // input wire clka
	  .wea(app_rd_data_valid & Ram_change_flag),      // input wire [0 : 0] wea
	  .addra(DDR_out_video_addra),  // input wire [7 : 0] addra
	  .dina(app_rd_data),    // input wire [511 : 0] dina
	  .clkb(HDMI_I_LLC_IN_1),    // input wire clkb
	  .addrb(DDR_out_video_addrb),  // input wire [10 : 0] addrb
	  .doutb(doutb1)  // output wire [63 : 0] doutb
	);

	Video_out_ram Video_out_ram2 (
	  .clka(ui_clk),    // input wire clka
	  .wea(app_rd_data_valid & Ram_change_flag),      // input wire [0 : 0] wea
	  .addra(DDR_out_video_addra),  // input wire [7 : 0] addra
	  .dina(app_rd_data),    // input wire [511 : 0] dina
	  .clkb(HDMI_I_LLC_IN_1),    // input wire clkb
	  .addrb(DDR_out_video_addrb),  // input wire [10 : 0] addrb
	  .doutb(doutb2)  // output wire [63 : 0] doutb
	);

/* 	Video_in_ram Video_in_ram1 (
	  .clka(clk_video_8div_in),    // input wire clka
	  .wea(HDMI_I_DE_IN_1 & Ram_change_flag),      // input wire [0 : 0] wea
	  .addra(Video_in_ddr_addra),  // input wire [7 : 0] addra
	  .dina(Video_in_din_finish),    // input wire [511 : 0] dina
	  .clkb(ui_clk),    // input wire clkb
	  .addrb(Video_in_ddr_addrb),  // input wire [7 : 0] addrb
	  .doutb(app_wdf_data_1)  // output wire [511 : 0] doutb
	);

	Video_in_ram Video_in_ram2 (
	  .clka(clk_video_8div_in),    // input wire clka
	  .wea(HDMI_I_DE_IN_1 & (~Ram_change_flag)),      // input wire [0 : 0] wea
	  .addra(DDR_out_video_addra),  // input wire [7 : 0] addra
	  .dina(Video_in_din_finish),    // input wire [511 : 0] dina
	  .clkb(ui_clk),    // input wire clkb
	  .addrb(Video_in_ddr_addrb),  // input wire [7 : 0] addrb
	  .doutb(app_wdf_data_2)  // output wire [511 : 0] doutb
	);

	Video_out_ram Video_out_ram1 (
	  .clka(ui_clk),    // input wire clka
	  .wea(app_rd_data_valid & Ram_change_flag),      // input wire [0 : 0] wea
	  .addra(DDR_out_video_addra),  // input wire [7 : 0] addra
	  .dina(app_rd_data),    // input wire [511 : 0] dina
	  .clkb(clk_video_8div_out),    // input wire clkb
	  .addrb(DDR_out_video_addrb),  // input wire [7 : 0] addrb
	  .doutb(doutb1)  // output wire [511 : 0] doutb
	);
	
	Video_out_ram Video_out_ram2 (
	  .clka(ui_clk),    // input wire clka
	  .wea(app_rd_data_valid & (~Ram_change_flag)),      // input wire [0 : 0] wea
	  .addra(DDR_out_video_addra),  // input wire [7 : 0] addra
	  .dina(app_rd_data),    // input wire [511 : 0] dina
	  .clkb(clk_video_8div_out),    // input wire clkb
	  .addrb(DDR_out_video_addrb),  // input wire [7 : 0] addrb
	  .doutb(doutb2)  // output wire [511 : 0] doutb
	); */
	
endmodule
