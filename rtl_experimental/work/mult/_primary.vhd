library verilog;
use verilog.vl_types.all;
entity mult is
    port(
        Operand_1       : in     vl_logic_vector(15 downto 0);
        Operand_2       : in     vl_logic_vector(15 downto 0);
        result          : out    vl_logic_vector(15 downto 0)
    );
end mult;
