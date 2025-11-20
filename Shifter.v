`timescale 1ns / 1ps


module Shifter(clk,dot,dash,chs,ws,en,reset,data,rdy);
input clk,dot,dash,chs,ws,en,reset;
output reg [7:0] data;
output reg rdy;
reg [7:0] temp;

always @(posedge clk)
    begin
        if(reset)
            begin
            temp = 8'd1;
            data = 8'd0;
            rdy = 0;
            end
    end

always @(posedge en)
    begin
    if(dot)
        temp = temp<<1;
    else if(dash)
        begin
        temp = temp<<1;
        temp[0] = 1'b1;
        end
    else if(chs||ws)
        begin
        data = temp;
        rdy = 1;
        #1 data = 8'd0;
        temp = 8'd1;
        rdy = 0;
        end
    end

endmodule