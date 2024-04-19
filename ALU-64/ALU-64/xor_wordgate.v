module xor_wordgate #(parameter w = 64)(
  input [w-1:0]in_0,
  input [w-1:0]in_1,
  output [w-1:0]XOR
);

  generate
    genvar i;
    for(i = 0 ; i < w ; i = i + 1) begin: xor_gates
      bitwise_xor gate(.in_0(in_0[i]), .in_1(in_1[i]), .xor_(XOR[i]));
    end
  endgenerate
  
endmodule