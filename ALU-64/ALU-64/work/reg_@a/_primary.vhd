library verilog;
use verilog.vl_types.all;
entity reg_A is
    generic(
        w               : integer := 64
    );
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        c0              : in     vl_logic;
        c2              : in     vl_logic;
        c10             : in     vl_logic;
        c5              : in     vl_logic;
        c8              : in     vl_logic;
        Q_msb           : in     vl_logic;
        sum             : in     vl_logic_vector;
        A_lsb           : out    vl_logic;
        A_msb           : out    vl_logic;
        outbus          : out    vl_logic_vector;
        q               : out    vl_logic_vector
    );
end reg_A;
