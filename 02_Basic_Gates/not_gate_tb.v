// Code your testbench here
// or browse Examples
// Day 3 - NOT Gate Testbench

module notgate_tb;

  reg t_a;
  wire t_y;

  notgate uut (
    .a(t_a),
    .y(t_y)
  );

  initial begin

    $monitor("Time=%0t : A=%b Y=%b",
             $time, t_a, t_y);

    $dumpfile("not_gate.vcd");
    $dumpvars(0, notgate_tb);

    // Test 1
    t_a = 1'b0;

    #5

    // Test 2
    t_a = 1'b1;

    #5 $finish;

  end

endmodule
