library verilog;
use verilog.vl_types.all;
entity mux16to1 is
    generic(
        w               : integer := 64
    );
    port(
        in_0            : in     vl_logic_vector;
        in_1            : in     vl_logic_vector;
        in_2            : in     vl_logic_vector;
        in_3            : in     vl_logic_vector;
        in_4            : in     vl_logic_vector;
        in_5            : in     vl_logic_vector;
        in_6            : in     vl_logic_vector;
        in_7            : in     vl_logic_vector;
        in_8            : in     vl_logic_vector;
        in_9            : in     vl_logic_vector;
        in_10           : in     vl_logic_vector;
        in_11           : in     vl_logic_vector;
        in_12           : in     vl_logic_vector;
        in_13           : in     vl_logic_vector;
        in_14           : in     vl_logic_vector;
        in_15           : in     vl_logic_vector;
        sel             : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector
    );
end mux16to1;
