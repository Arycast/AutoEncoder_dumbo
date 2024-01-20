//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : ReLu_diff
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

// Input and Output is Unsigned

module ReLu #(
   parameter NBITS = 16
) (
   input wire [NBITS-1:0] val,
   output wire [NBITS-1:0] result
);
   // There are 2 options for the result with The first one using conditional
   // Using conditional effects using more complex hardware
   // other factors have to be tested later
   
   // assign result = (val[NBITS-1] == 1'b1) ? {NBITS{1'b0}} : 16'd256;
   assign result = {NBITS{~val[NBITS-1]}} & 256;
endmodule