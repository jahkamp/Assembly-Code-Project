			INCLUDE 'derivative.inc'
			XDEF initializeLCD;
			
			 ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF selectY4;
            XREF wait15ms;
            XREF wait4100us;
            XREF wait100us;
            XREF writeLCD;
			XREF btnCode;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF clearLCD;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
initializeLCD:
			;clearing ports
			BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD5, PTBD;
	 		BCLR PTBD_PTBD4, PTBD;
	 		JSR selectY4;
	 		;power on wait more than 15 ms
			JSR wait15ms;
			;function set interface is 8bits
	 		BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD5, PTBD;
	 		BSET PTBD_PTBD4, PTBD;
	 		JSR selectY4;
	 		;wait 4.1 ms
	 		JSR wait4100us;
	 		BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD5, PTBD;
	 		BSET PTBD_PTBD4, PTBD;
	 		JSR selectY4;
	 		;wait 0.1 ms
	 		JSR wait100us;
			BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD5, PTBD;
	 		BSET PTBD_PTBD4, PTBD;
	 		JSR writeLCD;
						
			;function set interface is 4bits
	 		BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD5, PTBD;
	 		BCLR PTBD_PTBD4, PTBD;
	 		JSR writeLCD;
	 		
	 		;set Font and number lines 
			BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD5, PTBD;
	 		BCLR PTBD_PTBD4, PTBD;
	 		JSR writeLCD;
	 		BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BSET PTBD_PTBD7, PTBD; num lines
	 		BCLR PTBD_PTBD6, PTBD; 0 = standard font
			BCLR PTBD_PTBD5, PTBD; don't care
	 		BCLR PTBD_PTBD4, PTBD; don't care
			JSR writeLCD;
			
			;display off
	 		BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD4, PTBD;
	 		JSR writeLCD;
	 		BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BSET PTBD_PTBD7, PTBD;
	 		BCLR PTBD_PTBD6, PTBD;
	 		BCLR PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD4, PTBD;
	 		JSR writeLCD;
	 		
			;clear LCD
	 		JSR clearLCD;
			
			;entry mode set
	 		BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD4, PTBD;
			JSR writeLCD;
			;set I/D 1, and let S =0 
			BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BCLR PTBD_PTBD7, PTBD;
			BSET PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD4, PTBD;
			JSR writeLCD;
			
			;display on
			BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BCLR PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD4, PTBD;
			JSR writeLCD;
			;set C=1 and B=0 
			BCLR PTAD_PTAD1, PTAD; RS
			BCLR PTAD_PTAD0, PTAD; R/W
			BSET PTBD_PTBD7, PTBD;
			BSET PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD5, PTBD; C, cursor
			BCLR PTBD_PTBD4, PTBD; B, blink
			JSR writeLCD;
			
			;done here
			RTS;
