//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : sigmoid_lut_tb
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module sigmoid_lut_tb;

   reg [15:0] value;
   wire [15:0] out;

   integer i;

   // Modules Instantiation

   sigmoid_lut sigmoid_lut_0 (
      .addr    (value),
      .result  (out)
   );

   initial begin
      $display("Testing Sigmoid Lookup Table");
      value = 16'd0;
      #1;
      value = 16'd0;

      for (i = 63744; i<64296; i=i+1) begin
         value = i;
         #1;
         $display("Input Value (Binary):     %d", value);
         $display("Output Value (Binary):    %d", out);
      end
   end
   
endmodule