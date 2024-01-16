//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : mux_9_1
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module mux_3_1 (
    
   input [15:0] input_1, 
   input [15:0] input_2,
   input [15:0] input_3,
   input [15:0] input_4, 
   input [15:0] input_5,
   input [15:0] input_6,
   input [15:0] input_7, 
   input [15:0] input_8,
   input [15:0] input_9,
   input [3:0] select,
   output reg [15:0] out
);

 always @(*) begin
case (select)
    5'b0000 : out = input_1;
    5'b0001 : out = input_2;
    5'b0010 : out = input_3;
    5'b0011 : out = input_4;
    5'b0100 : out = input_5;
    5'b0101 : out = input_6;
    5'b0110 : out = input_7;
    5'b0111 : out = input_8;
    5'b1000 : out = input_9;
endcase
end

endmodule