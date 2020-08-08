`timescale 1ns/1ns

module four_bit_register_tb();
wire [3:0] tb_A;
reg [3:0] tb_I;
reg clk, rst;

four_bit_register DUT(.I(tb_I), .A(tb_A), .clk(clk), .rst(rst));

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
	tb_I = 4'b1011;

	#200;
	tb_I = 4'b1001;
end
endmodule
