			INCLUDE 'derivative.inc'
			XDEF writeDay;
			
			XREF dayOnesPlace;
			XREF dayTensPlace;
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
writeDay:
			LDA dayTensPlace;
			CBEQA #1, one;
			CBEQA #2, two;
			CBEQA #3, three;
			JSR writeZero;
			BRA writeTheOnesPlace;
			one:
				JSR writeOne;
				BRA writeTheOnesPlace;
			two:
				JSR writeTwo;
				BRA writeTheOnesPlace;
			three:
				JSR writeThree;
			writeTheOnesPlace:
				LDA dayOnesPlace
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
