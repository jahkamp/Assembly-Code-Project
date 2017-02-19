			INCLUDE 'derivative.inc'
			XDEF writeM_lowercase;

			XREF writeLCD;
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
writeM_lowercase:
			;Write a m to the LCD
			BSET PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			;Upper 4 bits
			BCLR PTBD_PTBD7, PTBD;
			BSET PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD4, PTBD;
			JSR writeLCD;
			;Lower 4 bits
			BSET PTBD_PTBD7, PTBD;
			BSET PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BSET PTBD_PTBD4, PTBD;
			JSR writeLCD;
			
			RTS;
