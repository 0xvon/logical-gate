module XOR;
reg a, b;
wire out;

not(nota, a);
not(notb, b);

and(suma, a, notb);
and(sumb, b, nota);
or(out, suma, sumb);

initial begin
   $dumpfile("XOR.vcd");
   $dumpvars(0, XOR);

        a = 0; b = 0;
    #10 a = 1;
    #10 a = 0; b = 1;
    #10 a = 1;
    #10 a = 0; b = 0;
    #10 $finish;
end

endmodule