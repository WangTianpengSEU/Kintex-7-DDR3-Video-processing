`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/12 15:39:04
// Design Name: 
// Module Name: DDR3_state_machine
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


module DDR3_state_machine(

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
    output [511:0]app_wdf_data,
    output app_wdf_end,
    output reg app_wdf_wren,
    
    input [511:0]app_rd_data,
    input app_rd_data_end,
    input app_rd_data_valid,
    input app_rdy,
    input app_wdf_rdy,
    input init_calib_complete

    );
    
    //  *************** 必读  *************  //
    
    //由于ui_clk和LLC像素时钟不同步，因此Video端和RAM端之间相关的寄存器，必须在LLC下操作
    //RAM和DDR端之间的寄存器，必须在ui_clk下操作。
    //例如 row 行计数的切换（加1操作)，由于Video行计数切换和DDR存储的行计数切换并不同步，因此必须分开处理行计数
    
    //DDR的读写必须严格依照上述原则，否则缓存视频会导致严重的抖动问题
    
    
    parameter DDR3_VS_change_begin = 2048;  //从2048行开始下一帧图像缓存
    
    reg [511:0]Video_in_din = 0;
    reg [511:0]Video_in_din_finish = 0;
    reg [2:0]Data_in_index = 0;
    reg [10:0]Video_in_data_addr_X = 0;
    reg [10:0]Video_in_data_addr_Y = 0;
    reg [21:0]Video_in_data_addr = 0;
    
    reg HS_flag = 0;
    reg Video_in_flag = 0;
    reg clk_video_8div_in = 0;
    reg clk_video_8div_out = 0;
    
    reg Video_in_ddr_en = 0;
    reg [7:0]Video_in_ddr_addra = 0;
    reg [7:0]Video_in_ddr_addrb = 0;
    
    reg DDR_out_video_en = 0;
    reg [7:0]DDR_out_video_addra = 0;
    reg [7:0]DDR_out_video_addrb = 0;
    
    reg [29:0]app_addr_write = 0;
    reg [29:0]app_addr_read = 0;
    
    reg [18:0]addr_write_bank_row = 0;
    reg [10:0]addr_write_column = 0;
    reg [18:0]addr_read_bank_row = 0;
    reg [10:0]addr_read_column = 0;    
    reg [31:0]DDR3_write_row_count = 0;
    reg [31:0]DDR3_write_column_count = 0;
    reg [31:0]DDR3_read_row_count = 0;
    reg [31:0]DDR3_read_column_count = 0;
    
    wire [511:0]dout;
    
    reg [3:0]DDR3_state;
    reg [511:0]dout_r = 0;
    reg [2:0]Data_out_index = 0;
    reg [63:0]Ram_out_r = 0;
    
    reg VS_change_flag = 0;
    reg VS_flag = 0;
    
    reg Ram_out_en_change = 0;
    
    wire [23:0]Video_out_data_1;
    wire [23:0]Video_out_data_2;
    
    reg[2:0]Video_in_state = 3'b000;
    
    reg [31:0]Video_in_index_count = 0;
    
    
    assign app_wdf_end = app_wdf_wren;
    
//    ila_0 ila_0 (
//        .clk(ui_clk), // input wire clk
    
    
//        .probe0(HDMI_I_HSYNC_IN_1), // input wire [0:0]  
  
//        .probe1(HDMI_I_VSYNC_IN_1), // input wire [0:0]  probe1 
//        .probe2(HDMI_I_DE_IN_1), // input wire [0:0]  probe2 
//        .probe3(HDMI_I_P_IN_1), // input wire [23:0]  probe3 
//        .probe4(HDMI_O_P_OUT_1), // input wire [23:0]  probe4 
//        .probe5(app_addr), // input wire [29:0]  probe5 
//        .probe6(app_cmd), // input wire [2:0]  probe6 
//        .probe7(app_wdf_wren), // input wire [0:0]  probe7 
//        .probe8(app_rd_data_valid), // input wire [0:0]  probe8 
//        .probe9(app_rdy), // input wire [0:0]  probe9 
//        .probe10(app_wdf_rdy), // input wire [0:0]  probe10 
//        .probe11(app_en), // input wire [0:0]  probe11 
//        .probe12(Data_in_index), // input wire [2:0]  probe12 
//        .probe13(Video_in_data_addr_X), // input wire [10:0]  probe13 
//        .probe14(Video_in_data_addr_Y), // input wire [10:0]  probe14 
//        .probe15(HS_flag), // input wire [0:0]  probe15 
//        .probe16(init_calib_complete), // input wire [0:0]  probe16 
//        .probe17(Video_in_ddr_en), // input wire [0:0]  probe17 
//        .probe18(Video_in_ddr_addra), // input wire [7:0]  probe18 
//        .probe19(Video_in_ddr_addrb), // input wire [7:0]  probe19 
//        .probe20(DDR_out_video_en), // input wire [0:0]  probe20 
//        .probe21(DDR_out_video_addra), // input wire [7:0]  probe21 
//        .probe22(DDR_out_video_addrb), // input wire [7:0]  probe22 
//        .probe23(addr_write_bank_row), // input wire [19:0]  probe23 
//        .probe24(addr_write_column[9:0]), // input wire [9:0]  probe24 
//        .probe25(addr_read_bank_row), // input wire [19:0]  probe25 
//        .probe26(addr_read_column[9:0]), // input wire [9:0]  probe26 
//        .probe27(DDR3_write_row_count), // input wire [31:0]  probe27 
//        .probe28(DDR3_write_column_count), // input wire [31:0]  probe28 
//        .probe29(DDR3_read_row_count), // input wire [31:0]  probe29 
//        .probe30(DDR3_read_column_count), // input wire [31:0]  probe30 
//        .probe31(DDR3_state), // input wire [3:0]  probe31 
//        .probe32(Data_out_index), // input wire [2:0]  probe32 
//        .probe33(VS_change_flag), // input wire [0:0]  probe33 
//        .probe34(VS_flag), // input wire [0:0]  probe34 
//        .probe35(Ram_out_en_change), // input wire [0:0]  probe35 
//        .probe36(Video_out_data_1), // input wire [22:0]  probe36 
//        .probe37(Video_out_data_2) // input wire [22:0]  probe37
//    );
    
    
    always@(posedge HDMI_I_LLC_IN_1) //模块用于计算输入像素的行列地址
        begin
        
            Video_in_state <= {HDMI_I_HSYNC_IN_1,HDMI_I_VSYNC_IN_1,HDMI_I_DE_IN_1};
            Video_in_data_addr <= {Video_in_data_addr_Y,Video_in_data_addr_X};
            
            Video_in_ddr_en <= (HDMI_I_DE_IN_1 == 1 && Video_in_data_addr_Y < 1080)? 1 : 0;
            
            case(Video_in_state)
                3'b001:  //数据有效
                    begin
                        Video_in_data_addr_X <= Video_in_data_addr_X + 1;    
                        Video_in_flag <= 1;  //  数据流开始进入标志
                        HS_flag <= 0;
                        VS_change_flag <= 0;
                        Video_in_index_count <= Video_in_index_count + 1;
                    end
                3'b100:  //行同步
                    begin
                        Video_in_data_addr_X <= 0;
                        if(HS_flag == 0 && Video_in_flag == 1)
                            begin
                                HS_flag <= 1;
                                Video_in_data_addr_Y <= Video_in_data_addr_Y + 1;
                                Video_in_index_count <= 0;
                            end
                        else
                            begin
                                Video_in_data_addr_Y <= Video_in_data_addr_Y;
                                Video_in_index_count <= Video_in_index_count + 1;
                            end
                    end
                3'b010,3'b011,3'b110,3'b111:  //场同步信号
                    begin
                        HS_flag <= 0;
                        Video_in_flag <= 0;
                        
						._X <= 0;
                        Video_in_data_addr_Y <= 0;
                    end
                3'b000,3'b101: //注意DE传输完毕和传输之前有一段时间是 3'b000，这个是常见状态 不要随便清理什么寄存器
                    begin
                        Video_in_data_addr_X <= Video_in_data_addr_X;
                        Video_in_data_addr_Y <= Video_in_data_addr_Y;
                    end
                endcase
        end
    
    always@(posedge HDMI_I_LLC_IN_1)
        begin
            if(Video_in_state == 3'b001)
                begin
                    case(Data_in_index)
                            3'b000: begin Video_in_din[63:0] <= {18'b0,Video_in_data_addr,HDMI_I_P_IN_1}; Data_in_index <= 3'b001;  Video_in_din_finish <= Video_in_din; end //确保只在最后一次并入的时候改变这个512bit组合数据
                            3'b001: begin Video_in_din[127:64] <= {18'b0,Video_in_data_addr,HDMI_I_P_IN_1}; Data_in_index <= 3'b010; end
                            3'b010: begin Video_in_din[191:128] <= {18'b0,Video_in_data_addr,HDMI_I_P_IN_1}; Data_in_index <= 3'b011; end
                            3'b011: begin Video_in_din[255:192] <= {18'b0,Video_in_data_addr,HDMI_I_P_IN_1}; Data_in_index <= 3'b100; clk_video_8div_in <= 1; end
                            3'b100: begin Video_in_din[319:256] <= {18'b0,Video_in_data_addr,HDMI_I_P_IN_1}; Data_in_index <= 3'b101; end
                            3'b101: begin Video_in_din[383:320] <= {18'b0,Video_in_data_addr,HDMI_I_P_IN_1}; Data_in_index <= 3'b110; end
                            3'b110: begin Video_in_din[447:384] <= {18'b0,Video_in_data_addr,HDMI_I_P_IN_1}; Data_in_index <= 3'b111; end
                            3'b111: begin Video_in_din[511:448] <= {18'b0,Video_in_data_addr,HDMI_I_P_IN_1}; Data_in_index <= 3'b000; clk_video_8div_in <= 0; Video_in_ddr_addra <= Video_in_ddr_addra + 1; end  
                    endcase
                end
            else
                begin
                    Video_in_din_finish <= Video_in_din;
                    Data_in_index <= 3'b000;
                    clk_video_8div_in <= 0;
                    Video_in_ddr_addra <= 0;
                end
        end
        
        always@(posedge ui_clk)
            begin
            
                DDR3_state <= {app_en,app_rdy,app_wdf_wren,app_wdf_rdy};
                app_addr_write <= {addr_write_bank_row,addr_write_column};
                app_addr_read <= {addr_read_bank_row,addr_read_column};
                app_addr <= (app_cmd == 3'b000)? app_addr_write : app_addr_read;
                
            
                if(Video_in_flag == 1 && Video_in_data_addr_X >= 1500 && DDR3_write_column_count < 240)  // 从RAM写入到DDR
                    begin
                    
                        addr_read_column <= 0;
                        DDR3_read_column_count <= 0;
                        DDR_out_video_addra <= 0;
                                            
                        app_en <= 1;  //使能DDR3
                        app_wdf_wren <= 1;  //使能写命令
                        app_cmd <= 3'b000; //写入命令使能
                        
                        DDR_out_video_en <= 0;  //DDR写入RAM使能关
                        
                        // 行序列加一
                        addr_write_bank_row <= (addr_write_column == 1912)? (addr_write_bank_row + 1) : addr_read_bank_row;
                        
                        Video_in_ddr_addrb <= (app_wdf_wren == 1 && app_wdf_rdy == 1)? (Video_in_ddr_addrb + 1) : Video_in_ddr_addrb;
                        DDR3_write_column_count <= (app_wdf_wren == 1 && app_wdf_rdy == 1)? (DDR3_write_column_count + 1) : DDR3_write_column_count;  //DDR存储行数据量计数
                        addr_write_column <= (app_en == 1 && app_rdy == 1 && addr_write_column < 1920)? (addr_write_column + 8) : addr_write_column;   
    
                    end
                else if(Video_in_flag == 1 && Video_in_data_addr_X < 1500 && DDR_out_video_addra < 240)  //从DDR读出到RAM
                    begin
                        addr_write_column <= 0;
                        DDR3_write_column_count <= 0;
                        Video_in_ddr_addrb <= 0;
                        

                        app_en <= 1;  //使能DDR3
                        app_cmd <= 3'b001; //读取命令使能
                        app_wdf_wren <= 0;  //使能写命令
                        DDR_out_video_en <= 1;  //RAM写入使能
                        
                        // 行序列加一  
                        addr_read_bank_row <= (addr_read_column == 1912)? (addr_read_bank_row + 1) : addr_read_bank_row;
                        
                        DDR_out_video_addra <= (DDR_out_video_addra < 240 && app_rd_data_valid == 1)? (DDR_out_video_addra + 1) : DDR_out_video_addra;
                        DDR3_read_column_count <= (app_en == 1 && app_rdy == 1 && DDR3_read_column_count < 240)? (DDR3_read_column_count + 1) : DDR3_read_column_count;
                        addr_read_column <= (app_en == 1 && app_rdy == 1 && addr_read_column < 1920)? (addr_read_column + 8) : addr_read_column;
                                                    
                    end
                else if(Video_in_flag == 0)//场同步时间
                    begin
                        DDR3_write_column_count <= 0;  //将写入过程的寄存器清零
                        addr_write_column <= 0;
                        Video_in_ddr_addrb <= 0;
                    
                        addr_read_column <= 0;
                        DDR3_read_column_count <= 0;
                        DDR_out_video_addra <= 0;
                        
                        app_en <= 0;  //关闭使能DDR3
                        app_cmd <= 3'b000;
                        
                        DDR_out_video_en <= 0;  //RAM写入使能
                        
                        if(VS_change_flag == 0)  //用于切换DDR存储单元
                            begin
                                VS_flag <= ~VS_flag;
                                VS_change_flag <= 1;
                            end
                        else
                            begin
                                VS_flag <= VS_flag;
                            end
                        
                        if(VS_flag == 0)
                            begin
                                addr_write_bank_row <= DDR3_VS_change_begin;
                                addr_read_bank_row <= 0;
                            end
                        else
                            begin
                                addr_write_bank_row <= 0;
                                addr_read_bank_row <= DDR3_VS_change_begin;
                            end
                    end
            end
            
            always@(posedge HDMI_I_LLC_IN_1)
                begin
                    HDMI_O_P_OUT_1 <= (Ram_out_en_change == 1)? Video_out_data_1 : Video_out_data_2;
                    
                    if(HDMI_I_DE_IN_1 == 1)
                        begin
                            case(Data_out_index)
                              3'b000: begin Ram_out_r <= dout_r[63:0]; Data_out_index <= 3'b001; end
                              3'b001: begin Ram_out_r <= dout_r[127:64]; Data_out_index <= 3'b010; end
                              3'b010: begin Ram_out_r <= dout_r[191:128]; Data_out_index <= 3'b011; end
                              3'b011: begin Ram_out_r <= dout_r[255:192]; Data_out_index <= 3'b100; clk_video_8div_out <= 1; end
                              3'b100: begin Ram_out_r <= dout_r[319:256]; Data_out_index <= 3'b101; end
                              3'b101: begin Ram_out_r <= dout_r[383:320]; Data_out_index <= 3'b110; end
                              3'b110: begin Ram_out_r <= dout_r[447:384]; Data_out_index <= 3'b111; end
                              3'b111: begin 
                                        Ram_out_r <= dout_r[511:448]; Data_out_index <= 3'b000; 
                                        DDR_out_video_addrb <= DDR_out_video_addrb + 1; 
                                        clk_video_8div_out <= 0; 
                                        dout_r <= dout; 
                                        Ram_out_en_change <= Video_in_data_addr_Y[0]; 
                                      end  //一定在最后 一轮输入完毕才更新一下数据
                            endcase
                        end
                    else
                        begin
                            Data_out_index <= 0;
                            DDR_out_video_addrb <= 0;
                            dout_r <= 0;
                            clk_video_8div_out <= 0;
                            Ram_out_r <= 0;
                        end
                end
            
    
    
            Video_in_ddr_ram Video_in_ddr_ram (
              .clka(clk_video_8div_in),    // input wire clka
              .wea(Video_in_ddr_en),      // input wire [0 : 0] wea
              .addra(Video_in_ddr_addra),  // input wire [7 : 0] addra
              .dina(Video_in_din_finish),    // input wire [511 : 0] dina
              .clkb(ui_clk),    // input wire clkb
              .addrb(Video_in_ddr_addrb),  // input wire [7 : 0] addrb
              .doutb(app_wdf_data)  // output wire [511 : 0] doutb
            );

            DDR_out_video_ram DDR_out_video_ram (
              .clka(ui_clk),    // input wire clka
              .wea(DDR_out_video_en),      // input wire [0 : 0] wea
              .addra(DDR_out_video_addra),  // input wire [7 : 0] addra
              .dina(app_rd_data),    // input wire [511 : 0] dina
              .clkb(clk_video_8div_out),    // input wire clkb
              .addrb(DDR_out_video_addrb),  // input wire [7 : 0] addrb
              .doutb(dout)  // output wire [511 : 0] doutb
            );

            Video_ram Video_ram_1 (
              .clka(HDMI_I_LLC_IN_1),    // input wire clka
              .wea(~Ram_out_en_change),      // input wire [0 : 0] wea
              .addra(Ram_out_r[34:24]),  // input wire [10 : 0] addra
              .dina(Ram_out_r[23:0]),    // input wire [23 : 0] dina
              .clkb(HDMI_I_LLC_IN_1),    // input wire clkb
              .addrb(Video_in_data_addr_X),  // input wire [10 : 0] addrb
              .doutb(Video_out_data_1)  // output wire [23 : 0] doutb
            );

            Video_ram Video_ram_2 (
              .clka(HDMI_I_LLC_IN_1),    // input wire clka
              .wea(Ram_out_en_change),      // input wire [0 : 0] wea
              .addra(Ram_out_r[34:24]),  // input wire [10 : 0] addra
              .dina(Ram_out_r[23:0]),    // input wire [23 : 0] dina
              .clkb(HDMI_I_LLC_IN_1),    // input wire clkb
              .addrb(Video_in_data_addr_X),  // input wire [10 : 0] addrb
              .doutb(Video_out_data_2)  // output wire [23 : 0] doutb
            );
endmodule
