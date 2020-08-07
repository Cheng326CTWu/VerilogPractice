module eight_to_three_encoder_tb();
wire tb_x, tb_y, tb_z;
reg [7:0] tb_D;

eight_to_three_encoder DUT(.D(tb_D), .x(tb_x), .y(tb_y), .z(tb_z));

initial
begin
	tb_D = 8'b10000000;

	#50;
	tb_D = 8'b01000000;

	#50;
	tb_D = 8'b00100000;

	#50;
	tb_D = 8'b00010000;

	#50;
	tb_D = 8'b00001000;

	#50;
	tb_D = 8'b00000100;

	#50;
	tb_D = 8'b00000010;

	#50;
	tb_D = 8'b00000001;
end
endmodule
