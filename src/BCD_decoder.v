module BCD_decoder (LED,EN,CLK,SW,BCD,HIGH,HEX,DISPLAY);
input CLK,SW,EN,LED;
input [7:0] DISPLAY;
input [3:0] BCD,HIGH;
output reg [7:0] HEX;
always @(CLK)
begin
if (LED & ~EN)
HEX = DISPLAY;
else if (SW & EN)
begin
case (HIGH)
4'b0000: HEX = 8'b11000000;
4'b0001: HEX = 8'b11111001;
4'b0010: HEX = 8'b10100100;
4'b0011: HEX = 8'b10110000;
4'b0100: HEX = 8'b10011001;
4'b0101: HEX = 8'b10010010;
4'b0110: HEX = 8'b10000010;
4'b0111: HEX = 8'b11111000;
4'b1000: HEX = 8'b10000000;
4'b1001: HEX = 8'b10010000;
4'b1111: HEX = 8'b11111111;
endcase
end
else
begin
case (BCD)
4'b0000: HEX = 8'b11000000;
4'b0001: HEX = 8'b11111001;
4'b0010: HEX = 8'b10100100;
4'b0011: HEX = 8'b10110000;
4'b0100: HEX = 8'b10011001;
4'b0101: HEX = 8'b10010010;
4'b0110: HEX = 8'b10000010;
4'b0111: HEX = 8'b11111000;
4'b1000: HEX = 8'b10000000;
4'b1001: HEX = 8'b10010000;
4'b1111: HEX = 8'b11111111;
endcase
end
end
endmodule