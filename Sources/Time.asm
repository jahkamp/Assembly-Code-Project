			INCLUDE 'derivative.inc'
			XDEF time;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF writeLCD;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			XREF clearLCD;
			XREF writeE_lowercase;
			XREF writeEqual;
			XREF writeSpace;
			XREF writeR;
			XREF writeW;
			XREF writeD;
			XREF writeH_lowercase;
			XREF writeA_lowercase;
			XREF writeI_lowercase;
			XREF writeO;
			XREF writeM_lowercase;
			XREF writeU_lowercase;
			XREF writeT_lowercase;
			XREF writeS_lowercase;
			XREF writeT;
			XREF writeQuote;
			XREF writeMonth;
			XREF writeDay;
			XREF writeYear;
			XREF secondLine;
			XREF writeHour;
			XREF writeMin;
			XREF writeSec;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
time:
			;Display Starting Dialog on LCD "Time is hh:mm:ss"
			JSR writeT;
			JSR writeI_lowercase;
			JSR writeM_lowercase;
			JSR writeE_lowercase;
			JSR writeSpace;
			
			JSR writeI_lowercase;
			JSR writeS_lowercase;
			JSR writeSpace;
			
			JSR writeHour;
			JSR writeMin;
			JSR writeSec;
			
			;done
		    RTS

