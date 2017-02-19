			INCLUDE 'derivative.inc'
			XDEF writeMonth;
			
			XREF monthTensPlace;
			XREF monthOnesPlace;
			XREF year;
			XREF writeOne;
			XREF writeTwo;
			XREF writeThree;
			XREF writeFour;
			XREF writeFive;
			XREF writeSix;
			XREF writeSeven;
			XREF writeEight;
			XREF writeNine;
			XREF writeZero;
			XREF writeForwardSlash;
			

MY_ZEROPAGE: SECTION  SHORT
MyCode:     SECTION
writeMonth:
			LDA monthTensPlace;
			CBEQA #1, one;
			JSR writeZero;
			BRA writeTheOnesPlace;
			one:
				JSR writeOne;
			writeTheOnesPlace:
				LDA monthOnesPlace
				CBEQA #1, equalsOne;
				CBEQA #2, equalsTwo;
				CBEQA #3, equalsThree;
				CBEQA #4, equalsFour;
				CBEQA #5, equalsFive;
				CBEQA #6, equalsSix;
				CBEQA #7, equalsSeven;
				CBEQA #8, equalsEight;
				CBEQA #9, equalsNine;
				JSR writeZero;
				BRA done;
			equalsOne:
				JSR writeOne;
				BRA done;
			equalsTwo:
				JSR writeTwo;
				BRA done;
			equalsThree:
				JSR writeThree;
				BRA done;
			equalsFour:
				JSR writeFour;
				BRA done;
			equalsFive:
				JSR writeFive;
				BRA done;
			equalsSix:
				JSR writeSix;
				BRA done;
			equalsSeven:
				JSR writeSeven;
				BRA done;
			equalsEight:
				JSR writeEight;
				BRA done;
			equalsNine:
				JSR writeNine;
			done:
				JSR writeForwardSlash;
				RTS;

