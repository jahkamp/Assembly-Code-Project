			INCLUDE 'derivative.inc'
			XDEF getSec;
            
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF secTensPlace;
            XREF secOnesPlace;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
getSec:
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
            STA secTensPlace;
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
	            STA secTensPlace;
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
	            STA secTensPlace;
	            BRA getOnesPlace;
            thirdBitIsOne:
            	;if we get here 1st and 3rd bits are zero;
	            LDA #1;
	            STA secTensPlace;
	            BRA getOnesPlace;
	        firstAndSecondBitsAreOne:
	        	;we cant exceed six
	            LDA #6;
	            STA secTensPlace;
	            BRA getOnesPlace;
            firstAndThirdBitsAreOne:
            	LDA #5;
	            STA secTensPlace;
	            BRA getOnesPlace;
	        secondAndThirdBitsAreOne:
            	LDA #3;
	            STA secTensPlace;
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
	            ;else sec is zero
	            LDA #0;
	            STA secOnesPlace;
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
		        	;else sec is eight
		        	LDA #8;
		        	STA secOnesPlace;
		        	BRA done;
		        data1001:
		        	LDA #9;
		        	STA secOnesPlace;	
		        	BRA done;
	            data0001:
	            	LDA #1;
	            	STA secOnesPlace;
	            	BRA done;
	            data001X:
		            BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
			 		BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0011;
		            ;else sec is two
		            LDA #2;
		            STA secOnesPlace;
		            BRA done;
		        data0011:
		        	LDA #3;
		        	STA secOnesPlace;
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
		            ;else sec is four
		            LDA #4;
		            STA secOnesPlace;
		            BRA done;
				data0101:	 
					LDA #5;
					STA secOnesPlace;
					BRA done;
				data011X:
					BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
			 		BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0111;
					;else sec is six
					LDA #6;
					STA secOnesPlace;
					BRA done;
				data0111:
					LDA #7;
					STA secOnesPlace;	        
            done:
                 RTS;
