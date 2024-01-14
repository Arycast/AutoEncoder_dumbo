//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : ReLu_diff
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

// Input and Output is Unsigned

module ReLu #(
   parameters NBITS = 16
) (
   input wire [NBITS-1:0] val,
   output reg [NBITS-1:0] result
);
   assign result = ~val[NBITS-1] & 0_0000001_00000000;
endmodule