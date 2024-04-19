module rotl (
  input [127:0]in,
  output [127:0]out
);

  assign out = {in[126:0], in[127]};
  
endmodule