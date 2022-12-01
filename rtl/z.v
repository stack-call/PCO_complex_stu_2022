/*标志寄存器*/
module z(din,clk,rst, zload,dout);
	input [7:0] din;
	input clk, rst, zload;
	output reg dout;

	always @(posedge clk or negedge rst) begin
		 if (rst==0)
			  dout <= 0;
		 else if (zload)
		 begin
			  if(din == 8'b00000000)
					dout <= 1;
			  else dout <= 0;
		 end
	end
endmodule