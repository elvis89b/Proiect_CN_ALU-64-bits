module ml_csea_8 #(parameter w = 64)(
  input [w-1:0]x,
  input [w-1:0]y,
  input c_in,
  output [w-1:0]z
);

  generate
    wire [((w-1)/8 - 1):0]intern_carry;
    genvar i;
    for(i = 0 ; i < (w-1)/8 ; i = i + 1) begin: instances
      if(i == 0)
        rca8 adder( .x(x[7:0]), .y(y[7:0]), .c_in(c_in), .z(z[7:0]), .c_out(intern_carry[0]) );
      else if(i == (w-1)/8 - 1)
      begin
        csea_level ml_adder( .x(x[w-2:w-9]), .y(y[w-2:w-9]), .previous_c_out(intern_carry[(w-1)/8 - 2]), .z(z[w-2:w-9]), .next_c_out(intern_carry[(w-1)/8 - 1]) );
        fac adder( .x(x[w-1]), .y(y[w-1]), .c_in(intern_carry[(w-1)/8 - 1]), .z(z[w-1]), .c_out() );
      end
      else
        csea_level ml_adder( .x(x[8*i+7:8*i]), .y(y[8*i+7:8*i]), .previous_c_out(intern_carry[i-1]), .z(z[8*i+7:8*i]), .next_c_out(intern_carry[i]) );
    end
  endgenerate

endmodule