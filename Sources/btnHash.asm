			INCLUDE 'derivative.inc'
			XDEF btnHash;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF btnCode;
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			XREF writeHash;
            XREF btnClicks;
            XREF btnHandled;
            XREF selectY0;
            
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
btnHash:
		LDA btnCode; 
	    CBEQA #%00001110, pressed;
		RTS
		pressed:
			;write hex to LEDs we should only need Y0
			BSET PTBD_PTBD7, PTBD;
			BSET PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD5, PTBD;
			BSET PTBD_PTBD4, PTBD;
			JSR selectY0;
			
			JSR btnHandled;
		    
		    ;done
		    RTS
