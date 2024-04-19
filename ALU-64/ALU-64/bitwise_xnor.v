module bitwise_xnor (
  input in_0,
  input in_1,
  output xnor_
);

  assign xnor_ = ~(in_0 ^ in_1);
  
endmodule