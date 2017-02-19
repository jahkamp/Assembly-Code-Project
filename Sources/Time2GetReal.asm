			INCLUDE 'derivative.inc'
			XDEF time2GetReal;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			XREF clearLCD;
			XREF writeE_lowercase;
			XREF writeEqual;
			XREF writeSpace;
			XREF writeR;
			XREF writeW;
			XREF writeH_lowercase;
			XREF writeA_lowercase;
			XREF writeI_lowercase;
			XREF writeO;
			XREF writeM_lowercase;
			XREF writeU_lowercase;
			XREF writeT_lowercase;
			XREF writeS_lowercase;
			XREF writeQuote;
			XREF writeQuestion;
			XREF secondLine;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
time2GetReal:
			;clear LCD
			JSR clearLCD;
			
			;Display Starting Dialog on LCD "What's the time? "
			JSR writeW;
			JSR writeH_lowercase;
			JSR writeA_lowercase;
			JSR writeT_lowercase;
			JSR writeQuote;
			JSR writeS_lowercase;
			JSR writeSpace;
			
			JSR writeT_lowercase;
			JSR writeH_lowercase;
			JSR writeE_lowercase;
			JSR writeSpace;
			
			JSR writeT_lowercase;
			JSR writeI_lowercase;
			JSR writeM_lowercase;
			JSR writeE_lowercase;
			JSR writeQuestion;
			JSR secondLine;

			;done
		    RTS

