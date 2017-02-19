;*******************************************************************
;* This stationery serves as the framework for a user application. *
;* For a more comprehensive program that demonstrates the more     *
;* advanced functionality of this processor, please see the        *
;* demonstration applications, located in the examples             *
;* subdirectory of the "Freescale CodeWarrior for HC08" program    *
;* directory.                                                      *
;*******************************************************************

; Include derivative-specific definitions
            INCLUDE 'derivative.inc'
            XREF MCU_init

; export symbols
            XDEF _Startup, main
            XDEF rowNum;
            XDEF yearTensPlace;
            XDEF yearOnesPlace;
            XDEF dayTensPlace;
            XDEF dayOnesPlace;
            XDEF monthTensPlace;
            XDEF monthOnesPlace;
            XDEF hourTensPlace;
            XDEF hourOnesPlace;
            XDEF minTensPlace;
            XDEF minOnesPlace;
            XDEF secTensPlace;
            XDEF secOnesPlace;
            XDEF btnClicks;
            XDEF btnCode;
            XDEF busLinesInput;
            XDEF heartbeat;
            XDEF waitTime;
            XDEF waitNumber;
            ;XDEF keypadReadInProgress;
            ;XDEF nReadings;
            ;XDEF aveTempOnboard;
            ;left of the decimal place bytes
            ;XDEF fourthLeftByte; bits from 31 downto 24
            ;XDEF thirdLeftByte; bits from 23 downto 16
            ;XDEF secondLeftByte; bits from 15 downto 8
            ;XDEF firstLeftByte; bits from 7 downto 0
            ;right of the decimal place byte
            ;XDEF rightByte;
            ;XDEF tempSumLeftL;
            ;XDEF tempSumLeftH;
            ;XDEF tempSumRight;
            ;XDEF hundredsC;
            ;XDEF tensC;
            ;XDEF onesC;
            ;XDEF pointOnesC;
            ;XDEF vOut;
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            
            XREF __SEG_END_SSTACK   ; symbol defined by the linker for the end of the stack
			XREF subRtnRows;
			XREF btn1;
			XREF btn2;
			XREF btn3;
			XREF btnA;
			XREF btn4;
			XREF btn5;
			XREF btn6;
			XREF btnB;
			XREF btn7;
			XREF btn8;
			XREF btn9;
			XREF btnC;
			XREF btnStar;
			XREF btn0;
			XREF btnHash;
			XREF btnD;
			XREF initializeLCD;
			XREF wait15ms;
			XREF selectY0;
			XREF selectY1;
			XREF moveCursor;
			;XREF enterN;
			;XREF ADC_Init;
			;XREF writeSix;
			;XREF reqOut;
			XREF wait1s;
			XREF subRtnHb;
			XREF time2GetReal;
			XREF date;
			XREF time;
			XREF getClock;
			
; variable/data section
MY_ZEROPAGE: SECTION  SHORT         ; Insert here your data definition
rowNum: DS.B 1
btnClicks: DS.B 1
btnCode: DS.B 1
busLinesInput: DS.B 1;
heartbeat: DS.B 1;
waitTime: DS.B 1;
waitNumber: DS.B 1;
;keypadReadInProgress: DS.B 1;
;nReadings: DS.B 1;
;aveTempOnboard: DS.B 1;
;fourthLeftByte: DS.B 1;
;thirdLeftByte: 	DS.B 1;
;secondLeftByte: DS.B 1;
;firstLeftByte: 	DS.B 1;
;rightByte: 	 DS.B 1;
;hundredsC: 	 DS.B 1;
;tensC: 	 DS.B 1;
;onesC: 	 DS.B 1;
;pointOnesC: 	DS.B 1;
yearTensPlace: 	 DS.B 1;
yearOnesPlace: 	 DS.B 1;
dayTensPlace: 	 DS.B 1;
dayOnesPlace: 	 DS.B 1;
monthTensPlace: 	 DS.B 1;
monthOnesPlace: 	 DS.B 1;
hourTensPlace: 	 DS.B 1;
hourOnesPlace: 	 DS.B 1;
minTensPlace: 	 DS.B 1;
minOnesPlace: 	 DS.B 1;
secTensPlace: 	 DS.B 1;
secOnesPlace: 	 DS.B 1;
;tempSumLeftH: 	DS.B 1; high byte of left side of decimal
;tempSumLeftL: 	DS.B 1; low byte of left side of decimal
;tempSumRight:	DS.B 1; one byte for the right side of decimal
;vOut:	DS.B 1; 
; code section
MyCode:     SECTION
main:
_Startup:
            LDHX   #__SEG_END_SSTACK ; initialize the stack pointer
            TXS
			; Call generated device initialization function
			
			;initialize
			JSR    MCU_init
			BSET PTAD_PTAD2, PTAD;	SDA 
            BSET PTAD_PTAD3, PTAD; SCL 
            
			;set port data directions
			BSET PTAD_PTAD0, PTADD; LCD RW 
			BSET PTAD_PTAD1, PTADD;	LCD RS
            BSET PTAD_PTAD2, PTADD;	SDA 
            BSET PTAD_PTAD3, PTADD; SCL 
            BSET PTBD_PTBD0, PTBDD; A
            BSET PTBD_PTBD1, PTBDD; B
            BSET PTBD_PTBD2, PTBDD; C
            BSET PTBD_PTBD3, PTBDD; G2T, is always high
           	BSET PTBD_PTBD4, PTBDD; Bus 1
            BSET PTBD_PTBD5, PTBDD; Bus 2
            BSET PTBD_PTBD6, PTBDD; Bus 3
            BSET PTBD_PTBD7, PTBDD; Bus 4            
			LDA #%00010000; this is the code for no buttons pressed
			STA btnCode;
			LDA #0;
			STA btnClicks;
			STA busLinesInput;
			STA rowNum;
			STA waitNumber;
			;STA nReadings;
			;STA vOut;
			;LCD
			JSR initializeLCD;
			;LM19 and RC circuit
			;JSR ADC_Init;
			;done initializing
			
			;Flash startup pattern
			BSET PTBD_PTBD4, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD7, PTBD;			
			;select y0
			JSR selectY0;
			;select y1
			JSR selectY1;
			JSR wait15ms;
			BCLR PTBD_PTBD4, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BSET PTBD_PTBD7, PTBD;			
			;select y0
			JSR selectY0;
			;select y1
			JSR selectY1;
			JSR wait15ms;
			BCLR PTBD_PTBD4, PTBD;
			BSET PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD7, PTBD;			
			;select y0
			JSR selectY0;
			;select y1
			JSR selectY1;
			JSR wait15ms;
			BCLR PTBD_PTBD4, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BSET PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD7, PTBD;			
			;select y0
			JSR selectY0;
			;select y1
			JSR selectY1;
			JSR wait15ms;
			BCLR PTBD_PTBD4, PTBD;
			BCLR PTBD_PTBD5, PTBD;
			BCLR PTBD_PTBD6, PTBD;
			BCLR PTBD_PTBD7, PTBD;			
			;select y0
			JSR selectY0;
			;select y1
			JSR selectY1;
			
			;Display Starting Dialog on LCD 
			;JSR enterN;"Enter n:			
			;JSR reqOut;"Req Out ="
			JSR time2GetReal; "What's the time? "
			
			;disable watchdog
            ;LDA #$53								;(2)
            ;STA SOPT1 
mainLoop:
           ; EELE 465 Lab 1
            ; Jared Kamp
            ; Robert Murch
            ; 2/9/16
            
            feed_watchdog;
            
            LDA #10; 
			STA waitNumber;
			decrement:
				;read keypad
	            JSR subRtnRows;
	            ;handle button presses
	            ;123A
				JSR btn1;
				JSR btn2;
				JSR btn3;
				JSR btnA;
	            ;456B
				JSR btn4;
				JSR btn5;
				JSR btn6;
				JSR btnB;
	            ;789C
				JSR btn7;
				JSR btn8;
				JSR btn9;
				JSR btnC;
	            ;*0#D
				JSR btnStar;
				JSR btn0;
				JSR btnHash;
				JSR btnD;
				
				JSR wait15ms;
				LDA waitNumber;
				SUB #1;
				STA waitNumber;
				BEQ toggleHeartbeat; 
				BRA decrement;
			toggleHeartbeat:
            	JSR subRtnHb;
            LDA btnClicks;
            CBEQA #12, displayDate;
            BRA done;
            displayDate:
            	JSR getClock; update values
            	JSR date; set date
            	JSR time; set time
          	done:
	            ;loop forever
				BRA mainLoop;
