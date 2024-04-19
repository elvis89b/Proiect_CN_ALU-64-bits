module sll (
  input [127:0]in,
  output [127:0]out
);

  assign out = {in[126:0], 1'b0};
  
endmodule