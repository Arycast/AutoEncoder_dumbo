//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : sigmoid_lut
// Project Name: Autoencoder
/////////////////////////////////////////////////////////////////////////////////

module sigmoid_lut {
   input wire [15:0] addr,
   output reg [15:0] addr
};

   always @(*) begin
      
      case (addr)
         63744    :	result = 16'd0
         63776    :	result = 16'd0
         63808    :	result = 16'd0
         63840    :	result = 16'd0
         63872    :	result = 16'd0
         63904    :	result = 16'd0
         63936    :	result = 16'd0
         63968    :	result = 16'd0
         64000    :	result = 16'd0
         64032    :	result = 16'd0
         64064    :	result = 16'd0
         64096    :	result = 16'd1
         64128    :	result = 16'd1
         64160    :	result = 16'd1
         64192    :	result = 16'd1
         64224    :	result = 16'd1
         64256    :	result = 16'd1
         64288    :	result = 16'd2
         64320    :	result = 16'd2
         64352    :	result = 16'd2
         64384    :	result = 16'd3
         64416    :	result = 16'd3
         64448    :	result = 16'd4
         64480    :	result = 16'd4
         64512    :	result = 16'd5
         64544    :	result = 16'd5
         64576    :	result = 16'd6
         64608    :	result = 16'd7
         64640    :	result = 16'd8
         64672    :	result = 16'd9
         64704    :	result = 16'd10
         64736    :	result = 16'd12
         64768    :	result = 16'd13
         64800    :	result = 16'd15
         64832    :	result = 16'd17
         64864    :	result = 16'd19
         64896    :	result = 16'd21
         64928    :	result = 16'd24
         64960    :	result = 16'd27
         64992    :	result = 16'd30
         65024    :	result = 16'd34
         65056    :	result = 16'd37
         65088    :	result = 16'd42
         65120    :	result = 16'd46
         65152    :	result = 16'd51
         65184    :	result = 16'd57
         65216    :	result = 16'd62
         65248    :	result = 16'd68
         65280    :	result = 16'd75
         65312    :	result = 16'd82
         65344    :	result = 16'd89
         65376    :	result = 16'd96
         65408    :	result = 16'd104
         65440    :	result = 16'd112
         65472    :	result = 16'd120
         65504    :	result = 16'd128
         0        :	result = 16'd135
         32       :	result = 16'd143
         64       :	result = 16'd151
         96       :	result = 16'd159
         128      :	result = 16'd166
         160      :	result = 16'd173
         192      :	result = 16'd180
         224      :	result = 16'd187
         256      :	result = 16'd193
         288      :	result = 16'd198
         320      :	result = 16'd204
         352      :	result = 16'd209
         384      :	result = 16'd213
         416      :	result = 16'd218
         448      :	result = 16'd221
         480      :	result = 16'd225
         512      :	result = 16'd228
         544      :	result = 16'd231
         576      :	result = 16'd234
         608      :	result = 16'd236
         640      :	result = 16'd238
         672      :	result = 16'd240
         704      :	result = 16'd242
         736      :	result = 16'd243
         768      :	result = 16'd245
         800      :	result = 16'd246
         832      :	result = 16'd247
         864      :	result = 16'd248
         896      :	result = 16'd249
         928      :	result = 16'd250
         960      :	result = 16'd250
         992      :	result = 16'd251
         1024     :	result = 16'd251
         1056     :	result = 16'd252
         1088     :	result = 16'd252
         1120     :	result = 16'd253
         1152     :	result = 16'd253
         1184     :	result = 16'd253
         1216     :	result = 16'd254
         1248     :	result = 16'd254
         1280     :	result = 16'd254
         1312     :	result = 16'd254
         1344     :	result = 16'd254
         1376     :	result = 16'd254
         1408     :	result = 16'd255
         1440     :	result = 16'd255
         1472     :	result = 16'd255
         1504     :	result = 16'd255
         1536     :	result = 16'd255
         1568     :	result = 16'd255
         1600     :	result = 16'd255
         1632     :	result = 16'd255
         1664     :	result = 16'd255
         1696     :	result = 16'd255
         1728     :	result = 16'd255
         1760     :	result = 16'd255

      endcase
   end

endmodule