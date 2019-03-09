`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/12 15:11:26
// Design Name: 
// Module Name: DDR3_interface
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


module DDR3_interface(

    // Inouts
    inout [63:0]ddr3_dq,
    inout [7:0]ddr3_dqs_n,
    inout [7:0]ddr3_dqs_p,
    
    // Outputs
    output [15:0]ddr3_addr,
    output [2:0]ddr3_ba,
    output ddr3_ras_n,
    output ddr3_cas_n,
    output ddr3_we_n,
    output ddr3_reset_n,
    output [0:0]ddr3_ck_p,
    output [0:0]ddr3_ck_n,
    output [0:0]ddr3_cke,
    output [0:0]ddr3_cs_n,
    output [7:0]ddr3_dm,
    output [0:0]ddr3_odt,
    
    // User interface
    
    input [29:0]app_addr,
    input [2:0]app_cmd,
    input app_en,
    input [511:0]app_wdf_data,
    input app_wdf_end,
    input app_wdf_wren,
    
    output [511:0]app_rd_data,
    output app_rd_data_end,
    output app_rd_data_valid,
    output app_rdy,
    output app_wdf_rdy,
    
    output ui_clk,
    
    // Differential system clocks
    input sys_clk_p,
    input sys_clk_n,
    output init_calib_complete

    );
    
      mig_7series_0 u_mig_7series_0 (
  
      // Memory interface ports
      
      .ddr3_addr                      (ddr3_addr),  // output [15:0]        ddr3_addr
      .ddr3_ba                        (ddr3_ba),  // output [2:0]        ddr3_ba
      .ddr3_cas_n                     (ddr3_cas_n),  // output            ddr3_cas_n
      .ddr3_ck_n                      (ddr3_ck_n),  // output [0:0]        ddr3_ck_n
      .ddr3_ck_p                      (ddr3_ck_p),  // output [0:0]        ddr3_ck_p
      .ddr3_cke                       (ddr3_cke),  // output [0:0]        ddr3_cke
      .ddr3_ras_n                     (ddr3_ras_n),  // output            ddr3_ras_n
      .ddr3_reset_n                   (ddr3_reset_n),  // output            ddr3_reset_n
      .ddr3_we_n                      (ddr3_we_n),  // output            ddr3_we_n
      .ddr3_dq                        (ddr3_dq),  // inout [63:0]        ddr3_dq
      .ddr3_dqs_n                     (ddr3_dqs_n),  // inout [7:0]        ddr3_dqs_n
      .ddr3_dqs_p                     (ddr3_dqs_p),  // inout [7:0]        ddr3_dqs_p
      .init_calib_complete            (init_calib_complete),  // output            init_calib_complete
        
      .ddr3_cs_n                      (ddr3_cs_n),  // output [0:0]        ddr3_cs_n
      .ddr3_dm                        (ddr3_dm),  // output [7:0]        ddr3_dm
      .ddr3_odt                       (ddr3_odt),  // output [0:0]        ddr3_odt
      
      // Application interface ports
      
      .app_addr                       (app_addr),  // input [29:0]        app_addr
      .app_cmd                        (app_cmd),  // input [2:0]        app_cmd
      .app_en                         (app_en),  // input                app_en
      .app_wdf_data                   (app_wdf_data),  // input [511:0]        app_wdf_data
      .app_wdf_end                    (app_wdf_end),  // input                app_wdf_end
      .app_wdf_wren                   (app_wdf_wren),  // input                app_wdf_wren
      .app_rd_data                    (app_rd_data),  // output [511:0]        app_rd_data
      .app_rd_data_end                (app_rd_data_end),  // output            app_rd_data_end
      .app_rd_data_valid              (app_rd_data_valid),  // output            app_rd_data_valid
      .app_rdy                        (app_rdy),  // output            app_rdy
      .app_wdf_rdy                    (app_wdf_rdy),  // output            app_wdf_rdy
      .app_sr_req                     (1'b0),  // input            app_sr_req
      .app_ref_req                    (1'b0),  // input            app_ref_req
      .app_zq_req                     (1'b0),  // input            app_zq_req
      .app_sr_active                  (),  // output            app_sr_active
      .app_ref_ack                    (),  // output            app_ref_ack
      .app_zq_ack                     (),  // output            app_zq_ack
      .ui_clk                         (ui_clk),  // output            ui_clk
      .ui_clk_sync_rst                (),  // output            ui_clk_sync_rst
      .app_wdf_mask                   (0),  // input [63:0]        app_wdf_mask
      
      // System Clock Ports
      
      .sys_clk_p                       (sys_clk_p),  // input                sys_clk_p
      .sys_clk_n                       (sys_clk_n),  // input                sys_clk_n
      .sys_rst                        (1'b1) // input sys_rst
      );

	  

endmodule
