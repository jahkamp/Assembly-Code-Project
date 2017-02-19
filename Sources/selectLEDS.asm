			INCLUDE 'derivative.inc'
			XDEF selectY0;
			XDEF selectY1;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            
            
            
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			XREF clkG2T;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION

selectY0:
	BCLR PTBD_PTBD0, PTBD; Setting ABC low
	BCLR PTBD_PTBD1, PTBD; 
	BCLR PTBD_PTBD2, PTBD;
	JSR clkG2T;
	RTS
selectY1:
	BSET PTBD_PTBD0, PTBD; Setting A high and BC low
	BCLR PTBD_PTBD1, PTBD; 
	BCLR PTBD_PTBD2, PTBD;
	JSR clkG2T;
	RTS