			INCLUDE 'derivative.inc'
			XDEF btn8;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF selectY4;
            XREF btnClicks;
            XREF wait15ms;
            XREF selectY0;
			XREF btnCode;
			XREF readLCD;
			XREF writeLCD;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			XREF nReadings;
			XREF writeEight;
			XREF readLM19;
			XREF readOnBrdTemp;
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
btn8:
		LDA btnCode; 
	    CBEQA #%00001001, pressed;
		RTS
		pressed:
			;write hex to LEDs we should only need Y0
			BSET PTBD_PTBD7, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD4, PTBD;
			JSR selectY0;
			
			LDA btnClicks;
			CBEQA #12, done;
			JSR writeEight;
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
				LDA #8;
				STA monthTensPlace;
				BRA done;	
			monthOnes:
				LDA #8;
				STA monthOnesPlace;
				JSR writeForwardSlash;
				BRA done;
			dayTens:
				LDA #8;
				STA dayTensPlace;
				BRA done;
			dayOnes:
				LDA #8;
				STA dayOnesPlace;
				JSR writeForwardSlash;
				BRA done;
			yearTens:
				LDA #8;
				STA yearTensPlace;
				BRA done;
			yearOnes:
				LDA #8;
				STA yearOnesPlace;
				BRA done;
			hourTens:
				LDA #8;
				STA hourTensPlace;
				BRA done;
			hourOnes:
				LDA #8;
				STA hourOnesPlace;
				JSR writeColon;
				BRA done;
			minTens:
				LDA #8;
				STA minTensPlace;
				BRA done;
			minOnes:
				LDA #8;
				STA minOnesPlace;
				JSR writeColon;
				BRA done;
			secTens:
				LDA #8;
				STA secTensPlace;
				BRA done;
			secOnes:
				LDA #8;
				STA secOnesPlace;
				JSR setClock;
				BRA done;
