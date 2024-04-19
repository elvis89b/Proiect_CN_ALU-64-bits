module csea_level_tb;
  reg [7:0]x;
  reg [7:0]y;
  reg previous_c_out;
  wire [7:0]z;
  wire next_c_out;
  
  csea_level uut (
    .x(x),
    .y(y),
    .previous_c_out(previous_c_out),
    .z(z),
    .next_c_out(next_c_out)
  );
  
  integer i;
  initial begin
    x = $urandom_range(0, 255);
    y = $urandom_range(0, 255);
    previous_c_out = $urandom_range(0, 1);
    $display("Time\tx\ty\tsel\t\tz\tc_out(overflow)\t\tExtended Sum");
    $monitor("%0t\t%d\t%d\t %b\t\t%d\t  %b\t\t\t%d", $time, x, y, previous_c_out, z, next_c_out, {next_c_out, z});
    for(i = 1 ; i < 50 ; i = i +1)
    begin
      #10
      x = $urandom_range(0, 255);
      y = $urandom_range(0, 255);
      previous_c_out = $urandom_range(0, 1);
    end
  end
  
endmodule