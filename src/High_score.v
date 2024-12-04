module High_score (CLK,EN,CURRENT,HIGH);
input CLK,EN;
input [23:0] CURRENT;
output reg [23:0] HIGH;
initial
HIGH <= 24'b100110011001100110011001;
always @(EN)
begin
if (EN)
begin
if (HIGH > CURRENT)
HIGH <= CURRENT;
end
end
endmodule
