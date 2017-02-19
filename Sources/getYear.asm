			INCLUDE 'derivative.inc'
			XDEF getYear;
            
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF yearTensPlace;
            XREF yearOnesPlace;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
getYear:
			;00
			BCLR PTAD_PTAD3, PTAD; SCL
	 		BSET PTAD_PTAD3, PTAD; SCL
	 		BCLR PTAD_PTAD3, PTAD; SCL
	 		BSET PTAD_PTAD3, PTAD; SCL
	 		;get tensPlace
            BCLR PTAD_PTAD3, PTAD; SCL
	 		NOP;
			NOP;
			NOP;
			LDA PTAD_PTAD2;
			BSET PTAD_PTAD3, PTAD; SCL
	 		CBEQA #1, isOne;
            BCLR PTAD_PTAD3, PTAD; SCL
	 		NOP;
			NOP;
			NOP;
			LDA PTAD_PTAD2;
			BSET PTAD_PTAD3, PTAD; SCL
	 		CBEQA #1, one;
            LDA #0;
            STA yearTensPlace;
            BRA getOnesPlace;
            one:
            	LDA #1;
            	STA yearTensPlace;
            	BRA getOnesPlace;
            isOne:
		        BCLR PTAD_PTAD3, PTAD; SCL
		 		NOP;
				NOP;
				NOP;
				LDA PTAD_PTAD2;
				BSET PTAD_PTAD3, PTAD; SCL
		 		CBEQA #1, three;
	            LDA #2;
	            STA yearTensPlace;
	            BRA getOnesPlace;
            three:
            	LDA #3;
            	STA yearTensPlace;
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
	            ;else year is zero
	            LDA #0;
	            STA yearOnesPlace;
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
		        	;else year is eight
		        	LDA #8;
		        	STA yearOnesPlace;
		        	BRA done;
		        data1001:
		        	LDA #9;
		        	STA yearOnesPlace;	
		        	BRA done;
	            data0001:
	            	LDA #1;
	            	STA yearOnesPlace;
	            	BRA done;
	            data001X:
		            BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
					BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0011;
		            ;else year is two
		            LDA #2;
		            STA yearOnesPlace;
		            BRA done;
		        data0011:
		        	LDA #3;
		        	STA yearOnesPlace;
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
		            ;else year is four
		            LDA #4;
		            STA yearOnesPlace;
		            BRA done;
				data0101:	 
					LDA #5;
					STA yearOnesPlace;
					BRA done;
				data011X:
					BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
					BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0111;
					;else year is six
					LDA #6;
					STA yearOnesPlace;
					LDA #5;
					STA yearOnesPlace;
					BRA done;
				data0111:
					LDA #7;
					STA yearOnesPlace;	        
            done:
                 RTS;
