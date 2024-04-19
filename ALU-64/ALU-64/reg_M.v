module reg_M #(parameter w = 64)(
  input clk,
  input rst_b,
  input c0,
  input [w-1:0]inbus,
  output reg [w-1:0]q
);

  initial begin
    q <= {w{1'b0}};
  end

  always@(posedge c0 or negedge rst_b) begin
    if(!rst_b)
      q <= 0;
    else if(c0)
      q <= inbus;
  end
    
endmodule