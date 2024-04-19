library verilog;
use verilog.vl_types.all;
entity reg_Q is
    generic(
        w               : integer := 64
    );
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        c1              : in     vl_logic;
        c10             : in     vl_logic;
        c6              : in     vl_logic;
        c8              : in     vl_logic;
        c9              : in     vl_logic;
        inbus           : in     vl_logic_vector;
        A_lsb           : in     vl_logic;
        Q_lsb           : out    vl_logic;
        Q_msb           : out    vl_logic;
        outbus          : out    vl_logic_vector;
        q               : out    vl_logic_vector
    );
end reg_Q;
