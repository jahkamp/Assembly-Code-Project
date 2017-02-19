			INCLUDE 'derivative.inc'
			XDEF fourBitEightBang;
            
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF i2cClock;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
fourBitEightBang:
				;bang out an eight
				;bit 3-0 = ones place
		 		BSET PTAD_PTAD2, PTAD; SDA
 				JSR i2cClock;
					;bit 2
		 		BCLR PTAD_PTAD2, PTAD; SDA
 				JSR i2cClock;
					;bit 1
		 		BCLR PTAD_PTAD2, PTAD; SDA
 				JSR i2cClock;
					;bit 0
		 		BCLR PTAD_PTAD2, PTAD; SDA
 				JSR i2cClock;
					RTS;			
