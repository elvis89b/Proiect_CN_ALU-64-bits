library verilog;
use verilog.vl_types.all;
entity mux2to1 is
    generic(
        w               : integer := 1
    );
    port(
        in_0            : in     vl_logic_vector;
        in_1            : in     vl_logic_vector;
        sel             : in     vl_logic;
        \out\           : out    vl_logic_vector
    );
end mux2to1;
