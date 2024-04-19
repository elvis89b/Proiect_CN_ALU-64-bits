library verilog;
use verilog.vl_types.all;
entity nand_wordgate is
    generic(
        w               : integer := 64
    );
    port(
        in_0            : in     vl_logic_vector;
        in_1            : in     vl_logic_vector;
        \NAND\          : out    vl_logic_vector
    );
end nand_wordgate;
