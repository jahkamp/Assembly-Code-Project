			INCLUDE 'derivative.inc'
			XDEF selectY3;
			; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			XREF clkG2T;
			XREF busLinesInput;
			;XREF keypadReadInProgress;
            			
MY_ZEROPAGE: SECTION  SHORT
MyCode:     SECTION
selectY3:
			;initialize
			;LDA #%11111111;
			;STA keypadReadInProgress;
			
			LDA #%11110011;
			STA busLinesInput;
			;change bus lines to inputs
			BCLR PTBD_PTBD4, PTBDD; Bus 1
	        BCLR PTBD_PTBD5, PTBDD; Bus 2
	        BCLR PTBD_PTBD6, PTBDD; Bus 3
	        BCLR PTBD_PTBD7, PTBDD; Bus 4
			; Y3 = the SN74HC245 OCTAL BUS TRANSCEIVERS WITH 3-STATE OUTPUTS
			BSET PTBD_PTBD0, PTBD; Setting AB high and C low 
			BSET PTBD_PTBD1, PTBD; 
			BCLR PTBD_PTBD2, PTBD;
			;pull clock (G2T) low
			BCLR PTBD_PTBD3, PTBD;
			;pull A high to tell transciever to send data through bus lines
			BSET PTBD_PTBD0, PTBD;  
			;Read and store port B values into variable busLinesInput
			LDA PTBD;
			;pull A low cause we're done sending data through bus lines
			BSET PTBD_PTBD0, PTBD;  
			;set clock (G2T) high again
			BSET PTBD_PTBD3, PTBD; 
			;change bus lines back to outputs
			BSET PTBD_PTBD4, PTBDD; Bus 1
	        BSET PTBD_PTBD5, PTBDD; Bus 2
	        BSET PTBD_PTBD6, PTBDD; Bus 3
	        BSET PTBD_PTBD7, PTBDD; Bus 4
	       	
			;does accumulator value read from bus lines show a button press? 
			CBEQA #%11100011, press;
			CBEQA #%11010011, press;
			CBEQA #%10110011, press;
			CBEQA #%01110011, press;
			
			;LDA #%00000000;
			;STA keypadReadInProgress;
			RTS;
	        press:
	        	STA busLinesInput; 
		 		;LDA #%00000000;
				;STA keypadReadInProgress;
				RTS;
	        
