library verilog;
use verilog.vl_types.all;
entity ReLu is
    generic(
        NBITS           : integer := 16
    );
    port(
        val             : in     vl_logic_vector;
        result          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NBITS : constant is 1;
end ReLu;
