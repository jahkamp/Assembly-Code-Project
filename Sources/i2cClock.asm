			INCLUDE 'derivative.inc'
			XDEF i2cClock;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
i2cClock:	
			NOP;
			NOP;
			NOP;
			BSET PTAD_PTAD3, PTAD; SCL
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
	 		RTS;	
