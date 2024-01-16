library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        Operand_1       : in     vl_logic_vector(15 downto 0);
        Operand_2       : in     vl_logic_vector(15 downto 0);
        enable_ALU      : in     vl_logic;
        op_select       : in     vl_logic_vector(1 downto 0);
        result          : out    vl_logic_vector(15 downto 0)
    );
end ALU;
