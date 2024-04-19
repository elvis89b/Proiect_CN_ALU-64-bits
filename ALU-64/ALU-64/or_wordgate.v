module or_wordgate #(parameter w = 64)(
  input [w-1:0]in_0,
  input [w-1:0]in_1,
  output [w-1:0]OR
);

  generate
    genvar i;
    for(i = 0 ; i < w ; i = i + 1) begin: or_gates
      bitwise_or gate(.in_0(in_0[i]), .in_1(in_1[i]), .or_(OR[i]));
    end
  endgenerate
  
endmodule