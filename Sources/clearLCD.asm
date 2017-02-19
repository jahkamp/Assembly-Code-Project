			INCLUDE 'derivative.inc'
			XDEF clearLCD;
            
			XREF selectY4;
            XREF wait15ms;
            XREF wait4100us;
            XREF wait100us;
            XREF wait40us;
			XREF btnCode;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF lcdReadInProgress;
		 	XREF writeLCD;
		 	XREF wait1600us;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
clearLCD:			
			;clear LCD
	 		BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD4, PTBD;
	 		JSR writeLCD;
			JSR wait1600us;
			BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BSET PTBD_PTBD4, PTBD;
	 		JSR writeLCD;
			JSR wait1600us;	
			
			RTS; 
