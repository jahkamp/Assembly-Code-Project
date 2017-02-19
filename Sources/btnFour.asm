			INCLUDE 'derivative.inc'
			XDEF btn4;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF btnClicks;
            XREF selectY0;
            XREF btnCode;
			XREF writeLCD;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			XREF writeFour;
			XREF monthTensPlace;
            XREF monthOnesPlace;
            XREF dayTensPlace;
            XREF dayOnesPlace;
            XREF yearTensPlace;
            XREF yearOnesPlace;
            XREF hourTensPlace;
            XREF hourOnesPlace;
            XREF minTensPlace;
            XREF minOnesPlace;
            XREF secTensPlace;
            XREF secOnesPlace;
            XREF writeForwardSlash;
            XREF writeColon;
            XREF btnHandled;
            XREF setClock;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
btn4:
		LDA btnCode; 
	    CBEQA #%00000100, pressed;
		RTS
		pressed:
			;write hex to LEDs we should only need Y0
			BCLR PTBD_PTBD7, PTBD;
			BSET PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD4, PTBD;
			JSR selectY0;
			
			LDA btnClicks;
			CBEQA #12, done;
			JSR writeFour;
			LDA btnClicks;
			CBEQA #0, monthTens;
			CBEQA #1, monthOnes;
			CBEQA #2, dayTens;
			CBEQA #3, dayOnes;
			CBEQA #4, yearTens;
			CBEQA #5, yearOnes;
			CBEQA #6, hourTens;
			CBEQA #7, hourOnes;
			CBEQA #8, minTens;
			CBEQA #9, minOnes;
			CBEQA #10, secTens;
			CBEQA #11, secOnes;
			done:
				JSR btnHandled;
				RTS;
			monthTens:
				LDA #4;
				STA monthTensPlace;
				BRA done;	
			monthOnes:
				LDA #4;
				STA monthOnesPlace;
				JSR writeForwardSlash;
				BRA done;
			dayTens:
				LDA #4;
				STA dayTensPlace;
				BRA done;
			dayOnes:
				LDA #4;
				STA dayOnesPlace;
				JSR writeForwardSlash;
				BRA done;
			yearTens:
				LDA #4;
				STA yearTensPlace;
				BRA done;
			yearOnes:
				LDA #4;
				STA yearOnesPlace;
				BRA done;
			hourTens:
				LDA #4;
				STA hourTensPlace;
				BRA done;
			hourOnes:
				LDA #4;
				STA hourOnesPlace;
				JSR writeColon;
				BRA done;
			minTens:
				LDA #4;
				STA minTensPlace;
				BRA done;
			minOnes:
				LDA #4;
				STA minOnesPlace;
				JSR writeColon;
				BRA done;
			secTens:
				LDA #4;
				STA secTensPlace;
				BRA done;
			secOnes:
				LDA #4;
				STA secOnesPlace;
				JSR setClock;
				BRA done;