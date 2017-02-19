			INCLUDE 'derivative.inc'
			XDEF subRtnCol;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF selectY3;
            XREF scanCol0;
            XREF scanCol1;
            XREF scanCol2;
            XREF scanCol3;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
subRtnCol:
		;selectY3: ;the SN74HC245 OCTAL BUS TRANSCEIVERS WITH 3-STATE OUTPUTS
		JSR selectY3;
		
		;scan all columns
		JSR scanCol0;
		JSR scanCol1;
		JSR scanCol2;
		JSR scanCol3;
		RTS;
