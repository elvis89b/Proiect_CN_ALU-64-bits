module sh_reg #(parameter w = 64, parameter d = 1)(
  input clk,
  input rst_b,
  input load,
  input sh,
  input [2:0]sh_mode,
  input [d-1:0]sh_in,
  input [w-1:0]in,
  output reg [w-1:0]q
);

  reg [w-1:0]qq;

  initial begin
    qq = 0;
  end
  
  always @(posedge clk) begin
    if(load)
      qq = in;
    if(sh)
      case(sh_mode)
        3'b000: qq = {qq[w-1-d:0], {d{1'b0}}}; // logic left shift
        3'b001: qq = {{d{1'b0}}, qq[w-1:d]}; // logic right shift
        3'b010: qq = {qq[w-1-d:0], {d{1'b0}}}; // arithmetic left shift
        3'b011: qq = {{d{qq[w-1]}}, qq[w-1:d]}; // arithmetic right shift
        3'b100: qq = {qq[w-1-d:0], qq[w-1:w-d]}; // left rotate
        3'b101: qq = {qq[d-1:0], qq[w-1:d]}; // right rotate
        3'b110: qq = {qq[w-1-d:0], sh_in}; // left shift sh_in
        3'b111: qq = {sh_in, qq[w-1:d]}; // right shift sh_in
      endcase
  end
  
  always @(posedge clk or negedge rst_b) begin
    if(!rst_b)
      q <= {w{1'b0}};
    else
      q <= qq;
  end

endmodule