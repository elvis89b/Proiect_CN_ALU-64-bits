module bitwise_not_tb;
  reg in;
  wire not_;
  
  bitwise_not uut (
    .in(in),
    .not_(not_)
  );
  
  integer i;
  initial begin
    in = 0;
    $display("Time\tin\t\tnot");
    $monitor("%0t\t %b\t\t %b", $time, in, not_);
    for(i = 1 ; i < 2 ; i = i + 1)
      #10 in = i;
  end
  
endmodule