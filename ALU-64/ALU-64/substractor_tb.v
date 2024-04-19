module substractor_tb;
  reg signed [64:0]x;
  reg signed [64:0]y;
  wire signed [127:0]z;
  
  substractor uut (
    .x(x),
    .y(y),
    .z(z)
  );
  
  integer i;
  initial begin
    x = {$random(), $random()};
    x[64] = x[63];
    y = {$random(), $random()};
    y[64] = y[63];
    $display("Time\t\tx\t\t\ty\t\t\t\t\t    z");
    $monitor("%0t\t%d\t%d\t\t%d", $time, x, y, z);
    for(i = 1 ; i < 25 ; i = i + 1)
    begin
      #10
      x = {$random(), $random()};
      x[64] = x[63];
      y = {$random(), $random()};
      y[64] = y[63];
    end
  end
  
endmodule