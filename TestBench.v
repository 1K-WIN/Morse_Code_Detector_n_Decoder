`timescale 1ns / 1ps


module TestBench;
reg reset,clk,din;
wire [7:0] ascii;
wire start;
reg [97:0] data;
integer i;

TopBlock uut(clk,din,reset,ascii,start);

initial begin
//sos test msg
data = 98'b01010100011101110111000101010000000111000100010101000111000000011101110001010100011101110100000001;
clk= 1'b0;
forever #5 clk= ~clk;
end

initial
begin
    reset= 1'b1; #10
    reset= 1'b0; #10
    for(i=97;i>=0;i=i-1)
        begin
        din = data[i]; #10;
        end
end

initial
begin
#1000 $finish;
end
endmodule