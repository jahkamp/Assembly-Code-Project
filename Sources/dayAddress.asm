			INCLUDE 'derivative.inc'
			XDEF dayAddress;
            
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF i2cClock;

MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
dayAddress:			
			;0000 0100
			BCLR PTAD_PTAD2, PTAD; SDA
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		
	 		JSR i2cClock;
	 		BSET PTAD_PTAD2, PTAD; SDA
	 		JSR i2cClock;
	 		BCLR PTAD_PTAD2, PTAD; SDA
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		
	 		RTS;
