			INCLUDE 'derivative.inc'
			;XDEF moveCursor;
			XDEF secondLine;
            
			XREF selectY4;
            XREF wait15ms;
            XREF wait4100us;
            XREF wait1600us;
            XREF wait40us;
			XREF writeLCD;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF lcdReadInProgress;
		 	XREF ddRamAddress;
		 	XREF clearLCD;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
home:
				;clear LCD
		 		JSR clearLCD;
		 		RTS;
secondLine:
				;move to 1st position in 2nd row
				BCLR PTAD_PTAD1, PTAD; RS
				BCLR PTAD_PTAD0, PTAD; R/W
				;Upper 4 bits
				BSET PTBD_PTBD7, PTBD;
				BSET PTBD_PTBD6, PTBD;
				BCLR PTBD_PTBD5, PTBD;
				BCLR PTBD_PTBD4, PTBD;
				JSR writeLCD;
				;Lower 4 bits
				BCLR PTBD_PTBD7, PTBD;
				BCLR PTBD_PTBD6, PTBD;
				BCLR PTBD_PTBD5, PTBD;
				BCLR PTBD_PTBD4, PTBD;
				JSR writeLCD;
				RTS;
