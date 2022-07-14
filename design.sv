// CodFACSe your design here
module FACS( input M,input A,input B,input Cin,output SUM,output CARRY);
wire w5, w6, w7, w8, w9;
  xor(w5, A, B);
   xor(SUM, Cin, w5);
  xor(w6, A, M);
  
  or(w7, B, Cin);

  and(w8, w6, w7);
  and(w9, B, Cin);
 
  or(CARRY, w8, w9);
endmodule
