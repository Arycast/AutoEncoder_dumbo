library verilog;
use verilog.vl_types.all;
entity rom is
    generic(
        ADDR_WIDTH      : integer := 4;
        DATA_WIDTH      : integer := 16;
        DEPTH           : integer := 16
    );
    port(
        clk             : in     vl_logic;
        write_en        : in     vl_logic;
        write_addr      : in     vl_logic_vector;
        write_data      : in     vl_logic_vector;
        read_addr_1     : in     vl_logic_vector;
        read_addr_2     : in     vl_logic_vector;
        read_data_1     : out    vl_logic_vector;
        read_data_2     : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
end rom;
