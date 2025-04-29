LXI H, 0x000F	 
MVI C, 10       
SUB A      

LOOP:    
	ADD M        
	INX H     
	DCR C  
JNZ LOOP

MOV M, A      
HLT      
