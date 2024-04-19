module shift_rotate_unit_tb;
  reg [127:0]in;
  reg [2:0]sel;
  wire [127:0]out;
  
  shift_rotate_unit uut (
    .in(in),
    .sel(sel),
    .out(out)
  );
  
  integer i;
  initial begin
    in = {4{$random()}};
    sel = $urandom_range(0, 7);
    $display("Time\tin\tsel\tout");
    $monitor("%0t\t%b\t%b\t%b", $time, in, sel, out);
    for(i = 1 ; i < 10 ; i = i + 1)
    begin
      #10
      in = {4{$random()}};
      sel = $urandom_range(0, 7);
    end
  end
  
endmodule