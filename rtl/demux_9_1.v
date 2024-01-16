//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : demux_9_1
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module demux_9_1 (
    
   output reg [15:0] output_1, 
   output reg [15:0] output_2,
   output reg [15:0] output_3,
   output reg [15:0] output_4, 
   output reg [15:0] output_5,
   output reg [15:0] output_6,
   output reg [15:0] output_7, 
   output reg [15:0] output_8,
   output reg [15:0] output_9,
   input [3:0] select,
   input [15:0] in
);

 always @(*) begin
case (select)
    5'b0000 : output_1 = in;
    5'b0001 : output_2 = in;
    5'b0010 : output_3 = in;
    5'b0011 : output_4 = in;
    5'b0100 : output_5 = in;
    5'b0101 : output_6 = in;
    5'b0110 : output_7 = in;
    5'b0111 : output_8 = in;
    5'b1000 : output_9 = in;
endcase
end

endmodule