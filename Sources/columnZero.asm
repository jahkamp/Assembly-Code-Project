			INCLUDE 'derivative.inc'
			XDEF scanCol0;
            XDEF portB;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF rowNum;
            XREF pattern;
            XREF busLinesInput;
            XREF btnCode;
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
portB:	DS.B 1;
scanCol0:
			LDA rowNum;
			CBEQA #%00000000, row0;
			CBEQA #%00000001, row1;
			CBEQA #%00000010, row2;
			BRA row3;
			;btn 1
			row0: 
				BRCLR 4, busLinesInput, pressDetected0;
				RTS;
				pressDetected0:
					LDA #%00000000;
					STA btnCode;
					RTS;
			;btn 4
			row1:
				BRCLR 4, busLinesInput, pressDetected1;
				RTS;
				pressDetected1:
					LDA #%00000100;
					STA btnCode;
					RTS;
			;btn 7
			row2:
				BRCLR 4, busLinesInput, pressDetected2;
				RTS;
				pressDetected2:
					LDA #%00001000;
					STA btnCode;
					RTS;
			;btn *
			row3:
				BRCLR 4, busLinesInput, pressDetected3;
				RTS;
				pressDetected3:
					LDA #%00001100;
					STA btnCode;
					RTS;
