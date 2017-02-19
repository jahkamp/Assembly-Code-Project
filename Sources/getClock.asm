			INCLUDE 'derivative.inc'
			XDEF getClock;
            
            XREF wait40us;
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF secAddress;
            XREF minAddress;
            XREF hourAddress;
            XREF dayAddress;
            XREF monthAddress;
            XREF yearAddress;
            XREF getDay;
            XREF getMonth;
            XREF getYear;
            XREF getHour;
            XREF getMin;
            XREF getSec;
            XREF i2cClock;
            XREF i2cStart;
            XREF i2cStop;
			XREF clockAddress;
			XREF writeAck;
			XREF readAck;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
getClock:
			;get all time and date values from the clock
			JSR i2cStart;
			JSR clockAddress;
	 		BCLR PTAD_PTAD2, PTAD; write
	 		JSR i2cClock;
	 		JSR writeAck;
			JSR secAddress;
	 		JSR writeAck;
	 		JSR i2cStart; Sr 
	 		JSR clockAddress;
	 		BSET PTAD_PTAD2, PTAD; read
	 		JSR readAck;
	 		BCLR PTAD_PTAD2, PTADD;	SDA data direction
            JSR getSec;
	 		JSR readAck;
	 		JSR getMin;
	 		JSR readAck;
	 		JSR getHour;
	 		JSR readAck;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR readAck;
	 		JSR getDay;
	 		JSR readAck;
	 		JSR getMonth;
	 		JSR readAck;
	 		JSR getYear;
	 		;not acknowledge;BSET PTAD_PTAD2, PTAD; SDA
			BSET PTAD_PTAD2, PTADD; SDA data direction
			BCLR PTAD_PTAD2, PTAD; SDA
			NOP;
			NOP;
			NOP;
			JSR i2cClock;
	 		JSR i2cStop;
	 		
	 		RTS;
			
