library verilog;
use verilog.vl_types.all;
entity ml_csea_8 is
    generic(
        w               : integer := 64
    );
    port(
        x               : in     vl_logic_vector;
        y               : in     vl_logic_vector;
        c_in            : in     vl_logic;
        z               : out    vl_logic_vector
    );
end ml_csea_8;
