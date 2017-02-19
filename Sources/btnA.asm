			INCLUDE 'derivative.inc'
			XDEF btnA;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF selectY0;
            XREF btnCode;
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			;XREF ddRamAddress;
			XREF writeA;
			XREF btnHandled;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
btnA:
		LDA btnCode; 
	    CBEQA #%00000011, pressed;
		RTS
		pressed:
			;JSR writeA;
			
			;write hex to LEDs we should only need Y0
			BSET PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD4, PTBD;
			JSR selectY0;
			
			JSR btnHandled;
		 done:
		    ;done
		    RTS
