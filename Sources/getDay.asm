			INCLUDE 'derivative.inc'
			XDEF getDay;
            
			XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
            XREF dayTensPlace;
            XREF dayOnesPlace;
            
MY_ZEROPAGE: SECTION  SHORT
			
MyCode:     SECTION
getDay:
			;0 0 
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
            ;else is zero
            BCLR PTAD_PTAD3, PTAD; SCL
	 		NOP;
			NOP;
			NOP;
			LDA PTAD_PTAD2;
			BSET PTAD_PTAD3, PTAD; SCL
	 		CBEQA #1, one;
            ;else is zero
            LDA #0;
            STA dayTensPlace;
            BRA getOnesPlace;
            one:
            	LDA #1;
            	STA dayTensPlace;
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
	            STA dayTensPlace;
	            BRA getOnesPlace;
            three:
            	LDA #3;
            	STA dayTensPlace;
            getOnesPlace:
	            ;get onesPlace
	            BCLR PTAD_PTAD3, PTAD; SCL
		 		NOP;
				NOP;
				NOP;
				LDA PTAD_PTAD2;
				BSET PTAD_PTAD3, PTAD; SCL
		 		CBEQA #1, data1XXX;
	            ;else zero
	            BCLR PTAD_PTAD3, PTAD; SCL
		 		NOP;
				NOP;
				NOP;
				LDA PTAD_PTAD2;
				BSET PTAD_PTAD3, PTAD; SCL
		 		CBEQA #1, data01XX;
	            ;else zero
	            BCLR PTAD_PTAD3, PTAD; SCL
		 		NOP;
				NOP;
				NOP;
				LDA PTAD_PTAD2;
				BSET PTAD_PTAD3, PTAD; SCL
		 		CBEQA #1, data001X;
	            ;else zero
	            BCLR PTAD_PTAD3, PTAD; SCL
		 		NOP;
				NOP;
				NOP;
				LDA PTAD_PTAD2;
				BSET PTAD_PTAD3, PTAD; SCL
		 		CBEQA #1, data0001;
	            ;else day is zero
	            LDA #0;
	            STA dayOnesPlace;
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
		        	;else day is eight
		        	LDA #8;
		        	STA dayOnesPlace;
		        	BRA done;
		        data1001:
		        	LDA #9;
		        	STA dayOnesPlace;	
		        	BRA done;
	            data0001:
	            	LDA #1;
	            	STA dayOnesPlace;
	            	BRA done;
	            data001X:
		            BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
					BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0011;
		            ;else day is two
		            LDA #2;
		            STA dayOnesPlace;
		            BRA done;
		        data0011:
		        	LDA #3;
		        	STA dayOnesPlace;
		        	BRA done;
	            data01XX:
	            	BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
					BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data011X;
		            ;else zero
		            BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
					BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0101;
		            ;else day is four
		            LDA #4;
		            STA dayOnesPlace;
		            BRA done;
				data0101:	 
					LDA #5;
					STA dayOnesPlace;
					BRA done;
				data011X:
					BCLR PTAD_PTAD3, PTAD; SCL
			 		NOP;
					NOP;
					NOP;
					LDA PTAD_PTAD2;
					BSET PTAD_PTAD3, PTAD; SCL
			 		CBEQA #1, data0111;
					;else day is six
					LDA #6;
					STA dayOnesPlace;
					LDA #5;
					STA dayOnesPlace;
					BRA done;
				data0111:
					LDA #7;
					STA dayOnesPlace;	        
            done:
                 RTS;
