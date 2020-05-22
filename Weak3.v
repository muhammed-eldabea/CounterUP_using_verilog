module counter(input in , 
		input load , 
		input inc , 
		input clock , 
		input reset , 
		output done ) ; 
wire in ;  //the loaded value 
reg [2,0]value ; // the value we assign to 


always @(posedge clock or negedge reset) 
  begin
	if (!reset) 
		value <= 0; 
	else if(load) 
	 	value<=in ; 
	else if ( inc & ~done )
		value<=value+1'b001 ; 
  end  
assign done=((value==3'b111)  ; 