// Code your testbench here
// or browse Examples
module testb;
  reg Mode,X,Y,C;      
  wire SUM,CARRY;          
  parameter stop_time = 160;  
  
  FACS R(Mode,X,Y,C,SUM,CARRY); 
  
  initial                      
    begin                      
      $dumpfile("dump.vcd");    
      $dumpvars(1,testb);  
    end                        
  
  initial #stop_time $finish;  
  
  initial                      
    begin                      
          Mode=0;X=0;Y=0;C=0;     
      #10 Mode=0;X=0;Y=0;C=1;     
      #10 Mode=0;X=0;Y=1;C=0;     
      #10 Mode=0;X=0;Y=1;C=1;     
      #10 Mode=0;X=1;Y=0;C=0;     
      #10 Mode=0;X=1;Y=0;C=1;     
      #10 Mode=0;X=1;Y=1;C=0;     
      #10 Mode=0;X=1;Y=1;C=1;     
      #10 Mode=1;X=0;Y=0;C=0;    
      #10 Mode=1;X=0;Y=0;C=1;     
      #10 Mode=1;X=0;Y=1;C=0;     
      #10 Mode=1;X=0;Y=1;C=1;     
      #10 Mode=1;X=1;Y=0;C=0;     
      #10 Mode=1;X=1;Y=0;C=1;     
      #10 Mode=1;X=1;Y=1;C=0;     
      #10 Mode=1;X=1;Y=1;C=1;     
    end                        
  
  initial           
    begin                                           
      $display ("Mode X Y Cin S C");                       
      $monitor("%b %b %b %b %b %b",Mode,X,Y,C,SUM,CARRY);   
    end
endmodule