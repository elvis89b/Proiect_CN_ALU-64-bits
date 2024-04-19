library verilog;
use verilog.vl_types.all;
entity mux8to1 is
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
        sel             : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector
    );
end mux8to1;
