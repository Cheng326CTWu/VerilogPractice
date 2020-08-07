// timescale compiler directive -> `timescale <time unit>/<time precision>
`timescale 1ns/1ns

module D_master_slave_tb();
wire tb_Q;
reg tb_D;
reg clk;

D_master_slave DUT(.D(tb_D), .clk(clk), .Q(tb_Q));

initial
begin
	clk = 1'b0;
	forever
	begin
		#100
		clk = ~clk;
	end
end

initial
begin
	tb_D = 1'b0;
	
	#200;
	tb_D = 1'b1;

	#200;
	tb_D = 1'b0;

	#200;
	tb_D = 1'b1;
end
endmodule
