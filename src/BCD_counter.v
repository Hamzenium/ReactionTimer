module BCD_counter (EN,CLR,CLK,BCD0,BCD1,BCD2,BCD3, BCD4, BCD5);
input EN,CLR,CLK;
output reg [3:0] BCD0,BCD1,BCD2,BCD3,BCD4,BCD5;
always @(posedge CLK)
begin
if (CLR)
begin
BCD0 <= 4'b0000;
BCD1 <= 4'b0000;
BCD2 <= 4'b0000;
BCD3 <= 4'b0000;
BCD4 <= 4'b0000;
BCD5 <= 4'b0000;
end
else 
begin
if (EN)
 begin
if (BCD0 == 4'b1001)
begin
BCD0 <= 0;
if (BCD1 == 4'b1001)
begin
BCD1 <= 0;
if (BCD2 == 4'b1001)
begin
BCD2 <= 0;
if (BCD3 == 4'b1001)
begin
BCD3 <= 0;
if (BCD4 == 4'b1001)
begin
BCD4 <= 0;
if (BCD5 == 4'b1001)
BCD5 <= 0;
else
BCD5 <= BCD5 + 1;
end
else
BCD4 <= BCD4 + 1;
end
else
BCD3 <= BCD3 + 1;
end
else
BCD2 <= BCD2 + 1;
end
else
BCD1 <= BCD1 + 1;
end
else
BCD0 <= BCD0 + 1;
end
end
end
endmodule