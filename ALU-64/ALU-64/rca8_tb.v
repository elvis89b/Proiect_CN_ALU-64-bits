module rca8_tb;
  reg [7:0]x;
  reg [7:0]y;
  reg c_in;
  wire [7:0]z;
  wire c_out;
  
  rca8 uut (
    .x(x),
    .y(y),
    .c_in(c_in),
    .z(z),
    .c_out(c_out)
  );
  
  integer i;
  initial begin
    x = $urandom_range(0, 255);
    y = $urandom_range(0, 255);
    c_in = $urandom_range(0, 1);
    $display("Time\tx\ty\tc_in\t\tz\tc_out(overflow)\t\tExtended Sum");
    $monitor("%0t\t%d\t%d\t %b\t\t%d\t  %b\t\t\t%d", $time, x, y, c_in, z, c_out, {c_out, z});
    for(i = 1 ; i < 50 ; i = i + 1)
    begin
      #10
      x = $urandom_range(0, 255);
      y = $urandom_range(0, 255);
      c_in = $urandom_range(0, 1);
    end
  end
  
endmodule