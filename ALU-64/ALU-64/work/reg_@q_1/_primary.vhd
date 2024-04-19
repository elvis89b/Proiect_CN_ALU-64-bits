library verilog;
use verilog.vl_types.all;
entity reg_Q_1 is
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        c0              : in     vl_logic;
        c4              : in     vl_logic;
        Q_lsb           : in     vl_logic;
        q               : out    vl_logic
    );
end reg_Q_1;
