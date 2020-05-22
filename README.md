# CounterUP_using_verilog 
•	3-bit counter
•	Count Value is cleared when asynchronous active low "reset" signal is asserted, reset has highest priority
•	Count Value loaded from "IN" port on a positive clock edge when "Load" signal is high, Load has priority
•	Count value incremented by 1 on a positive clock edge when "Inc" signal is high 
•	Increment stop at 7
•	"done" flag active high whenever count value is 7
