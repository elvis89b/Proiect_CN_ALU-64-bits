module rotr (
  input [127:0]in,
  output [127:0]out
);

  assign out = {in[0], in[127:1]};
  
endmodule