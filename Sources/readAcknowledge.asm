			INCLUDE 'derivative.inc'
			XDEF readAck;
            
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF i2cClock;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
readAck:			
			BSET PTAD_PTAD2, PTADD; SDA data direction
			BSET PTAD_PTAD2, PTAD; SDA
			NOP;
			NOP;
			NOP;
			BCLR PTAD_PTAD2, PTAD; SDA
	 		JSR i2cClock;
	 		BCLR PTAD_PTAD2, PTADD; SDA data direction
			RTS;
			
