			INCLUDE 'derivative.inc'
			XDEF scanCol3;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF rowNum;
            XREF busLinesInput;
            XREF btnCode;
            XREF pattern;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
scanCol3:
			LDA rowNum;
			CBEQA #%00000000, row0;
			CBEQA #%00000001, row1;
			CBEQA #%00000010, row2;
			BRA row3;
			;btn A
			row0:
				BRCLR 7, busLinesInput, pressDetected0;
				RTS;
				pressDetected0:
					LDA #%00000011;
					STA btnCode;
					RTS;
			;btn B
			row1:
				BRCLR 7, busLinesInput, pressDetected1;
				RTS;
				pressDetected1:
					LDA #%00000111;
					STA btnCode;
					RTS;
			;btn C
			row2:
				BRCLR 7, busLinesInput, pressDetected2;
				RTS;
				pressDetected2:
					LDA #%00001011;
					STA btnCode;
					RTS;
			;btn D
			row3:
				BRCLR 7, busLinesInput, pressDetected3;
				RTS;
				pressDetected3:
					LDA #%00001111;
					STA btnCode;
					RTS;
