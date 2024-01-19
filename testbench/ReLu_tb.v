//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : sigmoid_lut_tb
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module ReLu_tb;

   reg [15:0] value;
   wire [15:0] out;

   integer i;

   // Modules Instantiation

   ReLu #(.NBITS(16)) ReLu_0 (
      .val    (value),
      .result  (out)
   );

   initial begin
      $display("Testing ReLu");

      value = 16'd63744;
      #1
      $display("Input Value (Binary):     %16b", value);
      $display("Output Value (Binary):    %16b", out);

      value = 16'd768;
      #1
      $display("Input Value (Binary):     %16b", value);
      $display("Output Value (Binary):    %16b", out);

      $finish;
   end
   
endmodule