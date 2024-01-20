//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : demux_1_16
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module demux_1_16 (
    
   output reg [15:0] output_1, 
   output reg [15:0] output_2,
   output reg [15:0] output_3,
   output reg [15:0] output_4, 
   output reg [15:0] output_5,
   output reg [15:0] output_6,
   output reg [15:0] output_7, 
   output reg [15:0] output_8,
   output reg [15:0] output_9,
   output reg [15:0] output_10,
   output reg [15:0] output_11,
   output reg [15:0] output_12, 
   output reg [15:0] output_13,
   output reg [15:0] output_14,
   output reg [15:0] output_15, 
   output reg [15:0] output_16,
   input [3:0] select,
   input [15:0] in
);

 always @(*) begin
case (select)
    4'b0000 : output_1 = in;
    4'b0001 : output_2 = in;
    4'b0010 : output_3 = in;
    4'b0011 : output_4 = in;
    4'b0100 : output_5 = in;
    4'b0101 : output_6 = in;
    4'b0110 : output_7 = in;
    4'b0111 : output_8 = in;
    4'b1000 : output_9 = in;
    4'b1001 : output_10 = in;
    4'b1010 : output_11 = in;
    4'b1011 : output_12 = in;
    4'b1100 : output_13 = in;
    4'b1101 : output_14 = in;
    4'b1110 : output_15 = in;
    4'b1111 : output_16 = in;
    
endcase
end

endmodule