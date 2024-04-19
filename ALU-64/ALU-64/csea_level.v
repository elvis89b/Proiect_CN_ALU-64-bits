module csea_level (
  input [7:0]x,
  input [7:0]y,
  input previous_c_out,
  output [7:0]z,
  output next_c_out
);

  wire [7:0]z_0;
  wire [7:0]z_1;
  wire c_out_0;
  wire c_out_1;
  
  rca8 adder_0 (
    .x(x),
    .y(y),
    .c_in(1'b0),
    .z(z_0),
    .c_out(c_out_0)
  );
  
  rca8 adder_1 (
    .x(x),
    .y(y),
    .c_in(1'b1),
    .z(z_1),
    .c_out(c_out_1)
  );
  
  mux2to1 #(.w(8)) sum_mux (
    .in_0(z_0),
    .in_1(z_1),
    .sel(previous_c_out),
    .out(z)
  );
  
  mux2to1 #(.w(1)) carry_mux (
    .in_0(c_out_0),
    .in_1(c_out_1),
    .sel(previous_c_out),
    .out(next_c_out)
  );
  
endmodule