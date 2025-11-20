`timescale 1ns / 1ps


module TopBlock(clk,din,reset,ascii,start);
input clk, din, reset;
output [7:0] ascii;
output start;
wire dot,dash,chs,ws,en;
wire [7:0] data;
wire rdy,fin;

Detector b1(clk,din,reset,dot,dash,chs,ws,en);
Shifter b2(clk,dot,dash,chs,ws,en,reset,data,rdy);
Mapping b3(clk,reset,ws,en,data,rdy,ascii,start);

endmodule