module ALU (OUT, Z, S, P, G, E, L, IN1, IN2, SRA, SEL);
  
  output reg [31 : 0] OUT;
  output Z, S, P, G, E, L;
  input [31 : 0] IN1, IN2;
  input [4 : 0] SRA;
  input [3 : 0] SEL;
  
  always @(*)
    case (SEL)
      4'b0000:  OUT = IN1 + IN2;						//Add
      4'b0001:  OUT = IN1 - IN2;						//Sub
      4'b0010:  OUT = IN1 * IN2;						//Mul
      4'b0011:  OUT = IN1 / IN2;						//Div
      4'b0100:  OUT = IN1 % IN2;						//Mod
      4'b0101:  OUT = IN1 > IN2 ? IN1 : IN2;			//Max
      4'b0110:  OUT = IN1 > IN2 ? IN2 : IN1;			//Min
      4'b0111:  OUT = ~IN1;								//Not
      4'b1000:  OUT = ~(IN1 & IN2);						//Nand
      4'b1001:  OUT = ~(IN1 | IN2);						//Nor
      4'b1010:  OUT = ~(IN1 ^ IN2);						//Xnor
      4'b1011:  OUT = IN1 << SRA;						//Shift Left
      4'b1100:  OUT = IN1 >>> SRA;						//Shift Right Arithmetic
      4'b1101:  OUT = IN1 >> SRA;						//Shift Right Logical
      4'b1110:  OUT = ({IN1, IN1} << SRA) >> 32;		//Rotate Left
      4'b1111:  OUT = {IN1, IN1} >> SRA;				//Rotate Right
      default:  OUT = 32'b0;
    endcase
    
  assign Z = OUT == 0;
  assign S = OUT [31];
  assign P = ^OUT;
  assign G = IN1 > IN2;
  assign E = IN1 == IN2;
  assign L = IN1 < IN2;
  
endmodule

