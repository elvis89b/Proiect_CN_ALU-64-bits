module sla_tb;
  reg signed [127:0]in;
  wire signed [127:0]out;
  
  sla uut (
    .in(in),
    .out(out)
  );
  
  integer i;
  initial begin
    in = {4{$random()}};
    $display("Time\tin\tout");
    $monitor("%0t\t%b\t%b", $time, in, out);
    for(i = 1 ; i < 10 ; i = i + 1)
      #10 in = {4{$random()}};
  end
  
endmodule