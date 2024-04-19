module bitwise_nand (
  input in_0,
  input in_1,
  output nand_
);

  assign nand_ = ~(in_0 & in_1);
  
endmodule