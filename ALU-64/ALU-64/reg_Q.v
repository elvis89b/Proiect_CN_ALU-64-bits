module reg_Q #(parameter w = 64)(
  input clk,
  input rst_b,
  input c1,
  input c10,
  input c6,
  input c8,
  input c9,
  input [w-1:0]inbus,
  input A_lsb,
  output reg Q_lsb,
  output reg Q_msb,
  output reg [w-1:0]outbus,
  output reg [w-1:0]q
);

  //reg [w-1:0]q;

  initial begin
    Q_lsb <= 0;
    Q_msb <= 0;
    q <= {w{1'b0}};
  end

  always @(posedge clk or negedge rst_b) begin
    if(!rst_b)
      q <= 0;
    else if (c1)
      q <= inbus;
    else if(c10)
    begin
      Q_lsb <= q[0];
      q <= {A_lsb, q[w-1:1]};
    end
    else if(c8)
    begin
      Q_msb <= q[w-1];
      q <= {q[w-2:0], 1'b0};
    end
    else if(c9)
    begin
      q[0] <= 1;
    end
  end

  always @(*) begin
    if(c6) 
      outbus <= q;
    else 
      outbus <= {w{1'bz}};
  end

endmodule