module rca8 (
  input [7:0]x,
  input [7:0]y,
  input c_in,
  output [7:0]z,
  output c_out
);
  
  generate
    wire intern_carry[6:0];
    genvar i;
    for(i = 0 ; i < 8 ; i = i + 1) begin: instances
      if(i == 0)
        fac inst(.x(x[0]), .y(y[0]), .c_in(c_in), .z(z[0]), .c_out(intern_carry[0]));
      else if(i == 7)
        fac inst(.x(x[7]), .y(y[7]), .c_in(intern_carry[6]), .z(z[7]), .c_out(c_out));
      else
        fac inst(.x(x[i]), .y(y[i]), .c_in(intern_carry[i-1]), .z(z[i]), .c_out(intern_carry[i]));
    end
  endgenerate
  
endmodule