module substractor (
  input [64:0]x,
  input [64:0]y,
  output [127:0]z
);

  wire [64:0]not_y;
  
  not_wordgate #(.w(65)) uut_not (
    .in(y),
    .NOT(not_y)
  );
  
  ml_csea_8 uut_adder (
    .x(x),
    .y(not_y),
    .c_in(1'b1),
    .z(z)
  );
  
endmodule