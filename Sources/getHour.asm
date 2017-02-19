			INCLUDE 'derivative.inc'
			XDEF getHour;
            
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF hourTensPlace;
            XREF hourOnesPlace;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
getHour:
			;000
			BCLR PTAD_PTAD3, PTAD; SCL
	 		BSET PTAD_PTAD3, PTAD; SCL
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
	 		CBEQA #1, one;
            LDA #0;
            STA hourTensPlace;
            BRA getOnesPlace;
            one:
            	LDA #1;
            	STA hourTensPlace;
            	BRA getOnesPlace;
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
	            ;else hour is zero
	            LDA #0;
	            STA hourOnesPlace;
	            RTS;
	            data1XXX:
		        	;we only support up to nine = 1001
		        	BCLR PTAD_PTAD3, PTAD; SCL
			 		BSET PTAD_PTAD3, PTAD; SCL
			 		BCLR PTAD_PTAD3, PTAD; SCL
			 		BSET PTAD_PTAD3, PTAD; SCL
			 		BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
					BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data1001;
		        	;else hour is eight
		        	LDA #8;
		        	STA hourOnesPlace;
		        	RTS;
		        data1001:
		        	LDA #9;
		        	STA hourOnesPlace;	
		        	RTS;
	            data0001:
	            	LDA #1;
	            	STA hourOnesPlace;
	            	RTS;
	            data001X:
		            BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
					BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0011;
		            ;else hour is two
		            LDA #2;
		            STA hourOnesPlace;
		            RTS;
		        data0011:
		        	LDA #3;
		        	STA hourOnesPlace;
		        	RTS;
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
		            ;else hour is four
		            LDA #4;
		            STA hourOnesPlace;
		            RTS;
				data0101:	 
					LDA #5;
					STA hourOnesPlace;
					RTS;
				data011X:
					BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
					BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0111;
					;else hour is six
					LDA #6;
					STA hourOnesPlace;
					RTS;
				data0111:
					LDA #7;
					STA hourOnesPlace;	        
            		RTS;
