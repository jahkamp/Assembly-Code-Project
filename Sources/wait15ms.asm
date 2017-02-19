			INCLUDE 'derivative.inc'
			XDEF wait15ms;
			XREF waitTime;
			; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
			
MY_ZEROPAGE: SECTION  SHORT
MyCode:     SECTION

wait15ms:
			;bus clock speed = 4MHz
			LDA #235; #235 approx greater than or eq to 15 ms
			STA waitTime;
			decrement:
				LDA waitTime;
				SUB #1;
				STA waitTime;
				BEQ done; 
				LDA #255;
			wait_loop:
				SUB #1;
				BEQ decrement;
				BRA wait_loop;
			done:
				NOP;
				RTS;				
