module control_unit(
  input clk,
  input rst_b,
  input bgn,
  input [1:0]opcode,
  input q_1,
  input q0,
  input a63,
  input count63,
  output reg c0,
  output reg c1,
  output reg c2,
  output reg c3,
  output reg c4,
  output reg c5,
  output reg c6,
  output reg c7,
  output reg c8,
  output reg c9,
  output reg c10,
  output reg stop
  //output reg[2:0]st
);

  localparam ADDITION = 2'b00;
  localparam SUBSTRACTION = 2'b01;
  localparam MULTIPLICATION = 2'b10;
  localparam DIVISION = 2'b11;

  localparam S0 = 4'b0000;
  
  localparam S1_A = 4'b0001;
  localparam S2_A = 4'b0010;
  localparam S3_A = 4'b0011;
  localparam S4_A = 4'b0100;
  
  localparam S1_S = 4'b0001;
  localparam S2_S = 4'b0010;
  localparam S3_S = 4'b0011;
  localparam S4_S = 4'b0100;
  
  localparam S1_M = 4'b0001;
  localparam S2_M = 4'b0010;
  localparam S3_M = 4'b0011;
  localparam S4_M = 4'b0100;
  localparam S5_M = 4'b0101;
  localparam S6_M = 4'b0110;
  localparam S7_M = 4'b0111;
  
  localparam S1_D = 4'b0001;
  localparam S2_D = 4'b0010;
  localparam S3_D = 4'b0011;
  localparam S4_D = 4'b0100;
  localparam S5_D = 4'b0101;
  localparam S6_D = 4'b0110;
  localparam S7_D = 4'b0111;
  localparam S8_D = 4'b1000;

  reg [3:0] st;
  reg [3:0] st_nxt;
  
  initial begin
    st <= S0;
  end
  
  always@(*) begin
    stop = 0;
    c0 = 0;
    c1 = 0;
    c2 = 0;
    c3 = 0;
    c4 = 0;
    c5 = 0;
    c6 = 0;
    c7 = 0;
    c8 = 0;
    c10 = 0;
    case(opcode)
      ADDITION:
      begin
        c7 = 1;
        case(st)
        S0: 
        begin 
          if(bgn) 
            st_nxt = S1_A;
          else 
            st_nxt = S0;
        end
        S1_A:
        begin
          c0 = 1;
          st_nxt = S2_A;
        end
        S2_A:
        begin
          c1 = 1;
          st_nxt = S3_A;
        end
        S3_A:
        begin
          c2 = 1;
          st_nxt = S4_A;
        end
        S4_A:
        begin
          c5 = 1;
          stop = 1;
          st_nxt = S0;
        end
        default:
          st_nxt = S0;
        endcase
      end
      SUBSTRACTION:
      begin
        c7 = 1;
        case(st)
        S0: 
        begin 
          if(bgn) 
            st_nxt = S1_S;
          else 
            st_nxt = S0;
        end
        S1_S:
        begin
          c0 = 1;
          st_nxt = S2_S;
        end
        S2_S:
        begin
          c1 = 1;
          st_nxt = S3_S;
        end
        S3_S:
        begin
          c2 = 1;
          c3 = 1;
          st_nxt = S4_S;
        end
        S4_S:
        begin
          c5 = 1;
          stop = 1;
          st_nxt = S0;
        end
        default:
          st_nxt = S0;
        endcase
      end
      MULTIPLICATION:
      begin
        case(st)
        S0: 
        begin 
          if(bgn) 
            st_nxt = S1_M;
          else 
            st_nxt = S0;
          end
        S1_M:
        begin
          c0 = 1;
          st_nxt = S2_M;
        end 
        S2_M: 
        begin 
          c1 = 1; 
          if(q0 == 0 && q_1 == 1)
            st_nxt = S3_M;
          else if(q0 == 1 && q_1 == 0) 
            st_nxt = S4_M;
          else 
            st_nxt = S5_M;   
        end
        S3_M: 
        begin
          c2 = 1;
          st_nxt = S5_M;
        end
        S4_M: 
        begin
          c2 = 1;
          c3 = 1;
          st_nxt = S5_M;
        end
        S5_M:
        begin
          c4 = 1;
          c10 = 1;
          if(count63 == 0)
            st_nxt = S2_M;
          else 
            st_nxt = S6_M;
        end    
        S6_M: 
        begin
          c5 = 1;
          st_nxt = S7_M;
        end  
        S7_M:
        begin
          c6 = 1;
          stop = 1;
          st_nxt = S0;
        end
        default:
          st_nxt = S0;
        endcase
      end
      DIVISION:
      begin
        case(st)
        S0: 
        begin 
          if(bgn) 
            st_nxt = S1_S;
          else 
            st_nxt = S0;
        end
        S1_D:
        begin
          c0 = 1;
          st_nxt = S2_S;
        end
        S2_D:
        begin
          c1 = 1;
          st_nxt = S3_S;
        end
        S3_D:
        begin
          c8 = 1;
          st_nxt = S4_D;
        end
        S4_D:
        begin
          if(a63)
            c2 = 1;
          else
          begin
            c2 = 1;
            c3 = 1;
          end
          st_nxt = S5_D;
        end
        S5_D:
        begin
          c4 = 1;
          if(!a63)
            c9 = 1;
          st_nxt = S6_D;
        end
        S6_D:
        begin
          if(!count63)
            st_nxt = S3_D;
          else
            st_nxt = S7_D;
        end
        S7_D:
        begin
          c5 = 1;
          st_nxt = S8_D;
        end
        S8_D:
        begin
          c6 = 1;
          stop = 1;
          st_nxt = S0;
        end
        default:
          st_nxt = S0;
      endcase
    end
    endcase
  end

  always@(posedge clk or negedge rst_b) begin
    if(!rst_b)
      st <= S0;
    else 
      st <= st_nxt;
  end

endmodule