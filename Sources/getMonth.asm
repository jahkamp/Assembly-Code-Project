			INCLUDE 'derivative.inc'
			XDEF getMonth;
            
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF monthTensPlace;
            XREF monthOnesPlace;
			
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
getMonth:
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
            STA monthTensPlace;
            BRA getOnesPlace;
            one:
            	LDA #1;
            	STA monthTensPlace;
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
	            ;else month is zero
	            LDA #0;
	            STA monthOnesPlace;
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
		        	;else month is eight
		        	LDA #8;
		        	STA monthOnesPlace;
		        	RTS;
		        data1001:
		        	LDA #9;
		        	STA monthOnesPlace;	
		        	RTS;
	            data0001:
	            	LDA #1;
	            	STA monthOnesPlace;
	            	RTS;
	            data001X:
		            BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
					BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0011;
		            ;else month is two
		            LDA #2;
		            STA monthOnesPlace;
		            RTS;
		        data0011:
		        	LDA #3;
		        	STA monthOnesPlace;
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
		            ;else month is four
		            LDA #4;
		            STA monthOnesPlace;
		            RTS;
				data0101:	 
					LDA #5;
					STA monthOnesPlace;
					RTS;
				data011X:
					BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
					BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0111;
					;else month is six
					LDA #6;
					STA monthOnesPlace;
					LDA #5;
					STA monthOnesPlace;
					RTS;
				data0111:
					LDA #7;
					STA monthOnesPlace;
					RTS;
