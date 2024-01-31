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
   input [3:0] select,
   output reg [15:0] out
);

always @(*) begin
	case (select)
		4'b0000 : out = input_1;
		4'b0001 : out = input_2;
		4'b0010 : out = input_3;
		4'b0011 : out = input_4;
		4'b0100 : out = input_5;
		4'b0101 : out = input_6;
		4'b0110 : out = input_7;
		4'b0111 : out = input_8;
		4'b1000 : out = input_9;
		4'b1001 : out = input_10;
		4'b1010 : out = input_11;
		4'b1011 : out = input_12;
		4'b1100 : out = input_13;
		4'b1101 : out = input_14;
		4'b1110 : out = input_15;
		4'b1111 : out = input_16;

	endcase
end
endmodule