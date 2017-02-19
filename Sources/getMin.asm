			INCLUDE 'derivative.inc'
			XDEF getMin;
            
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF minTensPlace;
            XREF minOnesPlace;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
getMin:
			; bit 7 =0 always
            BCLR PTAD_PTAD3, PTAD; SCL
	 		NOP;
			BSET PTAD_PTAD3, PTAD; SCL
			
			;get tensPlace 1st bit
            BCLR PTAD_PTAD3, PTAD; SCL
	 		NOP;
			NOP;
			NOP;
			LDA PTAD_PTAD2;
	 		BSET PTAD_PTAD3, PTAD; SCL
	 		CBEQA #1, firstBitIsOne; //tens place could = four, five or six 
            
            BCLR PTAD_PTAD3, PTAD; SCL
	 		NOP;
			NOP;
			NOP;
			LDA PTAD_PTAD2;
	 		BSET PTAD_PTAD3, PTAD; SCL
	 		CBEQA #1, secondBitIsOne; //tens place could = two, three, or six
            
			BCLR PTAD_PTAD3, PTAD; SCL
	 		NOP;
			NOP;
			NOP;
			LDA PTAD_PTAD2;
	 		BSET PTAD_PTAD3, PTAD; SCL
	 		CBEQA #1, thirdBitIsOne; //tens place could = one, three, or five
            ;if we get here then all bits are zero;
            LDA #0;
            STA minTensPlace;
            BRA getOnesPlace;
            firstBitIsOne:
            	BCLR PTAD_PTAD3, PTAD; SCL
		 		NOP;
				NOP;
				NOP;
				LDA PTAD_PTAD2;
		 		BSET PTAD_PTAD3, PTAD; SCL
		 		CBEQA #1, firstAndSecondBitsAreOne; 
	            BCLR PTAD_PTAD3, PTAD; SCL
		 		NOP;
				NOP;
				NOP;
				LDA PTAD_PTAD2;
		 		BSET PTAD_PTAD3, PTAD; SCL
		 		CBEQA #1, firstAndThirdBitsAreOne;
	            ;if we get here 2nd and 3rd bits are zero;
	            LDA #4;
	            STA minTensPlace;
	            BRA getOnesPlace;
            secondBitIsOne:
	            BCLR PTAD_PTAD3, PTAD; SCL
		 		NOP;
				NOP;
				NOP;
				LDA PTAD_PTAD2;
		 		BSET PTAD_PTAD3, PTAD; SCL
		 		CBEQA #1, secondAndThirdBitsAreOne;
	            ;if we get here 1st and 3rd bits are zero;
	            LDA #2;
	            STA minTensPlace;
	            BRA getOnesPlace;
            thirdBitIsOne:
            	;if we get here 1st and 3rd bits are zero;
	            LDA #1;
	            STA minTensPlace;
	            BRA getOnesPlace;
	        firstAndSecondBitsAreOne:
	        	;we cant exceed six
	            LDA #6;
	            STA minTensPlace;
	            BRA getOnesPlace;
            firstAndThirdBitsAreOne:
            	LDA #5;
	            STA minTensPlace;
	            BRA getOnesPlace;
	        secondAndThirdBitsAreOne:
            	LDA #3;
	            STA minTensPlace;
	        getOnesPlace:
	            ;get onesPlace
	            BCLR PTAD_PTAD3, PTAD; SCL
		 		NOP;
				NOP;
				NOP;
				LDA PTAD_PTAD2;
		 		BSET PTAD_PTAD3, PTAD; SCL
		 		CBEQA #1, data1XXX;
	            BCLR PTAD_PTAD3, PTAD; SCL
		 		NOP;
				NOP;
				NOP;
				LDA PTAD_PTAD2;
		 		BSET PTAD_PTAD3, PTAD; SCL
		 		CBEQA #1, data01XX;
	            BCLR PTAD_PTAD3, PTAD; SCL
		 		NOP;
				NOP;
				NOP;
				LDA PTAD_PTAD2;
		 		BSET PTAD_PTAD3, PTAD; SCL
		 		CBEQA #1, data001X;
	            BCLR PTAD_PTAD3, PTAD; SCL
		 		NOP;
				NOP;
				NOP;
				LDA PTAD_PTAD2;
		 		BSET PTAD_PTAD3, PTAD; SCL
		 		CBEQA #1, data0001;
	            ;else min is zero
	            LDA #0;
	            STA minOnesPlace;
	            BRA done;
	            data1XXX:
		        	;we only support up to nine = 1001
		        	BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
			 		BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data1001;
		        	;else min is eight
		        	LDA #8;
		        	STA minOnesPlace;
		        	BRA done;
		        data1001:
		        	LDA #9;
		        	STA minOnesPlace;	
		        	BRA done;
	            data0001:
	            	LDA #1;
	            	STA minOnesPlace;
	            	BRA done;
	            data001X:
		            BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
			 		BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0011;
		            ;else min is two
		            LDA #2;
		            STA minOnesPlace;
		            BRA done;
		        data0011:
		        	LDA #3;
		        	STA minOnesPlace;
		        	BRA done;
	            data01XX:
	            	BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
			 		BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data011X;
		            BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
			 		BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0101;
		            ;else min is four
		            LDA #4;
		            STA minOnesPlace;
		            BRA done;
				data0101:	 
					LDA #5;
					STA minOnesPlace;
					BRA done;
				data011X:
					BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
			 		BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0111;
					;else min is six
					LDA #6;
					STA minOnesPlace;
					BRA done;
				data0111:
					LDA #7;
					STA minOnesPlace;	        
            done:
                 RTS;
