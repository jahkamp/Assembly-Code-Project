			INCLUDE 'derivative.inc'
			XDEF scanCol1;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF rowNum;
            XREF pattern;
            XREF busLinesInput;
            XREF btnCode;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
scanCol1:
			LDA rowNum;
			CBEQA #%00000000, row0;
			CBEQA #%00000001, row1;
			CBEQA #%00000010, row2;
			BRA row3;
			;btn 2
			row0:
				BRCLR 5, busLinesInput, pressDetected0;
				RTS;
				pressDetected0:
					LDA #%00000001;
					STA btnCode;
					RTS;
			;btn 5
			row1:
				BRCLR 5, busLinesInput, pressDetected1;
				RTS;
				pressDetected1:
					LDA #%00000101;
					STA btnCode;
					RTS;
			;btn 8
			row2:
				BRCLR 5, busLinesInput, pressDetected2;
				RTS;
				pressDetected2:
					LDA #%00001001;
					STA btnCode;
					RTS;
			;btn 0
			row3:
				BRCLR 5, busLinesInput, pressDetected3;
				RTS
				pressDetected3:
					LDA #%00001101;
					STA btnCode;
					RTS;
