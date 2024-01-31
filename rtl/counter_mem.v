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

reg [16:0]training_count;
initial training_count = 16'd0;
initial data_out = 16'd0;

always @ (posedge clk) begin
   
	if (training_count != 16'd10000) begin
		if (data_in == 16'd332) begin
			data_out <= 16'd0;
         training_count = training_count+16'd1;
      end
		else
         data_out <= data_in;
	end
end
endmodule