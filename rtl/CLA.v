//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : CLA
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////
`include "four_bit_adder.v"
module CLA (
  input [15:0] ADD_1,  // Operand 1
  input [15:0] ADD_2,  // Operand 2
  input C, //carry in
  output [15:0] S // Result
);

wire [3:0] Prop;
wire [3:0]Gen;
wire [3:0]Ci;

four_bit_adder Adder_0 (ADD_1[3:0],ADD_2[3:0],S[3:0],Gen[0],C,Ci[0],Prop[0]);
four_bit_adder Adder_1 (ADD_1[7:4],ADD_2[7:4],S[7:4],Gen[1],Ci[0],Ci[1],Prop[1]);
four_bit_adder Adder_2 (ADD_1[11:8],ADD_2[11:8],S[11:8],Gen[2],Ci[1],Ci[2],Prop[2]);
four_bit_adder Adder_3 (ADD_1[15:12],ADD_2[15:12],S[15:12],Gen[3],Ci[2],Ci[3],Prop[3]);


endmodule