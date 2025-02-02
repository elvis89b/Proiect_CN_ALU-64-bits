module reg_A #(parameter w = 64)(
  input clk,
  input rst_b,
  input c0,
  input c2,
  input c10,
  input c5,
  input c8,
  input Q_msb,
  input [w-1:0]sum,
  output reg A_lsb,
  output reg A_msb,
  output reg [w-1:0]outbus,
  output reg [w-1:0]q
);
  
  initial begin
    A_lsb <= 1'b0;
    A_msb <= 1'b0;
    q <= {w{1'b0}};
  end

  always@(posedge clk or negedge rst_b) begin
    if(!rst_b) 
      q <= 0;
    else if(c0)
      q <= 0;
    else if(c2)
      q <= sum;
    else if(c10)
    begin
      A_lsb <= q[0];
      A_msb <= q[w-1];
      q <= {q[w-1], q[w-1:1]};
    end
    else if(c8)
    begin
      q <= {q[w-2:0], Q_msb};
    end
  end

  always @(*) begin
    if(c5) 
      outbus <= q;
    else 
      outbus <= {w{1'bz}};
  end

endmodule