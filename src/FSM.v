module FSM (SW,KEY,CLK,DC_DONE,DC_EN,DC_CLR,BCD_EN,BCD_CLR,HIGH_EN,LED);
input SW,CLK,DC_DONE;
input [1:0] KEY;
output DC_EN,DC_CLR,BCD_CLR,HIGH_EN,BCD_EN;
output LED;
reg [1:0] Y,y;
parameter [1:0] A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
initial
Y <= A;
always @(negedge KEY[0],negedge KEY[1],posedge DC_DONE)
case (Y)
A: if (~KEY[0] & ~SW) y <= B;
else y <= A;
B: if (DC_DONE) y <= C;
else y <= B;
C: if (~KEY[0]) y <= D;
else y <= C;
D: if (~KEY[1]) y <= A;
else y <= D;
endcase
always @(posedge CLK,negedge KEY[1])
begin
if (~KEY[1]) Y <= A;
else Y <= y;
end
assign DC_CLR = ~Y[1] & ~Y[0];
assign BCD_CLR = ~Y[1] & ~Y[0];
assign DC_EN = ~Y[1] & Y[0];
assign BCD_EN = Y[1] & ~Y[0];
assign LED = Y[1] & ~Y[0];
assign HIGH_EN = Y[1] & Y[0];
endmodule