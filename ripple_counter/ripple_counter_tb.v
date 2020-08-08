`timescale 1ns/1ns

module ripple_counter_tb();
wire [3:0] tb_A;
reg clk, rst;

ripple_counter DUT(.clk(clk), .rst(rst), .A(tb_A));

initial
begin
	clk = 1'b0;
	forever
	begin
		#100;
		clk = ~clk;
	end
end

initial
begin
	rst = 1'b1;
	#200;
	rst = 1'b0;
	#800;
	rst = 1'b1;
	#3000;
end
endmodule
