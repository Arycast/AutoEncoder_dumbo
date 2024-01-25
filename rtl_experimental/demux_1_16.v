//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : demux_1_16
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module demux_1_16 (
    
   output reg [15:0] en_out,
   input [3:0]       select,
   input             en_in         
);

always @(*) begin
    case (select)
        0   : en_out = {en_in,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
        1   : en_out = {1'b0,en_in,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
        2   : en_out = {1'b0,1'b0,en_in,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
        3   : en_out = {1'b0,1'b0,1'b0,en_in,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
        4   : en_out = {1'b0,1'b0,1'b0,1'b0,en_in,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
        5   : en_out = {1'b0,1'b0,1'b0,1'b0,1'b0,en_in,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
        6   : en_out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,en_in,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
        7   : en_out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,en_in,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
        8   : en_out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,en_in,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
        9   : en_out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,en_in,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0};
        10  : en_out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,en_in,1'b0,1'b0,1'b0,1'b0,1'b0};
        11  : en_out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,en_in,1'b0,1'b0,1'b0,1'b0};
        12  : en_out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,en_in,1'b0,1'b0,1'b0};
        13  : en_out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,en_in,1'b0,1'b0};
        14  : en_out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,en_in,1'b0};
        15  : en_out = {1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,en_in};
    endcase
end

endmodule