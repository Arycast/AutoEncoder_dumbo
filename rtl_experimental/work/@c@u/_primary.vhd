library verilog;
use verilog.vl_types.all;
entity CU is
    generic(
        OP_WIDTH        : integer := 4
    );
    port(
        opcode          : in     vl_logic_vector;
        en_writeMem     : out    vl_logic;
        en_alu          : out    vl_logic;
        en_selMem       : out    vl_logic;
        dest_control    : out    vl_logic_vector(1 downto 0);
        op_sel          : out    vl_logic_vector(1 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of OP_WIDTH : constant is 1;
end CU;
