module reg_Q_1(
  input clk,
  input rst_b,
  input c0,
  input c4,
  input Q_lsb,
  output reg q
);

  always @(posedge clk or negedge rst_b) begin
    if(!rst_b)
      q <= 0;
    else if(c0)
      q <= 0;
    else if(c4)
      q <= Q_lsb;
  end
  
endmodule