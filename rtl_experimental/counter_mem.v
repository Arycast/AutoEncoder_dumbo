//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : counter mem
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module counter_mem (
   input wire [15:0]  data_in,
   output reg [15:0]  data_out,
   input wire        clk
);
initial data_out = 16'd0;
   always @ (posedge clk) begin
        data_out <= data_in;
   end
   
endmodule