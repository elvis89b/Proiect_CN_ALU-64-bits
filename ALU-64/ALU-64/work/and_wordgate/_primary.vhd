library verilog;
use verilog.vl_types.all;
entity and_wordgate is
    generic(
        w               : integer := 64
    );
    port(
        in_0            : in     vl_logic_vector;
        in_1            : in     vl_logic_vector;
        \AND\           : out    vl_logic_vector
    );
end and_wordgate;
