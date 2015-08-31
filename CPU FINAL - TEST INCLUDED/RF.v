module RF (DATA_READ1, DATA_READ2, test_r0, test_r1, test_r2, test_r3, ADDRESS_READ1, ADDRESS_READ2, WRITE_ENABLE, ADDRESS_WRITE, DATA_WRITE, CLK, RESET);
  
  output [31 : 0] DATA_READ1, DATA_READ2;
  output [31 : 0] test_r0, test_r1, test_r2, test_r3;
  input [4 : 0] ADDRESS_READ1, ADDRESS_READ2, ADDRESS_WRITE;
  input [31 : 0] DATA_WRITE;
  input WRITE_ENABLE, CLK, RESET;
  
  assign test_r0 = RegisterFile [0];
  assign test_r1 = RegisterFile [1];
  assign test_r2 = RegisterFile [2];
  assign test_r3 = RegisterFile [3];
  
  
  reg [31 : 0] RegisterFile [0 : 31];
  integer i;
  
  assign DATA_READ1 = RegisterFile [ADDRESS_READ1];
  assign DATA_READ2 = RegisterFile [ADDRESS_READ2];
  
  always @(posedge CLK or posedge RESET)
    if (RESET)
      for (i = 0; i < 32; i = i + 1)
        RegisterFile [i] = 0;
    else  if (WRITE_ENABLE)
      RegisterFile [ADDRESS_WRITE] = DATA_WRITE;
  
endmodule

