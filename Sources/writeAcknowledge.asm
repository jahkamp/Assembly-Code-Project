			INCLUDE 'derivative.inc'
			XDEF writeAck;
            
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF i2cClock;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
writeAck:			
			BCLR PTAD_PTAD2, PTADD; SDA data direction
			NOP;
			NOP;
			NOP;
	 		JSR i2cClock;
	 		BSET PTAD_PTAD2, PTADD; SDA data direction
			RTS;
			
