//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : mux_16_1
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module mux_16_1 (
    
   input [15:0] input_1, 
   input [15:0] input_2,
   input [15:0] input_3,
   input [15:0] input_4, 
   input [15:0] input_5,
   input [15:0] input_6,
   input [15:0] input_7, 
   input [15:0] input_8,
   input [15:0] input_9,
   input [15:0] input_10, 
   input [15:0] input_11,
   input [15:0] input_12,
   input [15:0] input_13, 
   input [15:0] input_14,
   input [15:0] input_15,
   input [15:0] input_16, 
   input [4:0] select,
   output reg [15:0] out
);

 always @(*) begin
case (select)
    5'b00000 : out = input_1;
    5'b00001 : out = input_2;
    5'b00010 : out = input_3;
    5'b00011 : out = input_4;
    5'b00100 : out = input_5;
    5'b00101 : out = input_6;
    5'b00110 : out = input_7;
    5'b00111 : out = input_8;
    5'b01000 : out = input_9;
    5'b01001 : out = input_10;
    5'b01010 : out = input_11;
    5'b01011 : out = input_12;
    5'b01100 : out = input_13;
    5'b01101 : out = input_14;
    5'b01110 : out = input_15;
    5'b01111 : out = input_16;

endcase
end

endmodule