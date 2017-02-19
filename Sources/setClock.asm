			INCLUDE 'derivative.inc'
			XDEF setClock;
            
            XREF wait40us;
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF secAddress;
            XREF minAddress;
            XREF hourAddress;
            XREF dayAddress;
            XREF monthAddress;
            XREF yearAddress;
            XREF setSec;
            XREF setMin;
            XREF setHour;
            XREF setDay;
            XREF setMonth;
            XREF setYear;
			XREF i2cClock;
			XREF i2cStart;
			XREF i2cStop;
			XREF clockAddress;
			XREF writeAck;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
setClock:			
			;set all the date time info on the clock
			;start cond.
	 		JSR i2cStart;
			JSR clockAddress;
	 		BCLR PTAD_PTAD2, PTAD; write  
	 		JSR i2cClock;
	 		JSR writeAck;
			JSR secAddress;
	 		JSR writeAck;
			JSR setSec;
	 		JSR writeAck;
	 		JSR setMin;
	 		JSR writeAck;
	 		JSR setHour;
	 		JSR writeAck;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR writeAck;
	 		JSR setDay;
	 		JSR writeAck;
	 		JSR setMonth;
	 		JSR writeAck;
	 		JSR setYear;
	 		JSR writeAck;
	 		JSR i2cStop;
	 		
	 		RTS;
