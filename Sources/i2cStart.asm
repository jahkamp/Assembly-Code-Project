			INCLUDE 'derivative.inc'
			XDEF i2cStart;
            
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF i2cClock;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
i2cStart:			
			;start cond.
	 		BSET PTAD_PTAD2, PTAD; SDA
	 		BSET PTAD_PTAD3, PTAD; SCL
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
			BCLR PTAD_PTAD2, PTAD; SDA
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		BCLR PTAD_PTAD3, PTAD; SCL
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
	 		NOP;
			RTS;
			
