module bitwise_nand_tb;
  reg in_0;
  reg in_1;
  wire nand_;
  
  bitwise_nand uut (
    .in_0(in_0),
    .in_1(in_1),
    .nand_(nand_)
  );
  
  integer i;
  initial begin
    {in_0, in_1} = 0;
    $display("Time\tin_0\tin_1\t\tnand");
    $monitor("%0t\t %b\t %b\t\t %b", $time, in_0, in_1, nand_);
    for(i = 1 ; i < 4 ; i = i + 1)
      #10 {in_0, in_1} = i;
  end
  
endmodule
  