//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : ReLu
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

// Input and Output is Unsigned

module ReLu #(
   parameters NBITS = 16
) (
   input wire [NBITS-1:0] val,
   output reg [NBITS-1:0] result
);
   assign result = ~val[NBITS-1] & val[NBITS-2:0];
endmodule