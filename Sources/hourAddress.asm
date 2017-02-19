			INCLUDE 'derivative.inc'
			XDEF hourAddress;
            
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF i2cClock;
            
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
hourAddress:	
			;0000 0010		
			BCLR PTAD_PTAD2, PTAD; SDA
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		BSET PTAD_PTAD2, PTAD; SDA
	 		JSR i2cClock;
	 		BCLR PTAD_PTAD2, PTAD; SDA
	 		JSR i2cClock;
	 		
	 		RTS;
