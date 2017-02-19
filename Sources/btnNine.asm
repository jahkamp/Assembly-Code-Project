			INCLUDE 'derivative.inc'
			XDEF btn9;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF btnCode;
            XREF btnClicks;
			XREF selectY0;
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			;XREF nReadings;
			XREF writeNine;
			;XREF readOnBrdTemp;
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
            XREF writeSpace;
            XREF btnHandled;
            XREF setClock;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
btn9:
		LDA btnCode; 
	    CBEQA #%00001010, pressed;
		RTS
		pressed:
			;write hex to LEDs we should only need Y0
			BSET PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BSET PTBD_PTBD4, PTBD;
			JSR selectY0;
			
			LDA btnClicks;
			CBEQA #12, done;
			JSR writeNine;
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
				LDA #9;
				STA monthTensPlace;
				BRA done;	
			monthOnes:
				LDA #9;
				STA monthOnesPlace;
				JSR writeForwardSlash;
				BRA done;
			dayTens:
				LDA #9;
				STA dayTensPlace;
				BRA done;
			dayOnes:
				LDA #9;
				STA dayOnesPlace;
				JSR writeForwardSlash;
				BRA done;
			yearTens:
				LDA #9;
				STA yearTensPlace;
				BRA done;
			yearOnes:
				LDA #9;
				STA yearOnesPlace;
				BRA done;
			hourTens:
				LDA #9;
				STA hourTensPlace;
				BRA done;
			hourOnes:
				LDA #9;
				STA hourOnesPlace;
				JSR writeColon;
				BRA done;
			minTens:
				LDA #9;
				STA minTensPlace;
				BRA done;
			minOnes:
				LDA #9;
				STA minOnesPlace;
				JSR writeColon;
				BRA done;
			secTens:
				LDA #9;
				STA secTensPlace;
				BRA done;
			secOnes:
				LDA #9;
				STA secOnesPlace;
				JSR setClock;
				BRA done;
