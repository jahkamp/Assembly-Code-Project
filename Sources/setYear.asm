			INCLUDE 'derivative.inc'
			XDEF setYear;
            
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF yearTensPlace;
            XREF yearOnesPlace;
            XREF fourBitNineBang;
            XREF fourBitEightBang;
            XREF fourBitSevenBang;
            XREF fourBitSixBang;
            XREF fourBitFiveBang;
            XREF fourBitFourBang;
            XREF fourBitThreeBang;
            XREF fourBitTwoBang;
            XREF fourBitSoloBang;
            XREF fourBitZeroBang;
            XREF i2cClock;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
setYear:
			;data
			;bits 7-4 = tens place
			LDA yearTensPlace;
			CBEQA #9, setBit7;
			CBEQA #8, setBit7;
			;bit 7
			JSR i2cClock;
	 		CBEQA #7, setBit6;
			CBEQA #6, setBit6;
			CBEQA #5, setBit6;
			CBEQA #4, setBit6;
			;bit 6
			JSR i2cClock;
	 		CBEQA #3, setBit5;
			CBEQA #2, setBit5;
			;bit 5
	 		JSR i2cClock;
	 		CBEQA #1, setBit4;
			;bit 4
	 		JSR i2cClock;
	 		BRA setOnesPlace;
			setBit7:
				;bit 7
				BSET PTAD_PTAD2, PTAD; SDA
	 			JSR i2cClock;
	 			BCLR PTAD_PTAD2, PTAD; SDA
				JSR i2cClock;
				JSR i2cClock;
				LDA yearTensPlace;
				CBEQA #9, setBit4;
				JSR i2cClock;
				BRA setOnesPlace;
			setBit6:
				;bit 6
				BSET PTAD_PTAD2, PTAD; SDA
	 			JSR i2cClock;
	 			LDA yearTensPlace;
				CBEQA #7, setBit5;
				CBEQA #6, setBit5;
				BCLR PTAD_PTAD2, PTAD; SDA
	 			JSR i2cClock;
	 			LDA yearTensPlace;
				CBEQA #5, setBit4;
				JSR i2cClock;
	 			BRA setOnesPlace;
			setBit5:
				;bit 5
		 		BSET PTAD_PTAD2, PTAD; SDA
	 			JSR i2cClock;
	 			LDA yearTensPlace;
	 			CBEQA #7, setBit4;
				CBEQA #3, setBit4;
				BCLR PTAD_PTAD2, PTAD; SDA
	 			JSR i2cClock;
	 			BRA setOnesPlace;
			setBit4:
				;bit 4
		 		BSET PTAD_PTAD2, PTAD; SDA
	 			JSR i2cClock;
	 		setOnesPlace:
				LDA yearOnesPlace;
				CBEQA #9, setNine;
				CBEQA #8, setEight;
				CBEQA #7, setSeven;
				CBEQA #6, setSix;
				CBEQA #5, setFive;
				CBEQA #4, setFour;
				CBEQA #3, setThree;
				CBEQA #2, setTwo;
				CBEQA #1, setOne;
				;bit 3-0 = ones place
		 		BCLR PTAD_PTAD2, PTAD; SDA
	 			JSR i2cClock;
	 			;bit 2
		 		JSR i2cClock;
	 			;bit 1
		 		JSR i2cClock;
	 			;bit 0
		 		JSR i2cClock;
	 			RTS;
		 		setNine:
			 		JSR fourBitNineBang;
			 		RTS;
		 		setEight:
					JSR fourBitEightBang;
					RTS;
		 		setSeven:
			 		JSR fourBitSevenBang;
			 		RTS;
		 		setSix:
			 		JSR fourBitSixBang;
			 		RTS;
		 		setFive:
			 		JSR fourBitFiveBang;
			 		RTS;
		 		setFour:
			 		JSR fourBitFourBang;
			 		RTS;
		 		setThree:
			 		JSR fourBitThreeBang;
			 		RTS;
		 		setTwo:
			 		JSR fourBitTwoBang;
			 		RTS;
		 		setOne: 
			 		JSR fourBitSoloBang;
			 		RTS;
					
