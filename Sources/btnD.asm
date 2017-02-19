			INCLUDE 'derivative.inc'
			XDEF btnD;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF selectY0;
            XREF btnCode;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			XREF writeD;
			XREF btnHandled;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
btnD:
		LDA btnCode;
	    CBEQA #%00001111, pressed;
	    RTS
		pressed:
			;JSR writeD;
			
			;write hex to LEDs we should only need Y0
			BSET PTBD_PTBD7, PTBD;
			BSET PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BSET PTBD_PTBD4, PTBD;
			JSR selectY0;
			
			JSR btnHandled;
		done:
		    ;done
		    RTS
