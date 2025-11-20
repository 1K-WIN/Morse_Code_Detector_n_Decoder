`timescale 1ns / 1ps


module Mapping(clk,reset,ws,en,data,rdy,ascii,start);
input [7:0] data;
input clk, reset, ws, en, rdy;
output reg [7:0] ascii;
output reg start;

always @(posedge clk)
    begin
        if(reset)
            begin
            ascii = 8'd0;
            start = 1'b0;
            end
    end

always @(posedge rdy)
    begin
        case (data)
        8'h05 : begin ascii = 8'h41; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h18 : begin ascii = 8'h42; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h1A : begin ascii = 8'h43; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h0C : begin ascii = 8'h44; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h02 : begin ascii = 8'h45; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h12 : begin ascii = 8'h46; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h0E : begin ascii = 8'h47; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h10 : begin ascii = 8'h48; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h04 : begin ascii = 8'h49; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h17 : begin ascii = 8'h4A; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h0D : begin ascii = 8'h4B; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h14 : begin ascii = 8'h4C; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h07 : begin ascii = 8'h4D; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h06 : begin ascii = 8'h4E; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h0F : begin ascii = 8'h4F; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h16 : begin ascii = 8'h50; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h1D : begin ascii = 8'h51; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h0A : begin ascii = 8'h52; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h08 : begin ascii = 8'h53; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h03 : begin ascii = 8'h54; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h09 : begin ascii = 8'h55; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h11 : begin ascii = 8'h56; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h0B : begin ascii = 8'h57; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h19 : begin ascii = 8'h58; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h1B : begin ascii = 8'h59; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        8'h1C : begin ascii = 8'h5A; start = 1'b1; #1 ascii = 8'd0; start = 1'b0; end
        endcase
    end

always @(posedge en)
    begin
    if(ws)
        begin
        #5 ascii = 8'h20; start = 1'b1; #1 ascii = 8'd0; start = 1'b0;
        end
    end

endmodule