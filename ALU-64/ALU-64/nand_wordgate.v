module nand_wordgate #(parameter w = 64)(
  input [w-1:0]in_0,
  input [w-1:0]in_1,
  output [w-1:0]NAND
);

  generate
    genvar i;
    for(i = 0 ; i < w ; i = i + 1) begin: nand_gates
      bitwise_nand gate(.in_0(in_0[i]), .in_1(in_1[i]), .nand_(NAND[i]));
    end
  endgenerate
  
endmodule