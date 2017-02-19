			INCLUDE 'derivative.inc'
			XDEF date;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			XREF clearLCD;
			XREF writeE_lowercase;
			XREF writeSpace;
			XREF writeD;
			XREF writeA_lowercase;
			XREF writeI_lowercase;
			XREF writeT_lowercase;
			XREF writeS_lowercase;
			XREF writeMonth;
			XREF writeDay;
			XREF writeYear;
			XREF secondLine;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
date:
			;clear LCD
			JSR clearLCD;
			
			;Display Starting Dialog on LCD "Date is MM/DD/YY"
			JSR writeD;
			JSR writeA_lowercase;
			JSR writeT_lowercase;
			JSR writeE_lowercase;
			JSR writeSpace;
			
			JSR writeI_lowercase;
			JSR writeS_lowercase;
			JSR writeSpace;
			
			JSR writeMonth;
			JSR writeDay;
			JSR writeYear;
			
			JSR secondLine;
			;done
		    RTS

