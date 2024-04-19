module fac_tb;
  reg x;
  reg y;
  reg c_in;
  wire z;
  wire c_out;
  
  fac uut(
    .x(x),
    .y(y),
    .c_in(c_in),
    .z(z),
    .c_out(c_out)
  );
  
  integer i;
  initial begin
    {x, y, c_in} = 0;
    $display("Time\tx\ty\tc_in\t\tz\tc_out");
    $monitor("%0t\t%b\t%b\t %b\t\t%b\t  %b", $time, x, y, c_in, z, c_out);
    for(i = 1 ; i < 8 ; i = i + 1)
      #10 {x, y, c_in} = i;
  end
  
endmodule