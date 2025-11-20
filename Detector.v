`timescale 1ns / 1ps


module Detector(clk,din,reset,dot,dash,ch_s,w_s,en);
input clk,din,reset;
output reg dot,dash,ch_s,w_s,en;
reg[3:0] cst, nst;	
parameter S00=4'b0000,
          S01=4'b0001,
          S02=4'b0010,
          S03=4'b0011,
          S04=4'b0100,
          S05=4'b0101,
          S06=4'b0110,
          S07=4'b0111,
          S08=4'b1000,
          S09=4'b1001,
          S10=4'b1010,
          S11=4'b1011,
          S12=4'b1100;

always @(posedge clk)
begin
if(reset)
	cst<=S00;
else
	cst<=nst;
end
	
always @(cst or din)
begin
	case(cst)
		S00: if(din==1'b0)
				begin
				nst<=S01;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
			else
				begin
				nst<=S00;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
				
		S01: if(din==1'b1)
				begin
				nst<=S02;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
			else
				begin
				nst<=S07;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
					
		S02: if(din==1'b0)
				begin
				nst<=S03;
				dot<=1'b1;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b1;
				end
			else
				begin
				nst<=S04;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
					
		S03: if(din==1'b0)
				begin
				nst<=S07;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
			else
				begin
				nst=S02;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
					
        S04: if(din==1'b1)
				begin
				nst<=S05;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
			else
				begin
				nst<=S00;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
				
		S05: if(din==1'b0)
				begin
				nst<=S06;
				dot<=1'b0;
				dash<=1'b1;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b1;
				end
			else
				begin
				nst<=S00;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
				
		S06: if(din==1'b0)
				begin
				nst<=S07;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
			else
				begin
				nst<=S02;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
				
		S07: if(din==1'b0)
				begin
				nst<=S08;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
			else
				begin
				nst<=S02;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
				
		S08: if(din==1'b0)
				begin
				nst<=S09;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
			else
				begin
				nst<=S02;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b1;
				w_s<=1'b0;
				en<=1'b1;
				end
		
		S09: if(din==1'b0)
				begin
				nst<=S10;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
			else
				begin
				nst<=S02;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
		
		S10: if(din==1'b0)
				begin
				nst<=S11;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
			else
				begin
				nst<=S02;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
		
		S11: if(din==1'b0)
				begin
				nst<=S12;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
			else
				begin
				nst<=S02;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
		
		S12: if(din==1'b1)
				begin
				nst<=S02;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b1;
				en<=1'b1;
				end
			else
				begin
				nst<=S00;
				dot<=1'b0;
				dash<=1'b0;
				ch_s<=1'b0;
				w_s<=1'b0;
				en<=1'b0;
				end
							
		default: begin
		          nst<=S00;
		          dot<=1'b0;
		          dash<=1'b0;
		          ch_s<=1'b0;
		          w_s<=1'b0;
		          en<=1'b0;
		          end
		endcase
	end

endmodule