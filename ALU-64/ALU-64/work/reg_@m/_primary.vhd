library verilog;
use verilog.vl_types.all;
entity reg_M is
    generic(
        w               : integer := 64
    );
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        c0              : in     vl_logic;
        inbus           : in     vl_logic_vector;
        q               : out    vl_logic_vector
    );
end reg_M;
