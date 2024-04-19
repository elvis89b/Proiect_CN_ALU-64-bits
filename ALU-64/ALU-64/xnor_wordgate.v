module xnor_wordgate #(parameter w = 64)(
  input [w-1:0]in_0,
  input [w-1:0]in_1,
  output [w-1:0]XNOR
);

  generate
    genvar i;
    for(i = 0 ; i < w ; i = i + 1) begin: xnor_gates
      bitwise_xnor gate(.in_0(in_0[i]), .in_1(in_1[i]), .xnor_(XNOR[i]));
    end
  endgenerate
  
endmodule