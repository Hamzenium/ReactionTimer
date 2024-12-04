module Down_count(KEY,CLK,EN,CLR,Q,DONE);
input KEY,CLK,EN,CLR;
input [10:0] Q;
output reg DONE;
integer count;
always @(posedge CLK)
begin
if (CLR)
count <= Q;
else if (EN & KEY)
begin
count <= count - 1;
if (count == 0)
DONE <= 1;
else
DONE <= 0;
end
end
endmodule