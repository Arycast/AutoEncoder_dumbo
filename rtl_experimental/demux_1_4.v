//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : demux_1_4
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module demux_1_4 (
    
   output reg [15:0] output_1, 
   output reg [15:0] output_2,
   output reg [15:0] output_3,
   output reg [15:0] output_4, 
   input [1:0] select,
   input [15:0] in
);

 always @(*) begin
case (select)
    2'b00 : output_1 = in;
    2'b01 : output_2 = in;
    2'b10 : output_3 = in;
    2'b11 : output_4 = in;

    
endcase
end

endmodule