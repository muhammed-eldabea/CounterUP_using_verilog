`include "Weak3.v" 
`timescale 1000ns/1ns
module counter_testbench ; 

 // variables declaration
	wire done_tb ;
	wire reset_tb ; 
	reg  load_tb ; 
	reg  clock_tb ; 
	reg  inc_tb  ; 
	reg [2,0] in_tb ; 


// initial block
initial 
	begin
		$dumpfile(counter.vcd) ; 
		$dumpvars ; 
		reset_tb = 0 ; 
		in_tb=3'b000 ; 
		#40 load_tb =1 ; 
		#10 load_tb=0 ;
		#10 inc_tb=1 ; 
		#60          ; 
		#10 done_tb = 1
		#10 done_tb = 0
		 in_tb=3'b010 ; 
		#40 load_tb =1 ; 
		#10 load_tb=0 ;
		#10 inc_tb=1 ;
		#40 reset_tb=0 ; 
		#40 reset_tb=1 ;
		#400 $finish 
	end

// clocks generator

always #20 clock_tb=~clock_tb ; 

// design module instantiation 
counter( .in(in_tb) , 
		 .load(load_tb) , 
		 .inc(inc_tb) , 
		 .clock(clock_tb) , 
		 .reset(reset_tb) , 
		 .done(done_tb) ) ; 



endmodule