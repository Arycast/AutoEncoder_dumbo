library verilog;
use verilog.vl_types.all;
entity Instrcut_mem is
    generic(
        ADDR_WIDTH      : integer := 4;
        DATA_WIDTH      : integer := 16;
        DEPTH           : integer := 32
    );
    port(
        clk             : in     vl_logic;
        counter         : in     vl_logic_vector(4 downto 0);
        instructCode    : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
end Instrcut_mem;
