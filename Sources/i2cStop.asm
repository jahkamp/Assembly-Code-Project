			INCLUDE 'derivative.inc'
			XDEF i2cStop;
            
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF i2cClock;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
i2cStop:			
			;stop cond.
	 		BCLR PTAD_PTAD2, PTAD; SDA
	 		BSET PTAD_PTAD3, PTAD; SCL
	 		NOP;
	 		NOP;
	 		NOP;
			BSET PTAD_PTAD2, PTAD; SDA
	 		NOP;
	 		NOP;
	 		NOP;
			RTS;
			
