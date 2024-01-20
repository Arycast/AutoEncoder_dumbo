`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : mem_tb
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module sel_mem_tb;

   /****************************************************************************
    * Signals
    ***************************************************************************/

   reg         clk;
   reg         en;
   reg [3:0]   in;
   wire  [3:0] out;

   integer i;

   /****************************************************************************
    * Generate Clock Signals
    ***************************************************************************/

   // 250 MHz clock
   initial clk = 1'b1;
   always #2 clk = ~clk;

   // Modules Instantiation

   sel_mem sel_mem_0 (
      .clk        (clk),
      .en         (en),
      .data_in    (in),
      .data_out   (out)
   );

   initial begin
      $dumpfile("sel_mem.vcd");
      $dumpvars(0, sel_mem_tb);
      in = 4'd9;
      
      repeat (2) @(posedge clk);      
      en = 1'b1;

      repeat (2) @(posedge clk);
      en = 1'b0;

      repeat (2) @(posedge clk);

      $finish;
   end
   
endmodule