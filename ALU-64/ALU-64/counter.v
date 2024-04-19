module counter (
  input clk,
  input rst_b,
  input c0,
  input c4,
  output count63
  //output reg [5:0]count
);

  reg [5:0]count;
  
  always@(posedge clk or negedge rst_b) begin
    if(!rst_b) 
      count <= 0;
    else if(c0)
      count <= 0;
    else if(c4)
      count <= count + 1;
  end

  assign count63 = count[0] & count[1] & count[2] & count[3] & count[4] & count[5];

endmodule