			INCLUDE 'derivative.inc'
			XDEF btnStar;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            XREF selectY4;
            XREF btnClicks;
            XREF selectY0;
            XREF wait15ms;
            XREF wait4100us;
            XREF wait100us;
			XREF btnCode;
			;XREF readLCD;
			XREF writeLCD;
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			;XREF ddRamAddress;
			XREF time2GetReal;
			XREF nReadings;
			XREF enterN;
			XREF reqOut;
            XREF monthTensPlace;
            XREF monthOnesPlace;
            XREF dayTensPlace;
            XREF dayOnesPlace;
            XREF yearTensPlace;
            XREF yearOnesPlace;
            XREF hourTensPlace;
            XREF hourOnesPlace;
            XREF minTensPlace;
            XREF minOnesPlace;
            XREF secTensPlace;
            XREF secOnesPlace;
            XREF btnHandled;
            
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
btnStar:
		LDA btnCode; 
	    CBEQA #%00001100, pressed;
		RTS
		pressed:
			;write hex to LEDs we should only need Y0
			BSET PTBD_PTBD7, PTBD;
			BSET PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD4, PTBD;
			JSR selectY0;
			
			LDA #0;
			STA btnClicks;
			STA monthTensPlace;
			STA monthOnesPlace;
			STA dayTensPlace;
			STA dayOnesPlace;
			STA yearTensPlace;
			STA yearOnesPlace;
			STA hourTensPlace;
			STA hourOnesPlace;
			STA minTensPlace;
			STA minOnesPlace;
			STA secTensPlace;
			STA secOnesPlace;
			JSR time2GetReal;
		
		    ; button press handled, clear code
		    LDA #%00010000;
		    STA btnCode;
		    
		    ;slow this thing down!!!
		    ;45 ms outta do it
		    JSR wait15ms;
		    JSR wait15ms;
		    JSR wait15ms;
		    
		    ;done
		    RTS
