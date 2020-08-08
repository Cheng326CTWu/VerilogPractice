`timescale 1ns/1ns

module shift_register_tb();
wire tb_SO;
reg clk, tb_SI;

shift_register DUT(.clk(clk), .SI(tb_SI), .SO(tb_SO));

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
	tb_SI = 1'b1;
	#200;
	tb_SI = 1'b0;
	#800;
end
endmodule
