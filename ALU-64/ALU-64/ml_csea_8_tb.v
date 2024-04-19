module ml_csea_8_tb;
  reg signed [64:0]x;
  reg signed [64:0]y;
  reg c_in;
  wire signed [64:0]z;
  
  ml_csea_8 uut (
    .x(x),
    .y(y),
    .c_in(c_in),
    .z(z)
  );
  
  integer i;
  initial begin
    x = {$random(), $random()};
    x[64] = x[63];
    y = {$random(), $random()};
    y[64] = y[63];
    c_in = $urandom_range(0, 1);
    $display("Time\t\tx\t\t\ty\t\tc_in\t\t\tz");
    $monitor("%0t\t%d\t%d\t%b\t\t%d", $time, x, y, c_in, z);
    for(i = 1 ; i < 25 ; i = i + 1)
    begin
      #10
      x = {$random(), $random()};
      x[64] = x[63];
      y = {$random(), $random()};
      y[64] = y[63];
      c_in = $urandom_range(0, 1);
    end
  end
  
endmodule