library verilog;
use verilog.vl_types.all;
entity not_wordgate is
    generic(
        w               : integer := 64
    );
    port(
        \in\            : in     vl_logic_vector;
        \NOT\           : out    vl_logic_vector
    );
end not_wordgate;
