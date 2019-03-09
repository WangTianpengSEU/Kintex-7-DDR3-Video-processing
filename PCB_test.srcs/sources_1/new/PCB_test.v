`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/11 09:00:39
// Design Name: 
// Module Name: PCB_test
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


module PCB_test(

    // Inouts
    inout [63:0]                         ddr3_dq,
    inout [7:0]                        ddr3_dqs_n,
    inout [7:0]                        ddr3_dqs_p,
    
    // Outputs
    output [15:0]                       ddr3_addr,
    output [2:0]                      ddr3_ba,
    output                                       ddr3_ras_n,
    output                                       ddr3_cas_n,
    output                                       ddr3_we_n,
    output                                       ddr3_reset_n,
    output [0:0]                        ddr3_ck_p,
    output [0:0]                        ddr3_ck_n,
    output [0:0]                       ddr3_cke,
    output [0:0]           ddr3_cs_n,
    output [7:0]                        ddr3_dm,
    output [0:0]                       ddr3_odt,
    
    // Inputs
    
    // Differential system clocks
    input                                        sys_clk_p,
    input                                        sys_clk_n,
    output                                       init_calib_complete,
    
    //ADV7611_1
    output HDMI_I_SCL_1,
    inout HDMI_I_SDA_1,   //inout    
    output HDMI_I_RESET_1,
       
    input [23:0]HDMI_I_P_IN_1,    
    input HDMI_I_LLC_IN_1,
    input HDMI_I_HSYNC_IN_1,
    input HDMI_I_VSYNC_IN_1,
    input HDMI_I_DE_IN_1,

    //ADV7611_2
    output HDMI_I_SCL_2,
    inout HDMI_I_SDA_2,   //inout    
    output HDMI_I_RESET_2,
       
    input [23:0]HDMI_I_P_IN_2,    
    input HDMI_I_LLC_IN_2,
    input HDMI_I_HSYNC_IN_2,
    input HDMI_I_VSYNC_IN_2,
    input HDMI_I_DE_IN_2,

    //ADV7611_3
    output HDMI_I_SCL_3,
    inout HDMI_I_SDA_3,   //inout    
    output HDMI_I_RESET_3,
       
    input [23:0]HDMI_I_P_IN_3,    
    input HDMI_I_LLC_IN_3,
    input HDMI_I_HSYNC_IN_3,
    input HDMI_I_VSYNC_IN_3,
    input HDMI_I_DE_IN_3,

    //ADV7611_4
    output HDMI_I_SCL_4,
    inout HDMI_I_SDA_4,   //inout    
    output HDMI_I_RESET_4,
       
    input [23:0]HDMI_I_P_IN_4,    
    input HDMI_I_LLC_IN_4,
    input HDMI_I_HSYNC_IN_4,
    input HDMI_I_VSYNC_IN_4,
    input HDMI_I_DE_IN_4,

    //ADV7511_1    
    output HDMI_O_SCL_1,
    inout HDMI_O_SDA_1,   //inout    
    
    output [23:0]HDMI_O_P_OUT_1,
    output HDMI_O_CLK_OUT_1,
    output reg HDMI_O_HSYNC_OUT_1,
    output reg HDMI_O_VSYNC_OUT_1,
    output reg HDMI_O_DE_OUT_1,

    //ADV7511_2    
    output HDMI_O_SCL_2,
    inout HDMI_O_SDA_2,   //inout    
    
    output reg [23:0]HDMI_O_P_OUT_2,
    output HDMI_O_CLK_OUT_2,
    output reg HDMI_O_HSYNC_OUT_2,
    output reg HDMI_O_VSYNC_OUT_2,
    output reg HDMI_O_DE_OUT_2,

    //ADV7511_3    
    output HDMI_O_SCL_3,
    inout HDMI_O_SDA_3,   //inout    
    
    output reg [23:0]HDMI_O_P_OUT_3,
    output HDMI_O_CLK_OUT_3,
    output reg HDMI_O_HSYNC_OUT_3,
    output reg HDMI_O_VSYNC_OUT_3,
    output reg HDMI_O_DE_OUT_3,

    //ADV7511_4    
    output HDMI_O_SCL_4,
    inout HDMI_O_SDA_4,   //inout    
    
    output reg [23:0]HDMI_O_P_OUT_4,
    output HDMI_O_CLK_OUT_4,
    output reg HDMI_O_HSYNC_OUT_4,
    output reg HDMI_O_VSYNC_OUT_4,
    output reg HDMI_O_DE_OUT_4,

    
    output reg led1,
    output reg led2
    

    );
    
    wire clk200M;
    
    wire HDMI_I_SCL;
    wire HDMI_I_SDA;
    wire HDMI_I_RESET;
    wire HDMI_O_SCL;
    wire HDMI_O_SDA;
    
    reg [31:0]count1 = 0;
    reg [31:0]count2 = 0;
    
    wire ui_clk;
    wire [29:0]app_addr;
    wire [2:0]app_cmd;
    wire app_en;
    wire [511:0]app_wdf_data;
    wire app_wdf_end;
    wire app_wdf_wren;
    wire [511:0]app_rd_data;
    wire app_rd_data_end;
    wire app_rd_data_valid;
    wire app_rdy;
    wire app_wdf_rdy;
	
	reg HDMI_O_HSYNC_OUT_r1 = 0;
	reg HDMI_O_VSYNC_OUT_r1 = 0;
	reg HDMI_O_DE_OUT_r1 = 0;

	reg HDMI_O_HSYNC_OUT_r2 = 0;
	reg HDMI_O_VSYNC_OUT_r2 = 0;
	reg HDMI_O_DE_OUT_r2 = 0;

    
    assign HDMI_O_CLK_OUT_1 = HDMI_I_LLC_IN_1;
//    assign HDMI_O_CLK_OUT_2 = HDMI_I_LLC_IN_2; 
//    assign HDMI_O_CLK_OUT_3 = HDMI_I_LLC_IN_3;
//    assign HDMI_O_CLK_OUT_4 = HDMI_I_LLC_IN_4;
    
    
    always@(posedge HDMI_I_LLC_IN_1)
        begin
//            HDMI_O_P_OUT_1 <= HDMI_I_P_IN_1;
            HDMI_O_HSYNC_OUT_1 <= HDMI_I_HSYNC_IN_1;
            HDMI_O_VSYNC_OUT_1 <= HDMI_I_VSYNC_IN_1;
            HDMI_O_DE_OUT_1 <= HDMI_I_DE_IN_1;
        end

//    always@(posedge HDMI_I_LLC_IN_2)
//        begin
//            HDMI_O_P_OUT_2 <= HDMI_I_P_IN_2;
//            HDMI_O_HSYNC_OUT_2 <= HDMI_I_HSYNC_IN_2;
//            HDMI_O_VSYNC_OUT_2 <= HDMI_I_VSYNC_IN_2;
//            HDMI_O_DE_OUT_2 <= HDMI_I_DE_IN_2;
//        end

//    always@(posedge HDMI_I_LLC_IN_3)
//        begin
//            HDMI_O_P_OUT_3 <= HDMI_I_P_IN_3;
//            HDMI_O_HSYNC_OUT_3 <= HDMI_I_HSYNC_IN_3;
//            HDMI_O_VSYNC_OUT_3 <= HDMI_I_VSYNC_IN_3;
//            HDMI_O_DE_OUT_3 <= HDMI_I_DE_IN_3;
//        end

//    always@(posedge HDMI_I_LLC_IN_4)
//        begin
//            HDMI_O_P_OUT_4 <= HDMI_I_P_IN_4;
//            HDMI_O_HSYNC_OUT_4 <= HDMI_I_HSYNC_IN_4;
//            HDMI_O_VSYNC_OUT_4 <= HDMI_I_VSYNC_IN_4;
//            HDMI_O_DE_OUT_4 <= HDMI_I_DE_IN_4;
//        end

    
    assign HDMI_I_SCL_1 = HDMI_I_SCL;
    assign HDMI_I_SDA_1 = HDMI_I_SDA;
    assign HDMI_I_RESET_1 = HDMI_I_RESET;

//    assign HDMI_I_SCL_2 = HDMI_I_SCL;
//    assign HDMI_I_SDA_2 = HDMI_I_SDA;
//    assign HDMI_I_RESET_2 = HDMI_I_RESET;

//    assign HDMI_I_SCL_3 = HDMI_I_SCL;
//    assign HDMI_I_SDA_3 = HDMI_I_SDA;
//    assign HDMI_I_RESET_3 = HDMI_I_RESET;

//    assign HDMI_I_SCL_4 = HDMI_I_SCL;
//    assign HDMI_I_SDA_4 = HDMI_I_SDA;
//    assign HDMI_I_RESET_4 = HDMI_I_RESET;
    
    assign HDMI_O_SCL_1 = HDMI_O_SCL;
    assign HDMI_O_SDA_1 = HDMI_O_SDA;

//    assign HDMI_O_SCL_2 = HDMI_O_SCL;
//    assign HDMI_O_SDA_2 = HDMI_O_SDA;

//    assign HDMI_O_SCL_3 = HDMI_O_SCL;
//    assign HDMI_O_SDA_3 = HDMI_O_SDA;

//    assign HDMI_O_SCL_4 = HDMI_O_SCL;
//    assign HDMI_O_SDA_4 = HDMI_O_SDA;
    

          
    always@(posedge ui_clk)
          begin
              if(count1 <= 50_000_000)
                  begin
                      count1 <= count1 + 1;
                      led1 <= 1;
                      led2 <= 1;
                  end
              else if(count1 < 100_000_000)
                  begin
                      count1 <= count1 + 1;
                      led1 <= 0;
                      led2 <= 0;
                  end
              else
                  count1 <= 0;
          end
                 
              
        ADV7611_INTERFACE ADV7611_INTERFACE_1(
              .clk100M(ui_clk),
              .HDMI_I_SCL(HDMI_I_SCL),
              .HDMI_I_SDA(HDMI_I_SDA),
              .HDMI_I_RESET(HDMI_I_RESET)//低电平则重置
      //            output HDMI_I_CS//低电平则片选
              );
              
        ADV7511_INTERFACE ADV7511_INTERFACE_1(
              .clk100M(ui_clk),
              .HDMI_O_SCL(HDMI_O_SCL),
              .HDMI_O_SDA(HDMI_O_SDA)
              );
              
              
        DDR3_state_machine_v2 DDR3_state_machine(
              
                  .ui_clk(ui_clk),
              
                  .HDMI_I_P_IN_1(HDMI_I_P_IN_1),    //[23:0]
                  .HDMI_I_LLC_IN_1(HDMI_I_LLC_IN_1),
                  .HDMI_I_HSYNC_IN_1(HDMI_I_HSYNC_IN_1),
                  .HDMI_I_VSYNC_IN_1(HDMI_I_VSYNC_IN_1),
                  .HDMI_I_DE_IN_1(HDMI_I_DE_IN_1),
                  
                  .HDMI_O_P_OUT_1(HDMI_O_P_OUT_1),  //[23:0]
              
                  .app_addr(app_addr),  //[29:0]
                  .app_cmd(app_cmd),  //[2:0]
                  .app_en(app_en),
                  .app_wdf_data(app_wdf_data),  //[511:0]
                  .app_wdf_end(app_wdf_end),
                  .app_wdf_wren(app_wdf_wren),
                  
                  .app_rd_data(app_rd_data),  //[511:0]
                  .app_rd_data_end(app_rd_data_end),
                  .app_rd_data_valid(app_rd_data_valid),
                  .app_rdy(app_rdy),
                  .app_wdf_rdy(app_wdf_rdy),
                  .init_calib_complete(init_calib_complete)
              
                  );              
              
        
              
        DDR3_interface DDR3_interface(
              
                  // Inouts
                  .ddr3_dq(ddr3_dq),  //[63:0]
                  .ddr3_dqs_n(ddr3_dqs_n),  //[7:0]
                  .ddr3_dqs_p(ddr3_dqs_p),  //[7:0]
                  
                  // Outputs
                  .ddr3_addr(ddr3_addr),  //[15:0]
                  .ddr3_ba(ddr3_ba),   //[2:0]
                  .ddr3_ras_n(ddr3_ras_n),
                  .ddr3_cas_n(ddr3_cas_n),
                  .ddr3_we_n(ddr3_we_n),
                  .ddr3_reset_n(ddr3_reset_n),
                  .ddr3_ck_p(ddr3_ck_p),
                  .ddr3_ck_n(ddr3_ck_n),
                  .ddr3_cke(ddr3_cke),
                  .ddr3_cs_n(ddr3_cs_n),
                  .ddr3_dm(ddr3_dm),  //[7:0]
                  .ddr3_odt(ddr3_odt),
                  
                  // User interface
                  
                  .app_addr(app_addr),  //[2:0]
                  .app_cmd(app_cmd),  //[2:0]
                  .app_en(app_en),
                  .app_wdf_data(app_wdf_data),  //[511:0]
                  .app_wdf_end(app_wdf_end),
                  .app_wdf_wren(app_wdf_wren),
                  
                  .app_rd_data(app_rd_data),  //[511:0]
                  .app_rd_data_end(app_rd_data_end),
                  .app_rd_data_valid(app_rd_data_valid),
                  .app_rdy(app_rdy),
                  .app_wdf_rdy(app_wdf_rdy),
                  
                  .ui_clk(ui_clk),
                  // Differential system clocks
                  .sys_clk_p(sys_clk_p),
                  .sys_clk_n(sys_clk_n),
                  .init_calib_complete(init_calib_complete)
              
                  );

endmodule
