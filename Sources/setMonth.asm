			INCLUDE 'derivative.inc'
			XDEF setMonth;
            
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF monthTensPlace;
            XREF monthOnesPlace;
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
setMonth:
			;data
			;bits 567 always zero
	 		BCLR PTAD_PTAD2, PTAD; SDA
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		JSR i2cClock;
	 		LDA monthTensPlace;
			CBEQA #1, one;
			;bit 4
	 		JSR i2cClock;
	 		BRA setOnesPlace;
			one:
				;bit 4
		 		BSET PTAD_PTAD2, PTAD; SDA
	 			JSR i2cClock;
		 	setOnesPlace:
				LDA monthOnesPlace;
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
					
