library verilog;
use verilog.vl_types.all;
entity CLA is
    port(
        ADD_1           : in     vl_logic_vector(15 downto 0);
        ADD_2           : in     vl_logic_vector(15 downto 0);
        C               : in     vl_logic;
        S               : out    vl_logic_vector(15 downto 0)
    );
end CLA;
