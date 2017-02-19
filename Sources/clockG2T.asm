			INCLUDE 'derivative.inc'
			XDEF clkG2T
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            
            
            
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION

clkG2T:
	BSET PTBD_PTBD3, PTBD; should already be high, but just in case...
	BCLR PTBD_PTBD3, PTBD; go low
	BSET PTBD_PTBD3, PTBD; clock G2T
	RTS
