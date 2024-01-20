//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : ALU
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module mult (
    
   input [15:0] Operand_1, 
   input [15:0] Operand_2,
   output [15:0] result
);

wire [31:0]temp;
assign temp = Operand_1[15:0]*Operand_2[15:0];
assign result[15] = Operand_1[15]^Operand_2[15];
assign result= temp[23:8];

endmodule