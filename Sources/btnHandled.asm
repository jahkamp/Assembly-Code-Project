			INCLUDE 'derivative.inc'
			XDEF btnHandled;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            
            XREF btnClicks;
            XREF wait15ms;
			XREF btnCode;
            XREF XOR_mask_C, XOR_mask_C2  ;
            
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
btnHandled:
		    LDA #%00010000;
		    STA btnCode;
		    LDA btnClicks;
		    ADD #1;
		    STA btnClicks;
		    
		    ;slow this thing down!!!
		    ;45 ms outta do it
		    JSR wait15ms;
		    JSR wait15ms;
		    JSR wait15ms;
		    
		    ;done
		    RTS
