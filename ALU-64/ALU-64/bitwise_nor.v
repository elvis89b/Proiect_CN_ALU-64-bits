module bitwise_nor (
  input in_0,
  input in_1,
  output nor_
);

  assign nor_ = ~(in_0 | in_1);
  
endmodule