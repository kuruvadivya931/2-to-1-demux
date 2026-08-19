`timescale 1ns/1ps

module demux2to1_tb;

reg D;
reg S;

wire Y0;
wire Y1;

// Instantiate DUT
demux2to1 uut (
    .D(D),
    .S(S),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin

    // Generate waveform
    $dumpfile("demux2to1.vcd");
    $dumpvars(0, demux2to1_tb);

    // Test 1: D=0, S=0
    D = 0;
    S = 0;
    #10;

    // Test 2: D=1, S=0
    D = 1;
    S = 0;
    #10;

    // Test 3: D=0, S=1
    D = 0;
    S = 1;
    #10;

    // Test 4: D=1, S=1
    D = 1;
    S = 1;
    #10;

    $finish;
end

initial begin

    $display("--------------------------------");
    $display("Time\tD\tS\tY0\tY1");
    $display("--------------------------------");

    $monitor("%0t\t%b\t%b\t%b\t%b",
             $time, D, S, Y0, Y1);

end

endmodule