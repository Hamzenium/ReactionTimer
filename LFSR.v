module LFSR(CLK, Q, LED);
    input CLK;
    output reg [10:0] Q;
    output reg [9:0] LED;  // Random LED pattern
    reg [31:0] P;          // Extended LFSR for more randomness

    initial begin
        P = 32'b10101010101010101010101010101010; // Initial seed value
        Q = 11'b00000000001;
        LED = 10'b0;
    end

    always @(posedge CLK) begin
        // Feedback polynomial: x^32 + x^22 + x^2 + x^1 + 1
        P = {P[30:0], P[31] ^ P[21] ^ P[1] ^ P[0]};
        Q = P[31:21]; // Assign a portion of the LFSR to Q
        LED = P[9:0]; // Assign lower bits of LFSR to LED
    end
endmodule
