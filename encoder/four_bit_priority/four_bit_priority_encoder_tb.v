module four_bit_priority_encoder_tb();
wire tb_x, tb_y, tb_V;
reg [3:0] tb_D;

four_bit_priority_encoder DUT(.x(tb_x), .y(tb_y), .V(tb_V), .D(tb_D));

initial
begin
	tb_D = 4'b0000;

	#50;
	tb_D = 4'b1000;

	#50;
	tb_D = 4'b0100;

	#50;
	tb_D = 4'b0010;

	#50;
	tb_D = 4'b0001;

	#50;
	tb_D = 4'b1010;
end
endmodule
