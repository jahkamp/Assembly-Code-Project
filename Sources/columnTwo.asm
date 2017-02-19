			INCLUDE 'derivative.inc'
			XDEF scanCol2;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF rowNum;
            XREF btnCode;
            XREF pattern;
            XREF busLinesInput;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
scanCol2:
			LDA rowNum;
			CBEQA #%00000000, row0;
			CBEQA #%00000001, row1;
			CBEQA #%00000010, row2;
			BRA row3;
			;btn 3
			row0:
				BRCLR 6, busLinesInput, pressDetected0;
				RTS;
				pressDetected0:
					LDA #%00000010;
					STA btnCode;
					RTS;
			;btn 6
			row1:
				BRCLR 6, busLinesInput, pressDetected1;
				RTS;
				pressDetected1:
					LDA #%00000110;
					STA btnCode;
					RTS;
			;btn 9
			row2:
				BRCLR 6, busLinesInput, pressDetected2;
				RTS;
				pressDetected2:
					LDA #%00001010;
					STA btnCode;
					RTS;
			;btn #
			row3:
				BRCLR 6, busLinesInput, pressDetected3;
				RTS;
				pressDetected3:
					LDA #%00001110;
					STA btnCode;
					RTS;
