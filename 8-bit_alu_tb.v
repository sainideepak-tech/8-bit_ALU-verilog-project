`timescale 1ns/1ps

module alu_tb;

reg  [7:0] a;
reg  [7:0] b;
reg  [2:0] op;
wire [7:0] result;

alu uut (
    .a(a),
    .b(b),
    .op(op),
    .result(result)
);

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0, alu_tb);

    a = 8'd10;
    b = 8'd5;

    op = 3'b000; #10;   // ADD
    op = 3'b001; #10;   // SUB
    op = 3'b010; #10;   // AND
    op = 3'b011; #10;   // OR
    op = 3'b100; #10;   // XOR
    op = 3'b101; #10;   // NOT
    op = 3'b110; #10;   // LEFT SHIFT
    op = 3'b111; #10;   // RIGHT SHIFT

    $finish;
end

endmodule