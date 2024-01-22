library verilog;
use verilog.vl_types.all;
entity sigmoid_lut is
    port(
        addr            : in     vl_logic_vector(15 downto 0);
        result          : out    vl_logic_vector(15 downto 0)
    );
end sigmoid_lut;
