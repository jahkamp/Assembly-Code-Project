			INCLUDE 'derivative.inc'
			XDEF writeOne;

			XREF writeLCD;
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
writeOne:
			;Write a 1 to the LCD
			BSET PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			;Upper 4 bits
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD5, PTBD;
			BSET PTBD_PTBD4, PTBD;
			JSR writeLCD;
			;Lower 4 bits
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BSET PTBD_PTBD4, PTBD;
			JSR writeLCD;
			
			RTS;
