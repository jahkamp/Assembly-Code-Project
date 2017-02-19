			INCLUDE 'derivative.inc'
			XDEF wait100us;
			XREF waitTime;
			; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            
            XREF XOR_mask_C, XOR_mask_C2  ; symbol defined by the linker for the end of the stack
						
MY_ZEROPAGE: SECTION  SHORT
MyCode:     SECTION

wait100us:
			;bus clock speed = 4MHz
			LDA #2; #2 approx eq to 0.1 ms
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
				RTS;				
