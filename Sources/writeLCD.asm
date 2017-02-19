			INCLUDE 'derivative.inc'
			XDEF writeLCD;
            
			XREF selectY4;
            XREF wait15ms;
            XREF wait4100us;
            XREF wait100us;
            XREF wait40us;
			XREF btnCode;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF lcdReadInProgress;
		 
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
writeLCD:			
			JSR selectY4; clocks in data
			;wait 40 us
			JSR wait40us;
			RTS; 
