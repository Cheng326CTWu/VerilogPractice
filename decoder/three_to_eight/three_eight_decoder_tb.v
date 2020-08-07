module three_eight_decoder_tb();
wire [7:0] tb_D;
reg tb_x, tb_y, tb_z;

three_eight_decoder DUT(.x(tb_x), .y(tb_y), .z(tb_z), .D(tb_D));

initial
begin
	tb_x = 1'b0;
	tb_y = 1'b0;
	tb_z = 1'b0;

	#50;
	tb_x = 1'b0;
	tb_y = 1'b0;
	tb_z = 1'b1;

	#50;
	tb_x = 1'b0;
	tb_y = 1'b1;
	tb_z = 1'b0;

	#50;
	tb_x = 1'b0;
	tb_y = 1'b1;
	tb_z = 1'b1;

	#50;
	tb_x = 1'b1;
	tb_y = 1'b0;
	tb_z = 1'b0;

	#50;
	tb_x = 1'b1;
	tb_y = 1'b0;
	tb_z = 1'b1;

	#50;
	tb_x = 1'b1;
	tb_y = 1'b1;
	tb_z = 1'b0;
	
	#50;
	tb_x = 1'b1;
	tb_y = 1'b1;
	tb_z = 1'b1; 
end
endmodule
