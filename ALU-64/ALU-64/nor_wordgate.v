module nor_wordgate #(parameter w = 64)(
  input [w-1:0]in_0,
  input [w-1:0]in_1,
  output [w-1:0]NOR
);

  generate
    genvar i;
    for(i = 0 ; i < w ; i = i + 1) begin: nor_gates
      bitwise_nor gate(.in_0(in_0[i]), .in_1(in_1[i]), .nor_(NOR[i]));
    end
  endgenerate
  
endmodule