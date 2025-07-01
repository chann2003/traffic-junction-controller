`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2023 06:47:07 PM
// Design Name: 
// Module Name: Traffic_Light_Controller_TB
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


module Traffic_Light_Controller_TB;
reg clk,rst;
wire [2:0]light_L_R;
wire [2:0]light_D_R;
wire [2:0]light_R_L_D;
wire [2:0]light_L_D;
wire [3:0]count;
wire [2:0] ps;
Traffic_Light_Controller dut(.clk(clk) , .rst(rst) , .light_L_R(light_L_R) , .light_D_R(light_D_R)  ,.light_R_L_D(light_R_L_D),.light_L_D(light_L_D),.count(count),.ps(ps)   );
initial
begin
    clk=1'b0;
    forever #(1) clk=~clk;
end

initial
begin
    rst=0;
    #1;
    rst=1;
    #1;
    rst=0;
    #(70);
    
    $finish;
    end




endmodule
