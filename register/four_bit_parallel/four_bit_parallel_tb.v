`timescale 1ns/1ns

module four_bit_register_parallel_tb();
wire [3:0] tb_A;
reg [3:0] tb_I;
reg clk, load;

four_bit_register_parallel DUT(.A(tb_A), .I(tb_I), .clk(clk), .load(load));

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
	tb_I = 4'b1010;
	load = 1'b1;

	#200;
	load = 1'b0;
	tb_I = 4'b1100;

	#200;
	load = 1'b1;

	#200;
	load = 1'b0;
end
endmodule
