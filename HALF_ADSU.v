module HALF_ADSU (
    input  wire a, b,      // adder inputs
    input  wire x, y,      // subtractor inputs
    output wire sum,       // adder sum
    output wire carry,     // adder carry
    output wire diff,      // subtractor difference
    output wire borrow     // subtractor borrow
);

    // Half Adder
    assign sum   = a ^ b;
    assign carry = a & b;

    // Half Subtractor
    assign diff   = x ^ y;
    assign borrow = (~x) & y;

endmodule