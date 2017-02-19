			INCLUDE 'derivative.inc'
			XDEF subRtnRows;
			; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF selectY2;
            XREF subRtnCol;
            XREF rowNum;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
subRtnRows:
			JSR setRow0;
			JSR setRow1;
			JSR setRow2;
			JSR setRow3;
			RTS;
			setRow0:
				LDA #%00000000;
				STA rowNum;
				BCLR PTBD_PTBD4, PTBD;
				BSET PTBD_PTBD5, PTBD;
				BSET PTBD_PTBD6, PTBD;
				BSET PTBD_PTBD7, PTBD;		
				JSR selectY2;
				JSR subRtnCol;	
				LDA #%00000001;
				STA rowNum;
				RTS;
			setRow1:
				LDA #%00000001;
				STA rowNum;
				BSET PTBD_PTBD4, PTBD;
				BCLR PTBD_PTBD5, PTBD;
				BSET PTBD_PTBD6, PTBD;
				BSET PTBD_PTBD7, PTBD;			
				JSR selectY2;
				JSR subRtnCol;
				LDA #%00000010;
				STA rowNum;
				RTS;
			setRow2:
				LDA #%00000010;
				STA rowNum;
				BSET PTBD_PTBD4, PTBD;
				BSET PTBD_PTBD5, PTBD;
				BCLR PTBD_PTBD6, PTBD;
				BSET PTBD_PTBD7, PTBD;			
				JSR selectY2;
				JSR subRtnCol;
				LDA #%00000011;
				STA rowNum;
				RTS;
			setRow3:
				LDA #%00000011;
				STA rowNum;
				BSET PTBD_PTBD4, PTBD;
				BSET PTBD_PTBD5, PTBD;
				BSET PTBD_PTBD6, PTBD;
				BCLR PTBD_PTBD7, PTBD;			
				JSR selectY2;
				JSR subRtnCol;
				LDA #%00000000;
				STA rowNum;
				RTS;
				
