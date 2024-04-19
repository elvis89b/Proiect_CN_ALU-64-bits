module srl (
  input [127:0]in,
  output [127:0]out
);

  assign out = {1'b0, in[127:1]};
  
endmodule