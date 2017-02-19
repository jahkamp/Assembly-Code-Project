			INCLUDE 'derivative.inc'
			XDEF subRtnHb;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF selectY1;
            XREF heartbeat;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
subRtnHb:
		BCLR PTBD_PTBD4, PTBD;
		BCLR PTBD_PTBD5, PTBD;
		BCLR PTBD_PTBD6, PTBD;
		
		LDA heartbeat;
		CBEQA #%00000000, turnOn; Else turn off.
		LDA #%00000000;
		STA heartbeat;
		BCLR PTBD_PTBD7, PTBD;	
		;select y1
		JSR selectY1;
		RTS;	
		turnOn:
			LDA #%11111111;
			STA heartbeat;
			BSET PTBD_PTBD7, PTBD;
			;select y1
			JSR selectY1;
			RTS
	
	
