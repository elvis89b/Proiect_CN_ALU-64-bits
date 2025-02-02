module and_wordgate #(parameter w = 64)(
  input [w-1:0]in_0,
  input [w-1:0]in_1,
  output [w-1:0]AND
);

  generate
    genvar i;
    for(i = 0 ; i < w ; i = i + 1) begin: and_gates
      bitwise_and gate(.in_0(in_0[i]), .in_1(in_1[i]), .and_(AND[i]));
    end
  endgenerate
  
endmodule