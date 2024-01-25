//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : mux_2_1_34 (34 bit)
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module mux_2_1_34 (
    
   input [33:0] input_1, 
   input [33:0] input_2,
   input  select,
   output reg [33:0] out
);

 always @(*) begin
case (select)
    1'b0 : out = input_1;
    1'b1 : out = input_2;
endcase
end

endmodule