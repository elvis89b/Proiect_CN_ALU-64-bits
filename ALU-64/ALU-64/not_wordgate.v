module not_wordgate #(parameter w = 64)(
  input [w-1:0]in,
  output [w-1:0]NOT
);

  generate
    genvar i;
    for(i = 0 ; i < w ; i = i + 1) begin: not_gates
      bitwise_not gate(.in(in[i]), .not_(NOT[i]));
    end
  endgenerate
  
endmodule