module bitwise_xnor_tb;
  reg in_0;
  reg in_1;
  wire xnor_;
  
  bitwise_xnor uut (
    .in_0(in_0),
    .in_1(in_1),
    .xnor_(xnor_)
  );
  
  integer i;
  initial begin
    {in_0, in_1} = 0;
    $display("Time\tin_0\tin_1\t\txnor");
    $monitor("%0t\t %b\t %b\t\t %b", $time, in_0, in_1, xnor_);
    for(i = 1 ; i < 4 ; i = i + 1)
      #10 {in_0, in_1} = i;
  end
  
endmodule