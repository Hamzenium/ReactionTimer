module Go(clock, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
input clock;
output reg [7:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
reg [2:0] state;
initial state=3'b000;
integer counter;
parameter G=8'b10000010;
parameter O=8'b11000000;
parameter B=8'b10000000;
parameter U=8'b11000001;
parameter F=8'b10001110;
parameter S=8'b10010010;
parameter space=8'b11111111;
always@(posedge clock)
if (counter == 10000000) begin
case(state)
3'b000: begin
HEX5=G;
HEX4=O;
HEX3=space;
HEX2=B;
HEX1=U;
HEX0=F;
state=3'b001;
end
3'b001: begin
HEX5=O;
HEX4=space;
HEX3=B;
HEX2=U;
HEX1=F;
HEX0=F;
state=3'b0010;
end
3'b010: begin
HEX5=space;
HEX4=B;
HEX3=U;
HEX2=F;
HEX1=F;
HEX0=S;
state=3'b011;
end
3'b011: begin
HEX5=B;
HEX4=U;
HEX3=F;
HEX2=F;
HEX1=S;
HEX0=space;
state=3'b100;
end
3'b100: begin
HEX5=U;
HEX4=F;
HEX3=F;
HEX2=S;
HEX1=space;
HEX0=space;
state=3'b101;
end
3'b101: begin
HEX5=F;
HEX4=F;
HEX3=S;
HEX2=space;
HEX1=space;
HEX0=space;
state=3'b110;
end
3'b110: begin
HEX5=F;
HEX4=S;
HEX3=space;
HEX2=space;
HEX1=space;
HEX0=space;
state=3'b111;
end
3'b111: begin
HEX5=S;
HEX4=space;
HEX3=space;
HEX2=space;
HEX1=space;
HEX0=space;
state=3'b000;
end
endcase
counter=0;
end else begin
counter=counter+1;
end
endmodule