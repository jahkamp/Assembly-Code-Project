################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../Sources/Date.asm \
../Sources/MCUinit.asm \
../Sources/Time.asm \
../Sources/Time2GetReal.asm \
../Sources/btnA.asm \
../Sources/btnB.asm \
../Sources/btnC.asm \
../Sources/btnD.asm \
../Sources/btnEight.asm \
../Sources/btnFive.asm \
../Sources/btnFour.asm \
../Sources/btnHandled.asm \
../Sources/btnHash.asm \
../Sources/btnNine.asm \
../Sources/btnOne.asm \
../Sources/btnSeven.asm \
../Sources/btnSix.asm \
../Sources/btnStar.asm \
../Sources/btnThree.asm \
../Sources/btnTwo.asm \
../Sources/btnZero.asm \
../Sources/clearLCD.asm \
../Sources/clockAddress.asm \
../Sources/clockG2T.asm \
../Sources/columnOne.asm \
../Sources/columnThree.asm \
../Sources/columnTwo.asm \
../Sources/columnZero.asm \
../Sources/dayAddress.asm \
../Sources/fourBitEightBang.asm \
../Sources/fourBitFiveBang.asm \
../Sources/fourBitFourBang.asm \
../Sources/fourBitNineBang.asm \
../Sources/fourBitSevenBang.asm \
../Sources/fourBitSixBang.asm \
../Sources/fourBitSoloBang.asm \
../Sources/fourBitThreeBang.asm \
../Sources/fourBitTwoBang.asm \
../Sources/getClock.asm \
../Sources/getDay.asm \
../Sources/getHour.asm \
../Sources/getMin.asm \
../Sources/getMonth.asm \
../Sources/getSec.asm \
../Sources/getYear.asm \
../Sources/hourAddress.asm \
../Sources/i2cClock.asm \
../Sources/i2cStart.asm \
../Sources/i2cStop.asm \
../Sources/initializeLCD.asm \
../Sources/main.asm \
../Sources/minAddress.asm \
../Sources/monthAddress.asm \
../Sources/moveCursor.asm \
../Sources/readAcknowledge.asm \
../Sources/secAddress.asm \
../Sources/selectLEDS.asm \
../Sources/selectY2.asm \
../Sources/selectY3.asm \
../Sources/selectY4.asm \
../Sources/setClock.asm \
../Sources/setDay.asm \
../Sources/setHour.asm \
../Sources/setMin.asm \
../Sources/setMonth.asm \
../Sources/setSec.asm \
../Sources/setYear.asm \
../Sources/subRtnCol.asm \
../Sources/subRtnHb.asm \
../Sources/subRtnRows.asm \
../Sources/wait100us.asm \
../Sources/wait15ms.asm \
../Sources/wait1600us.asm \
../Sources/wait40us.asm \
../Sources/wait4100us.asm \
../Sources/writeA_lowercase.asm \
../Sources/writeAcknowledge.asm \
../Sources/writeColon.asm \
../Sources/writeD.asm \
../Sources/writeDay.asm \
../Sources/writeE_lowercase.asm \
../Sources/writeEight.asm \
../Sources/writeFive.asm \
../Sources/writeForwardSlash.asm \
../Sources/writeFour.asm \
../Sources/writeH_lowercase.asm \
../Sources/writeHour.asm \
../Sources/writeI_lowercase.asm \
../Sources/writeLCD.asm \
../Sources/writeM_lowercase.asm \
../Sources/writeMin.asm \
../Sources/writeMonth.asm \
../Sources/writeNine.asm \
../Sources/writeOne.asm \
../Sources/writeQuestion.asm \
../Sources/writeQuote.asm \
../Sources/writeS_lowercase.asm \
../Sources/writeSec.asm \
../Sources/writeSeven.asm \
../Sources/writeSix.asm \
../Sources/writeSpace.asm \
../Sources/writeT.asm \
../Sources/writeT_lowercase.asm \
../Sources/writeThree.asm \
../Sources/writeTwo.asm \
../Sources/writeW.asm \
../Sources/writeYear.asm \
../Sources/writeZero.asm \
../Sources/yearAddress.asm \

ASM_SRCS_QUOTED += \
"../Sources/Date.asm" \
"../Sources/MCUinit.asm" \
"../Sources/Time.asm" \
"../Sources/Time2GetReal.asm" \
"../Sources/btnA.asm" \
"../Sources/btnB.asm" \
"../Sources/btnC.asm" \
"../Sources/btnD.asm" \
"../Sources/btnEight.asm" \
"../Sources/btnFive.asm" \
"../Sources/btnFour.asm" \
"../Sources/btnHandled.asm" \
"../Sources/btnHash.asm" \
"../Sources/btnNine.asm" \
"../Sources/btnOne.asm" \
"../Sources/btnSeven.asm" \
"../Sources/btnSix.asm" \
"../Sources/btnStar.asm" \
"../Sources/btnThree.asm" \
"../Sources/btnTwo.asm" \
"../Sources/btnZero.asm" \
"../Sources/clearLCD.asm" \
"../Sources/clockAddress.asm" \
"../Sources/clockG2T.asm" \
"../Sources/columnOne.asm" \
"../Sources/columnThree.asm" \
"../Sources/columnTwo.asm" \
"../Sources/columnZero.asm" \
"../Sources/dayAddress.asm" \
"../Sources/fourBitEightBang.asm" \
"../Sources/fourBitFiveBang.asm" \
"../Sources/fourBitFourBang.asm" \
"../Sources/fourBitNineBang.asm" \
"../Sources/fourBitSevenBang.asm" \
"../Sources/fourBitSixBang.asm" \
"../Sources/fourBitSoloBang.asm" \
"../Sources/fourBitThreeBang.asm" \
"../Sources/fourBitTwoBang.asm" \
"../Sources/getClock.asm" \
"../Sources/getDay.asm" \
"../Sources/getHour.asm" \
"../Sources/getMin.asm" \
"../Sources/getMonth.asm" \
"../Sources/getSec.asm" \
"../Sources/getYear.asm" \
"../Sources/hourAddress.asm" \
"../Sources/i2cClock.asm" \
"../Sources/i2cStart.asm" \
"../Sources/i2cStop.asm" \
"../Sources/initializeLCD.asm" \
"../Sources/main.asm" \
"../Sources/minAddress.asm" \
"../Sources/monthAddress.asm" \
"../Sources/moveCursor.asm" \
"../Sources/readAcknowledge.asm" \
"../Sources/secAddress.asm" \
"../Sources/selectLEDS.asm" \
"../Sources/selectY2.asm" \
"../Sources/selectY3.asm" \
"../Sources/selectY4.asm" \
"../Sources/setClock.asm" \
"../Sources/setDay.asm" \
"../Sources/setHour.asm" \
"../Sources/setMin.asm" \
"../Sources/setMonth.asm" \
"../Sources/setSec.asm" \
"../Sources/setYear.asm" \
"../Sources/subRtnCol.asm" \
"../Sources/subRtnHb.asm" \
"../Sources/subRtnRows.asm" \
"../Sources/wait100us.asm" \
"../Sources/wait15ms.asm" \
"../Sources/wait1600us.asm" \
"../Sources/wait40us.asm" \
"../Sources/wait4100us.asm" \
"../Sources/writeA_lowercase.asm" \
"../Sources/writeAcknowledge.asm" \
"../Sources/writeColon.asm" \
"../Sources/writeD.asm" \
"../Sources/writeDay.asm" \
"../Sources/writeE_lowercase.asm" \
"../Sources/writeEight.asm" \
"../Sources/writeFive.asm" \
"../Sources/writeForwardSlash.asm" \
"../Sources/writeFour.asm" \
"../Sources/writeH_lowercase.asm" \
"../Sources/writeHour.asm" \
"../Sources/writeI_lowercase.asm" \
"../Sources/writeLCD.asm" \
"../Sources/writeM_lowercase.asm" \
"../Sources/writeMin.asm" \
"../Sources/writeMonth.asm" \
"../Sources/writeNine.asm" \
"../Sources/writeOne.asm" \
"../Sources/writeQuestion.asm" \
"../Sources/writeQuote.asm" \
"../Sources/writeS_lowercase.asm" \
"../Sources/writeSec.asm" \
"../Sources/writeSeven.asm" \
"../Sources/writeSix.asm" \
"../Sources/writeSpace.asm" \
"../Sources/writeT.asm" \
"../Sources/writeT_lowercase.asm" \
"../Sources/writeThree.asm" \
"../Sources/writeTwo.asm" \
"../Sources/writeW.asm" \
"../Sources/writeYear.asm" \
"../Sources/writeZero.asm" \
"../Sources/yearAddress.asm" \

OBJS += \
./Sources/Date_asm.obj \
./Sources/MCUinit_asm.obj \
./Sources/Time_asm.obj \
./Sources/Time2GetReal_asm.obj \
./Sources/btnA_asm.obj \
./Sources/btnB_asm.obj \
./Sources/btnC_asm.obj \
./Sources/btnD_asm.obj \
./Sources/btnEight_asm.obj \
./Sources/btnFive_asm.obj \
./Sources/btnFour_asm.obj \
./Sources/btnHandled_asm.obj \
./Sources/btnHash_asm.obj \
./Sources/btnNine_asm.obj \
./Sources/btnOne_asm.obj \
./Sources/btnSeven_asm.obj \
./Sources/btnSix_asm.obj \
./Sources/btnStar_asm.obj \
./Sources/btnThree_asm.obj \
./Sources/btnTwo_asm.obj \
./Sources/btnZero_asm.obj \
./Sources/clearLCD_asm.obj \
./Sources/clockAddress_asm.obj \
./Sources/clockG2T_asm.obj \
./Sources/columnOne_asm.obj \
./Sources/columnThree_asm.obj \
./Sources/columnTwo_asm.obj \
./Sources/columnZero_asm.obj \
./Sources/dayAddress_asm.obj \
./Sources/fourBitEightBang_asm.obj \
./Sources/fourBitFiveBang_asm.obj \
./Sources/fourBitFourBang_asm.obj \
./Sources/fourBitNineBang_asm.obj \
./Sources/fourBitSevenBang_asm.obj \
./Sources/fourBitSixBang_asm.obj \
./Sources/fourBitSoloBang_asm.obj \
./Sources/fourBitThreeBang_asm.obj \
./Sources/fourBitTwoBang_asm.obj \
./Sources/getClock_asm.obj \
./Sources/getDay_asm.obj \
./Sources/getHour_asm.obj \
./Sources/getMin_asm.obj \
./Sources/getMonth_asm.obj \
./Sources/getSec_asm.obj \
./Sources/getYear_asm.obj \
./Sources/hourAddress_asm.obj \
./Sources/i2cClock_asm.obj \
./Sources/i2cStart_asm.obj \
./Sources/i2cStop_asm.obj \
./Sources/initializeLCD_asm.obj \
./Sources/main_asm.obj \
./Sources/minAddress_asm.obj \
./Sources/monthAddress_asm.obj \
./Sources/moveCursor_asm.obj \
./Sources/readAcknowledge_asm.obj \
./Sources/secAddress_asm.obj \
./Sources/selectLEDS_asm.obj \
./Sources/selectY2_asm.obj \
./Sources/selectY3_asm.obj \
./Sources/selectY4_asm.obj \
./Sources/setClock_asm.obj \
./Sources/setDay_asm.obj \
./Sources/setHour_asm.obj \
./Sources/setMin_asm.obj \
./Sources/setMonth_asm.obj \
./Sources/setSec_asm.obj \
./Sources/setYear_asm.obj \
./Sources/subRtnCol_asm.obj \
./Sources/subRtnHb_asm.obj \
./Sources/subRtnRows_asm.obj \
./Sources/wait100us_asm.obj \
./Sources/wait15ms_asm.obj \
./Sources/wait1600us_asm.obj \
./Sources/wait40us_asm.obj \
./Sources/wait4100us_asm.obj \
./Sources/writeA_lowercase_asm.obj \
./Sources/writeAcknowledge_asm.obj \
./Sources/writeColon_asm.obj \
./Sources/writeD_asm.obj \
./Sources/writeDay_asm.obj \
./Sources/writeE_lowercase_asm.obj \
./Sources/writeEight_asm.obj \
./Sources/writeFive_asm.obj \
./Sources/writeForwardSlash_asm.obj \
./Sources/writeFour_asm.obj \
./Sources/writeH_lowercase_asm.obj \
./Sources/writeHour_asm.obj \
./Sources/writeI_lowercase_asm.obj \
./Sources/writeLCD_asm.obj \
./Sources/writeM_lowercase_asm.obj \
./Sources/writeMin_asm.obj \
./Sources/writeMonth_asm.obj \
./Sources/writeNine_asm.obj \
./Sources/writeOne_asm.obj \
./Sources/writeQuestion_asm.obj \
./Sources/writeQuote_asm.obj \
./Sources/writeS_lowercase_asm.obj \
./Sources/writeSec_asm.obj \
./Sources/writeSeven_asm.obj \
./Sources/writeSix_asm.obj \
./Sources/writeSpace_asm.obj \
./Sources/writeT_asm.obj \
./Sources/writeT_lowercase_asm.obj \
./Sources/writeThree_asm.obj \
./Sources/writeTwo_asm.obj \
./Sources/writeW_asm.obj \
./Sources/writeYear_asm.obj \
./Sources/writeZero_asm.obj \
./Sources/yearAddress_asm.obj \

ASM_DEPS += \
./Sources/Date_asm.d \
./Sources/MCUinit_asm.d \
./Sources/Time_asm.d \
./Sources/Time2GetReal_asm.d \
./Sources/btnA_asm.d \
./Sources/btnB_asm.d \
./Sources/btnC_asm.d \
./Sources/btnD_asm.d \
./Sources/btnEight_asm.d \
./Sources/btnFive_asm.d \
./Sources/btnFour_asm.d \
./Sources/btnHandled_asm.d \
./Sources/btnHash_asm.d \
./Sources/btnNine_asm.d \
./Sources/btnOne_asm.d \
./Sources/btnSeven_asm.d \
./Sources/btnSix_asm.d \
./Sources/btnStar_asm.d \
./Sources/btnThree_asm.d \
./Sources/btnTwo_asm.d \
./Sources/btnZero_asm.d \
./Sources/clearLCD_asm.d \
./Sources/clockAddress_asm.d \
./Sources/clockG2T_asm.d \
./Sources/columnOne_asm.d \
./Sources/columnThree_asm.d \
./Sources/columnTwo_asm.d \
./Sources/columnZero_asm.d \
./Sources/dayAddress_asm.d \
./Sources/fourBitEightBang_asm.d \
./Sources/fourBitFiveBang_asm.d \
./Sources/fourBitFourBang_asm.d \
./Sources/fourBitNineBang_asm.d \
./Sources/fourBitSevenBang_asm.d \
./Sources/fourBitSixBang_asm.d \
./Sources/fourBitSoloBang_asm.d \
./Sources/fourBitThreeBang_asm.d \
./Sources/fourBitTwoBang_asm.d \
./Sources/getClock_asm.d \
./Sources/getDay_asm.d \
./Sources/getHour_asm.d \
./Sources/getMin_asm.d \
./Sources/getMonth_asm.d \
./Sources/getSec_asm.d \
./Sources/getYear_asm.d \
./Sources/hourAddress_asm.d \
./Sources/i2cClock_asm.d \
./Sources/i2cStart_asm.d \
./Sources/i2cStop_asm.d \
./Sources/initializeLCD_asm.d \
./Sources/main_asm.d \
./Sources/minAddress_asm.d \
./Sources/monthAddress_asm.d \
./Sources/moveCursor_asm.d \
./Sources/readAcknowledge_asm.d \
./Sources/secAddress_asm.d \
./Sources/selectLEDS_asm.d \
./Sources/selectY2_asm.d \
./Sources/selectY3_asm.d \
./Sources/selectY4_asm.d \
./Sources/setClock_asm.d \
./Sources/setDay_asm.d \
./Sources/setHour_asm.d \
./Sources/setMin_asm.d \
./Sources/setMonth_asm.d \
./Sources/setSec_asm.d \
./Sources/setYear_asm.d \
./Sources/subRtnCol_asm.d \
./Sources/subRtnHb_asm.d \
./Sources/subRtnRows_asm.d \
./Sources/wait100us_asm.d \
./Sources/wait15ms_asm.d \
./Sources/wait1600us_asm.d \
./Sources/wait40us_asm.d \
./Sources/wait4100us_asm.d \
./Sources/writeA_lowercase_asm.d \
./Sources/writeAcknowledge_asm.d \
./Sources/writeColon_asm.d \
./Sources/writeD_asm.d \
./Sources/writeDay_asm.d \
./Sources/writeE_lowercase_asm.d \
./Sources/writeEight_asm.d \
./Sources/writeFive_asm.d \
./Sources/writeForwardSlash_asm.d \
./Sources/writeFour_asm.d \
./Sources/writeH_lowercase_asm.d \
./Sources/writeHour_asm.d \
./Sources/writeI_lowercase_asm.d \
./Sources/writeLCD_asm.d \
./Sources/writeM_lowercase_asm.d \
./Sources/writeMin_asm.d \
./Sources/writeMonth_asm.d \
./Sources/writeNine_asm.d \
./Sources/writeOne_asm.d \
./Sources/writeQuestion_asm.d \
./Sources/writeQuote_asm.d \
./Sources/writeS_lowercase_asm.d \
./Sources/writeSec_asm.d \
./Sources/writeSeven_asm.d \
./Sources/writeSix_asm.d \
./Sources/writeSpace_asm.d \
./Sources/writeT_asm.d \
./Sources/writeT_lowercase_asm.d \
./Sources/writeThree_asm.d \
./Sources/writeTwo_asm.d \
./Sources/writeW_asm.d \
./Sources/writeYear_asm.d \
./Sources/writeZero_asm.d \
./Sources/yearAddress_asm.d \

OBJS_QUOTED += \
"./Sources/Date_asm.obj" \
"./Sources/MCUinit_asm.obj" \
"./Sources/Time_asm.obj" \
"./Sources/Time2GetReal_asm.obj" \
"./Sources/btnA_asm.obj" \
"./Sources/btnB_asm.obj" \
"./Sources/btnC_asm.obj" \
"./Sources/btnD_asm.obj" \
"./Sources/btnEight_asm.obj" \
"./Sources/btnFive_asm.obj" \
"./Sources/btnFour_asm.obj" \
"./Sources/btnHandled_asm.obj" \
"./Sources/btnHash_asm.obj" \
"./Sources/btnNine_asm.obj" \
"./Sources/btnOne_asm.obj" \
"./Sources/btnSeven_asm.obj" \
"./Sources/btnSix_asm.obj" \
"./Sources/btnStar_asm.obj" \
"./Sources/btnThree_asm.obj" \
"./Sources/btnTwo_asm.obj" \
"./Sources/btnZero_asm.obj" \
"./Sources/clearLCD_asm.obj" \
"./Sources/clockAddress_asm.obj" \
"./Sources/clockG2T_asm.obj" \
"./Sources/columnOne_asm.obj" \
"./Sources/columnThree_asm.obj" \
"./Sources/columnTwo_asm.obj" \
"./Sources/columnZero_asm.obj" \
"./Sources/dayAddress_asm.obj" \
"./Sources/fourBitEightBang_asm.obj" \
"./Sources/fourBitFiveBang_asm.obj" \
"./Sources/fourBitFourBang_asm.obj" \
"./Sources/fourBitNineBang_asm.obj" \
"./Sources/fourBitSevenBang_asm.obj" \
"./Sources/fourBitSixBang_asm.obj" \
"./Sources/fourBitSoloBang_asm.obj" \
"./Sources/fourBitThreeBang_asm.obj" \
"./Sources/fourBitTwoBang_asm.obj" \
"./Sources/getClock_asm.obj" \
"./Sources/getDay_asm.obj" \
"./Sources/getHour_asm.obj" \
"./Sources/getMin_asm.obj" \
"./Sources/getMonth_asm.obj" \
"./Sources/getSec_asm.obj" \
"./Sources/getYear_asm.obj" \
"./Sources/hourAddress_asm.obj" \
"./Sources/i2cClock_asm.obj" \
"./Sources/i2cStart_asm.obj" \
"./Sources/i2cStop_asm.obj" \
"./Sources/initializeLCD_asm.obj" \
"./Sources/main_asm.obj" \
"./Sources/minAddress_asm.obj" \
"./Sources/monthAddress_asm.obj" \
"./Sources/moveCursor_asm.obj" \
"./Sources/readAcknowledge_asm.obj" \
"./Sources/secAddress_asm.obj" \
"./Sources/selectLEDS_asm.obj" \
"./Sources/selectY2_asm.obj" \
"./Sources/selectY3_asm.obj" \
"./Sources/selectY4_asm.obj" \
"./Sources/setClock_asm.obj" \
"./Sources/setDay_asm.obj" \
"./Sources/setHour_asm.obj" \
"./Sources/setMin_asm.obj" \
"./Sources/setMonth_asm.obj" \
"./Sources/setSec_asm.obj" \
"./Sources/setYear_asm.obj" \
"./Sources/subRtnCol_asm.obj" \
"./Sources/subRtnHb_asm.obj" \
"./Sources/subRtnRows_asm.obj" \
"./Sources/wait100us_asm.obj" \
"./Sources/wait15ms_asm.obj" \
"./Sources/wait1600us_asm.obj" \
"./Sources/wait40us_asm.obj" \
"./Sources/wait4100us_asm.obj" \
"./Sources/writeA_lowercase_asm.obj" \
"./Sources/writeAcknowledge_asm.obj" \
"./Sources/writeColon_asm.obj" \
"./Sources/writeD_asm.obj" \
"./Sources/writeDay_asm.obj" \
"./Sources/writeE_lowercase_asm.obj" \
"./Sources/writeEight_asm.obj" \
"./Sources/writeFive_asm.obj" \
"./Sources/writeForwardSlash_asm.obj" \
"./Sources/writeFour_asm.obj" \
"./Sources/writeH_lowercase_asm.obj" \
"./Sources/writeHour_asm.obj" \
"./Sources/writeI_lowercase_asm.obj" \
"./Sources/writeLCD_asm.obj" \
"./Sources/writeM_lowercase_asm.obj" \
"./Sources/writeMin_asm.obj" \
"./Sources/writeMonth_asm.obj" \
"./Sources/writeNine_asm.obj" \
"./Sources/writeOne_asm.obj" \
"./Sources/writeQuestion_asm.obj" \
"./Sources/writeQuote_asm.obj" \
"./Sources/writeS_lowercase_asm.obj" \
"./Sources/writeSec_asm.obj" \
"./Sources/writeSeven_asm.obj" \
"./Sources/writeSix_asm.obj" \
"./Sources/writeSpace_asm.obj" \
"./Sources/writeT_asm.obj" \
"./Sources/writeT_lowercase_asm.obj" \
"./Sources/writeThree_asm.obj" \
"./Sources/writeTwo_asm.obj" \
"./Sources/writeW_asm.obj" \
"./Sources/writeYear_asm.obj" \
"./Sources/writeZero_asm.obj" \
"./Sources/yearAddress_asm.obj" \

ASM_DEPS_QUOTED += \
"./Sources/Date_asm.d" \
"./Sources/MCUinit_asm.d" \
"./Sources/Time_asm.d" \
"./Sources/Time2GetReal_asm.d" \
"./Sources/btnA_asm.d" \
"./Sources/btnB_asm.d" \
"./Sources/btnC_asm.d" \
"./Sources/btnD_asm.d" \
"./Sources/btnEight_asm.d" \
"./Sources/btnFive_asm.d" \
"./Sources/btnFour_asm.d" \
"./Sources/btnHandled_asm.d" \
"./Sources/btnHash_asm.d" \
"./Sources/btnNine_asm.d" \
"./Sources/btnOne_asm.d" \
"./Sources/btnSeven_asm.d" \
"./Sources/btnSix_asm.d" \
"./Sources/btnStar_asm.d" \
"./Sources/btnThree_asm.d" \
"./Sources/btnTwo_asm.d" \
"./Sources/btnZero_asm.d" \
"./Sources/clearLCD_asm.d" \
"./Sources/clockAddress_asm.d" \
"./Sources/clockG2T_asm.d" \
"./Sources/columnOne_asm.d" \
"./Sources/columnThree_asm.d" \
"./Sources/columnTwo_asm.d" \
"./Sources/columnZero_asm.d" \
"./Sources/dayAddress_asm.d" \
"./Sources/fourBitEightBang_asm.d" \
"./Sources/fourBitFiveBang_asm.d" \
"./Sources/fourBitFourBang_asm.d" \
"./Sources/fourBitNineBang_asm.d" \
"./Sources/fourBitSevenBang_asm.d" \
"./Sources/fourBitSixBang_asm.d" \
"./Sources/fourBitSoloBang_asm.d" \
"./Sources/fourBitThreeBang_asm.d" \
"./Sources/fourBitTwoBang_asm.d" \
"./Sources/getClock_asm.d" \
"./Sources/getDay_asm.d" \
"./Sources/getHour_asm.d" \
"./Sources/getMin_asm.d" \
"./Sources/getMonth_asm.d" \
"./Sources/getSec_asm.d" \
"./Sources/getYear_asm.d" \
"./Sources/hourAddress_asm.d" \
"./Sources/i2cClock_asm.d" \
"./Sources/i2cStart_asm.d" \
"./Sources/i2cStop_asm.d" \
"./Sources/initializeLCD_asm.d" \
"./Sources/main_asm.d" \
"./Sources/minAddress_asm.d" \
"./Sources/monthAddress_asm.d" \
"./Sources/moveCursor_asm.d" \
"./Sources/readAcknowledge_asm.d" \
"./Sources/secAddress_asm.d" \
"./Sources/selectLEDS_asm.d" \
"./Sources/selectY2_asm.d" \
"./Sources/selectY3_asm.d" \
"./Sources/selectY4_asm.d" \
"./Sources/setClock_asm.d" \
"./Sources/setDay_asm.d" \
"./Sources/setHour_asm.d" \
"./Sources/setMin_asm.d" \
"./Sources/setMonth_asm.d" \
"./Sources/setSec_asm.d" \
"./Sources/setYear_asm.d" \
"./Sources/subRtnCol_asm.d" \
"./Sources/subRtnHb_asm.d" \
"./Sources/subRtnRows_asm.d" \
"./Sources/wait100us_asm.d" \
"./Sources/wait15ms_asm.d" \
"./Sources/wait1600us_asm.d" \
"./Sources/wait40us_asm.d" \
"./Sources/wait4100us_asm.d" \
"./Sources/writeA_lowercase_asm.d" \
"./Sources/writeAcknowledge_asm.d" \
"./Sources/writeColon_asm.d" \
"./Sources/writeD_asm.d" \
"./Sources/writeDay_asm.d" \
"./Sources/writeE_lowercase_asm.d" \
"./Sources/writeEight_asm.d" \
"./Sources/writeFive_asm.d" \
"./Sources/writeForwardSlash_asm.d" \
"./Sources/writeFour_asm.d" \
"./Sources/writeH_lowercase_asm.d" \
"./Sources/writeHour_asm.d" \
"./Sources/writeI_lowercase_asm.d" \
"./Sources/writeLCD_asm.d" \
"./Sources/writeM_lowercase_asm.d" \
"./Sources/writeMin_asm.d" \
"./Sources/writeMonth_asm.d" \
"./Sources/writeNine_asm.d" \
"./Sources/writeOne_asm.d" \
"./Sources/writeQuestion_asm.d" \
"./Sources/writeQuote_asm.d" \
"./Sources/writeS_lowercase_asm.d" \
"./Sources/writeSec_asm.d" \
"./Sources/writeSeven_asm.d" \
"./Sources/writeSix_asm.d" \
"./Sources/writeSpace_asm.d" \
"./Sources/writeT_asm.d" \
"./Sources/writeT_lowercase_asm.d" \
"./Sources/writeThree_asm.d" \
"./Sources/writeTwo_asm.d" \
"./Sources/writeW_asm.d" \
"./Sources/writeYear_asm.d" \
"./Sources/writeZero_asm.d" \
"./Sources/yearAddress_asm.d" \

OBJS_OS_FORMAT += \
./Sources/Date_asm.obj \
./Sources/MCUinit_asm.obj \
./Sources/Time_asm.obj \
./Sources/Time2GetReal_asm.obj \
./Sources/btnA_asm.obj \
./Sources/btnB_asm.obj \
./Sources/btnC_asm.obj \
./Sources/btnD_asm.obj \
./Sources/btnEight_asm.obj \
./Sources/btnFive_asm.obj \
./Sources/btnFour_asm.obj \
./Sources/btnHandled_asm.obj \
./Sources/btnHash_asm.obj \
./Sources/btnNine_asm.obj \
./Sources/btnOne_asm.obj \
./Sources/btnSeven_asm.obj \
./Sources/btnSix_asm.obj \
./Sources/btnStar_asm.obj \
./Sources/btnThree_asm.obj \
./Sources/btnTwo_asm.obj \
./Sources/btnZero_asm.obj \
./Sources/clearLCD_asm.obj \
./Sources/clockAddress_asm.obj \
./Sources/clockG2T_asm.obj \
./Sources/columnOne_asm.obj \
./Sources/columnThree_asm.obj \
./Sources/columnTwo_asm.obj \
./Sources/columnZero_asm.obj \
./Sources/dayAddress_asm.obj \
./Sources/fourBitEightBang_asm.obj \
./Sources/fourBitFiveBang_asm.obj \
./Sources/fourBitFourBang_asm.obj \
./Sources/fourBitNineBang_asm.obj \
./Sources/fourBitSevenBang_asm.obj \
./Sources/fourBitSixBang_asm.obj \
./Sources/fourBitSoloBang_asm.obj \
./Sources/fourBitThreeBang_asm.obj \
./Sources/fourBitTwoBang_asm.obj \
./Sources/getClock_asm.obj \
./Sources/getDay_asm.obj \
./Sources/getHour_asm.obj \
./Sources/getMin_asm.obj \
./Sources/getMonth_asm.obj \
./Sources/getSec_asm.obj \
./Sources/getYear_asm.obj \
./Sources/hourAddress_asm.obj \
./Sources/i2cClock_asm.obj \
./Sources/i2cStart_asm.obj \
./Sources/i2cStop_asm.obj \
./Sources/initializeLCD_asm.obj \
./Sources/main_asm.obj \
./Sources/minAddress_asm.obj \
./Sources/monthAddress_asm.obj \
./Sources/moveCursor_asm.obj \
./Sources/readAcknowledge_asm.obj \
./Sources/secAddress_asm.obj \
./Sources/selectLEDS_asm.obj \
./Sources/selectY2_asm.obj \
./Sources/selectY3_asm.obj \
./Sources/selectY4_asm.obj \
./Sources/setClock_asm.obj \
./Sources/setDay_asm.obj \
./Sources/setHour_asm.obj \
./Sources/setMin_asm.obj \
./Sources/setMonth_asm.obj \
./Sources/setSec_asm.obj \
./Sources/setYear_asm.obj \
./Sources/subRtnCol_asm.obj \
./Sources/subRtnHb_asm.obj \
./Sources/subRtnRows_asm.obj \
./Sources/wait100us_asm.obj \
./Sources/wait15ms_asm.obj \
./Sources/wait1600us_asm.obj \
./Sources/wait40us_asm.obj \
./Sources/wait4100us_asm.obj \
./Sources/writeA_lowercase_asm.obj \
./Sources/writeAcknowledge_asm.obj \
./Sources/writeColon_asm.obj \
./Sources/writeD_asm.obj \
./Sources/writeDay_asm.obj \
./Sources/writeE_lowercase_asm.obj \
./Sources/writeEight_asm.obj \
./Sources/writeFive_asm.obj \
./Sources/writeForwardSlash_asm.obj \
./Sources/writeFour_asm.obj \
./Sources/writeH_lowercase_asm.obj \
./Sources/writeHour_asm.obj \
./Sources/writeI_lowercase_asm.obj \
./Sources/writeLCD_asm.obj \
./Sources/writeM_lowercase_asm.obj \
./Sources/writeMin_asm.obj \
./Sources/writeMonth_asm.obj \
./Sources/writeNine_asm.obj \
./Sources/writeOne_asm.obj \
./Sources/writeQuestion_asm.obj \
./Sources/writeQuote_asm.obj \
./Sources/writeS_lowercase_asm.obj \
./Sources/writeSec_asm.obj \
./Sources/writeSeven_asm.obj \
./Sources/writeSix_asm.obj \
./Sources/writeSpace_asm.obj \
./Sources/writeT_asm.obj \
./Sources/writeT_lowercase_asm.obj \
./Sources/writeThree_asm.obj \
./Sources/writeTwo_asm.obj \
./Sources/writeW_asm.obj \
./Sources/writeYear_asm.obj \
./Sources/writeZero_asm.obj \
./Sources/yearAddress_asm.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/Date_asm.obj: ../Sources/Date.asm
	@echo 'Building file: $<'
	@echo 'Executing target #1 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/Date.args" -Objn"Sources/Date_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/%.d: ../Sources/%.asm
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/MCUinit_asm.obj: ../Sources/MCUinit.asm
	@echo 'Building file: $<'
	@echo 'Executing target #2 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/MCUinit.args" -Objn"Sources/MCUinit_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/Time_asm.obj: ../Sources/Time.asm
	@echo 'Building file: $<'
	@echo 'Executing target #3 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/Time.args" -Objn"Sources/Time_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/Time2GetReal_asm.obj: ../Sources/Time2GetReal.asm
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/Time2GetReal.args" -Objn"Sources/Time2GetReal_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnA_asm.obj: ../Sources/btnA.asm
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnA.args" -Objn"Sources/btnA_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnB_asm.obj: ../Sources/btnB.asm
	@echo 'Building file: $<'
	@echo 'Executing target #6 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnB.args" -Objn"Sources/btnB_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnC_asm.obj: ../Sources/btnC.asm
	@echo 'Building file: $<'
	@echo 'Executing target #7 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnC.args" -Objn"Sources/btnC_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnD_asm.obj: ../Sources/btnD.asm
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnD.args" -Objn"Sources/btnD_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnEight_asm.obj: ../Sources/btnEight.asm
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnEight.args" -Objn"Sources/btnEight_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnFive_asm.obj: ../Sources/btnFive.asm
	@echo 'Building file: $<'
	@echo 'Executing target #10 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnFive.args" -Objn"Sources/btnFive_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnFour_asm.obj: ../Sources/btnFour.asm
	@echo 'Building file: $<'
	@echo 'Executing target #11 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnFour.args" -Objn"Sources/btnFour_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnHandled_asm.obj: ../Sources/btnHandled.asm
	@echo 'Building file: $<'
	@echo 'Executing target #12 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnHandled.args" -Objn"Sources/btnHandled_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnHash_asm.obj: ../Sources/btnHash.asm
	@echo 'Building file: $<'
	@echo 'Executing target #13 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnHash.args" -Objn"Sources/btnHash_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnNine_asm.obj: ../Sources/btnNine.asm
	@echo 'Building file: $<'
	@echo 'Executing target #14 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnNine.args" -Objn"Sources/btnNine_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnOne_asm.obj: ../Sources/btnOne.asm
	@echo 'Building file: $<'
	@echo 'Executing target #15 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnOne.args" -Objn"Sources/btnOne_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnSeven_asm.obj: ../Sources/btnSeven.asm
	@echo 'Building file: $<'
	@echo 'Executing target #16 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnSeven.args" -Objn"Sources/btnSeven_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnSix_asm.obj: ../Sources/btnSix.asm
	@echo 'Building file: $<'
	@echo 'Executing target #17 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnSix.args" -Objn"Sources/btnSix_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnStar_asm.obj: ../Sources/btnStar.asm
	@echo 'Building file: $<'
	@echo 'Executing target #18 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnStar.args" -Objn"Sources/btnStar_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnThree_asm.obj: ../Sources/btnThree.asm
	@echo 'Building file: $<'
	@echo 'Executing target #19 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnThree.args" -Objn"Sources/btnThree_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnTwo_asm.obj: ../Sources/btnTwo.asm
	@echo 'Building file: $<'
	@echo 'Executing target #20 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnTwo.args" -Objn"Sources/btnTwo_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/btnZero_asm.obj: ../Sources/btnZero.asm
	@echo 'Building file: $<'
	@echo 'Executing target #21 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/btnZero.args" -Objn"Sources/btnZero_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/clearLCD_asm.obj: ../Sources/clearLCD.asm
	@echo 'Building file: $<'
	@echo 'Executing target #22 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/clearLCD.args" -Objn"Sources/clearLCD_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/clockAddress_asm.obj: ../Sources/clockAddress.asm
	@echo 'Building file: $<'
	@echo 'Executing target #23 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/clockAddress.args" -Objn"Sources/clockAddress_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/clockG2T_asm.obj: ../Sources/clockG2T.asm
	@echo 'Building file: $<'
	@echo 'Executing target #24 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/clockG2T.args" -Objn"Sources/clockG2T_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/columnOne_asm.obj: ../Sources/columnOne.asm
	@echo 'Building file: $<'
	@echo 'Executing target #25 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/columnOne.args" -Objn"Sources/columnOne_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/columnThree_asm.obj: ../Sources/columnThree.asm
	@echo 'Building file: $<'
	@echo 'Executing target #26 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/columnThree.args" -Objn"Sources/columnThree_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/columnTwo_asm.obj: ../Sources/columnTwo.asm
	@echo 'Building file: $<'
	@echo 'Executing target #27 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/columnTwo.args" -Objn"Sources/columnTwo_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/columnZero_asm.obj: ../Sources/columnZero.asm
	@echo 'Building file: $<'
	@echo 'Executing target #28 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/columnZero.args" -Objn"Sources/columnZero_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/dayAddress_asm.obj: ../Sources/dayAddress.asm
	@echo 'Building file: $<'
	@echo 'Executing target #29 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/dayAddress.args" -Objn"Sources/dayAddress_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/fourBitEightBang_asm.obj: ../Sources/fourBitEightBang.asm
	@echo 'Building file: $<'
	@echo 'Executing target #30 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/fourBitEightBang.args" -Objn"Sources/fourBitEightBang_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/fourBitFiveBang_asm.obj: ../Sources/fourBitFiveBang.asm
	@echo 'Building file: $<'
	@echo 'Executing target #31 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/fourBitFiveBang.args" -Objn"Sources/fourBitFiveBang_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/fourBitFourBang_asm.obj: ../Sources/fourBitFourBang.asm
	@echo 'Building file: $<'
	@echo 'Executing target #32 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/fourBitFourBang.args" -Objn"Sources/fourBitFourBang_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/fourBitNineBang_asm.obj: ../Sources/fourBitNineBang.asm
	@echo 'Building file: $<'
	@echo 'Executing target #33 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/fourBitNineBang.args" -Objn"Sources/fourBitNineBang_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/fourBitSevenBang_asm.obj: ../Sources/fourBitSevenBang.asm
	@echo 'Building file: $<'
	@echo 'Executing target #34 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/fourBitSevenBang.args" -Objn"Sources/fourBitSevenBang_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/fourBitSixBang_asm.obj: ../Sources/fourBitSixBang.asm
	@echo 'Building file: $<'
	@echo 'Executing target #35 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/fourBitSixBang.args" -Objn"Sources/fourBitSixBang_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/fourBitSoloBang_asm.obj: ../Sources/fourBitSoloBang.asm
	@echo 'Building file: $<'
	@echo 'Executing target #36 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/fourBitSoloBang.args" -Objn"Sources/fourBitSoloBang_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/fourBitThreeBang_asm.obj: ../Sources/fourBitThreeBang.asm
	@echo 'Building file: $<'
	@echo 'Executing target #37 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/fourBitThreeBang.args" -Objn"Sources/fourBitThreeBang_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/fourBitTwoBang_asm.obj: ../Sources/fourBitTwoBang.asm
	@echo 'Building file: $<'
	@echo 'Executing target #38 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/fourBitTwoBang.args" -Objn"Sources/fourBitTwoBang_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/getClock_asm.obj: ../Sources/getClock.asm
	@echo 'Building file: $<'
	@echo 'Executing target #39 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/getClock.args" -Objn"Sources/getClock_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/getDay_asm.obj: ../Sources/getDay.asm
	@echo 'Building file: $<'
	@echo 'Executing target #40 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/getDay.args" -Objn"Sources/getDay_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/getHour_asm.obj: ../Sources/getHour.asm
	@echo 'Building file: $<'
	@echo 'Executing target #41 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/getHour.args" -Objn"Sources/getHour_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/getMin_asm.obj: ../Sources/getMin.asm
	@echo 'Building file: $<'
	@echo 'Executing target #42 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/getMin.args" -Objn"Sources/getMin_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/getMonth_asm.obj: ../Sources/getMonth.asm
	@echo 'Building file: $<'
	@echo 'Executing target #43 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/getMonth.args" -Objn"Sources/getMonth_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/getSec_asm.obj: ../Sources/getSec.asm
	@echo 'Building file: $<'
	@echo 'Executing target #44 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/getSec.args" -Objn"Sources/getSec_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/getYear_asm.obj: ../Sources/getYear.asm
	@echo 'Building file: $<'
	@echo 'Executing target #45 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/getYear.args" -Objn"Sources/getYear_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/hourAddress_asm.obj: ../Sources/hourAddress.asm
	@echo 'Building file: $<'
	@echo 'Executing target #46 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/hourAddress.args" -Objn"Sources/hourAddress_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/i2cClock_asm.obj: ../Sources/i2cClock.asm
	@echo 'Building file: $<'
	@echo 'Executing target #47 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/i2cClock.args" -Objn"Sources/i2cClock_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/i2cStart_asm.obj: ../Sources/i2cStart.asm
	@echo 'Building file: $<'
	@echo 'Executing target #48 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/i2cStart.args" -Objn"Sources/i2cStart_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/i2cStop_asm.obj: ../Sources/i2cStop.asm
	@echo 'Building file: $<'
	@echo 'Executing target #49 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/i2cStop.args" -Objn"Sources/i2cStop_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/initializeLCD_asm.obj: ../Sources/initializeLCD.asm
	@echo 'Building file: $<'
	@echo 'Executing target #50 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/initializeLCD.args" -Objn"Sources/initializeLCD_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/main_asm.obj: ../Sources/main.asm
	@echo 'Building file: $<'
	@echo 'Executing target #51 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/main.args" -Objn"Sources/main_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/minAddress_asm.obj: ../Sources/minAddress.asm
	@echo 'Building file: $<'
	@echo 'Executing target #52 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/minAddress.args" -Objn"Sources/minAddress_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/monthAddress_asm.obj: ../Sources/monthAddress.asm
	@echo 'Building file: $<'
	@echo 'Executing target #53 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/monthAddress.args" -Objn"Sources/monthAddress_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/moveCursor_asm.obj: ../Sources/moveCursor.asm
	@echo 'Building file: $<'
	@echo 'Executing target #54 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/moveCursor.args" -Objn"Sources/moveCursor_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/readAcknowledge_asm.obj: ../Sources/readAcknowledge.asm
	@echo 'Building file: $<'
	@echo 'Executing target #55 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/readAcknowledge.args" -Objn"Sources/readAcknowledge_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/secAddress_asm.obj: ../Sources/secAddress.asm
	@echo 'Building file: $<'
	@echo 'Executing target #56 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/secAddress.args" -Objn"Sources/secAddress_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/selectLEDS_asm.obj: ../Sources/selectLEDS.asm
	@echo 'Building file: $<'
	@echo 'Executing target #57 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/selectLEDS.args" -Objn"Sources/selectLEDS_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/selectY2_asm.obj: ../Sources/selectY2.asm
	@echo 'Building file: $<'
	@echo 'Executing target #58 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/selectY2.args" -Objn"Sources/selectY2_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/selectY3_asm.obj: ../Sources/selectY3.asm
	@echo 'Building file: $<'
	@echo 'Executing target #59 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/selectY3.args" -Objn"Sources/selectY3_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/selectY4_asm.obj: ../Sources/selectY4.asm
	@echo 'Building file: $<'
	@echo 'Executing target #60 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/selectY4.args" -Objn"Sources/selectY4_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/setClock_asm.obj: ../Sources/setClock.asm
	@echo 'Building file: $<'
	@echo 'Executing target #61 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/setClock.args" -Objn"Sources/setClock_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/setDay_asm.obj: ../Sources/setDay.asm
	@echo 'Building file: $<'
	@echo 'Executing target #62 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/setDay.args" -Objn"Sources/setDay_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/setHour_asm.obj: ../Sources/setHour.asm
	@echo 'Building file: $<'
	@echo 'Executing target #63 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/setHour.args" -Objn"Sources/setHour_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/setMin_asm.obj: ../Sources/setMin.asm
	@echo 'Building file: $<'
	@echo 'Executing target #64 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/setMin.args" -Objn"Sources/setMin_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/setMonth_asm.obj: ../Sources/setMonth.asm
	@echo 'Building file: $<'
	@echo 'Executing target #65 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/setMonth.args" -Objn"Sources/setMonth_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/setSec_asm.obj: ../Sources/setSec.asm
	@echo 'Building file: $<'
	@echo 'Executing target #66 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/setSec.args" -Objn"Sources/setSec_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/setYear_asm.obj: ../Sources/setYear.asm
	@echo 'Building file: $<'
	@echo 'Executing target #67 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/setYear.args" -Objn"Sources/setYear_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/subRtnCol_asm.obj: ../Sources/subRtnCol.asm
	@echo 'Building file: $<'
	@echo 'Executing target #68 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/subRtnCol.args" -Objn"Sources/subRtnCol_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/subRtnHb_asm.obj: ../Sources/subRtnHb.asm
	@echo 'Building file: $<'
	@echo 'Executing target #69 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/subRtnHb.args" -Objn"Sources/subRtnHb_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/subRtnRows_asm.obj: ../Sources/subRtnRows.asm
	@echo 'Building file: $<'
	@echo 'Executing target #70 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/subRtnRows.args" -Objn"Sources/subRtnRows_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/wait100us_asm.obj: ../Sources/wait100us.asm
	@echo 'Building file: $<'
	@echo 'Executing target #71 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/wait100us.args" -Objn"Sources/wait100us_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/wait15ms_asm.obj: ../Sources/wait15ms.asm
	@echo 'Building file: $<'
	@echo 'Executing target #72 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/wait15ms.args" -Objn"Sources/wait15ms_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/wait1600us_asm.obj: ../Sources/wait1600us.asm
	@echo 'Building file: $<'
	@echo 'Executing target #73 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/wait1600us.args" -Objn"Sources/wait1600us_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/wait40us_asm.obj: ../Sources/wait40us.asm
	@echo 'Building file: $<'
	@echo 'Executing target #74 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/wait40us.args" -Objn"Sources/wait40us_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/wait4100us_asm.obj: ../Sources/wait4100us.asm
	@echo 'Building file: $<'
	@echo 'Executing target #75 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/wait4100us.args" -Objn"Sources/wait4100us_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeA_lowercase_asm.obj: ../Sources/writeA_lowercase.asm
	@echo 'Building file: $<'
	@echo 'Executing target #76 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeA_lowercase.args" -Objn"Sources/writeA_lowercase_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeAcknowledge_asm.obj: ../Sources/writeAcknowledge.asm
	@echo 'Building file: $<'
	@echo 'Executing target #77 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeAcknowledge.args" -Objn"Sources/writeAcknowledge_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeColon_asm.obj: ../Sources/writeColon.asm
	@echo 'Building file: $<'
	@echo 'Executing target #78 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeColon.args" -Objn"Sources/writeColon_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeD_asm.obj: ../Sources/writeD.asm
	@echo 'Building file: $<'
	@echo 'Executing target #79 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeD.args" -Objn"Sources/writeD_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeDay_asm.obj: ../Sources/writeDay.asm
	@echo 'Building file: $<'
	@echo 'Executing target #80 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeDay.args" -Objn"Sources/writeDay_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeE_lowercase_asm.obj: ../Sources/writeE_lowercase.asm
	@echo 'Building file: $<'
	@echo 'Executing target #81 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeE_lowercase.args" -Objn"Sources/writeE_lowercase_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeEight_asm.obj: ../Sources/writeEight.asm
	@echo 'Building file: $<'
	@echo 'Executing target #82 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeEight.args" -Objn"Sources/writeEight_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeFive_asm.obj: ../Sources/writeFive.asm
	@echo 'Building file: $<'
	@echo 'Executing target #83 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeFive.args" -Objn"Sources/writeFive_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeForwardSlash_asm.obj: ../Sources/writeForwardSlash.asm
	@echo 'Building file: $<'
	@echo 'Executing target #84 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeForwardSlash.args" -Objn"Sources/writeForwardSlash_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeFour_asm.obj: ../Sources/writeFour.asm
	@echo 'Building file: $<'
	@echo 'Executing target #85 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeFour.args" -Objn"Sources/writeFour_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeH_lowercase_asm.obj: ../Sources/writeH_lowercase.asm
	@echo 'Building file: $<'
	@echo 'Executing target #86 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeH_lowercase.args" -Objn"Sources/writeH_lowercase_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeHour_asm.obj: ../Sources/writeHour.asm
	@echo 'Building file: $<'
	@echo 'Executing target #87 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeHour.args" -Objn"Sources/writeHour_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeI_lowercase_asm.obj: ../Sources/writeI_lowercase.asm
	@echo 'Building file: $<'
	@echo 'Executing target #88 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeI_lowercase.args" -Objn"Sources/writeI_lowercase_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeLCD_asm.obj: ../Sources/writeLCD.asm
	@echo 'Building file: $<'
	@echo 'Executing target #89 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeLCD.args" -Objn"Sources/writeLCD_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeM_lowercase_asm.obj: ../Sources/writeM_lowercase.asm
	@echo 'Building file: $<'
	@echo 'Executing target #90 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeM_lowercase.args" -Objn"Sources/writeM_lowercase_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeMin_asm.obj: ../Sources/writeMin.asm
	@echo 'Building file: $<'
	@echo 'Executing target #91 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeMin.args" -Objn"Sources/writeMin_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeMonth_asm.obj: ../Sources/writeMonth.asm
	@echo 'Building file: $<'
	@echo 'Executing target #92 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeMonth.args" -Objn"Sources/writeMonth_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeNine_asm.obj: ../Sources/writeNine.asm
	@echo 'Building file: $<'
	@echo 'Executing target #93 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeNine.args" -Objn"Sources/writeNine_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeOne_asm.obj: ../Sources/writeOne.asm
	@echo 'Building file: $<'
	@echo 'Executing target #94 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeOne.args" -Objn"Sources/writeOne_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeQuestion_asm.obj: ../Sources/writeQuestion.asm
	@echo 'Building file: $<'
	@echo 'Executing target #95 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeQuestion.args" -Objn"Sources/writeQuestion_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeQuote_asm.obj: ../Sources/writeQuote.asm
	@echo 'Building file: $<'
	@echo 'Executing target #96 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeQuote.args" -Objn"Sources/writeQuote_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeS_lowercase_asm.obj: ../Sources/writeS_lowercase.asm
	@echo 'Building file: $<'
	@echo 'Executing target #97 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeS_lowercase.args" -Objn"Sources/writeS_lowercase_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeSec_asm.obj: ../Sources/writeSec.asm
	@echo 'Building file: $<'
	@echo 'Executing target #98 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeSec.args" -Objn"Sources/writeSec_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeSeven_asm.obj: ../Sources/writeSeven.asm
	@echo 'Building file: $<'
	@echo 'Executing target #99 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeSeven.args" -Objn"Sources/writeSeven_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeSix_asm.obj: ../Sources/writeSix.asm
	@echo 'Building file: $<'
	@echo 'Executing target #100 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeSix.args" -Objn"Sources/writeSix_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeSpace_asm.obj: ../Sources/writeSpace.asm
	@echo 'Building file: $<'
	@echo 'Executing target #101 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeSpace.args" -Objn"Sources/writeSpace_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeT_asm.obj: ../Sources/writeT.asm
	@echo 'Building file: $<'
	@echo 'Executing target #102 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeT.args" -Objn"Sources/writeT_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeT_lowercase_asm.obj: ../Sources/writeT_lowercase.asm
	@echo 'Building file: $<'
	@echo 'Executing target #103 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeT_lowercase.args" -Objn"Sources/writeT_lowercase_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeThree_asm.obj: ../Sources/writeThree.asm
	@echo 'Building file: $<'
	@echo 'Executing target #104 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeThree.args" -Objn"Sources/writeThree_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeTwo_asm.obj: ../Sources/writeTwo.asm
	@echo 'Building file: $<'
	@echo 'Executing target #105 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeTwo.args" -Objn"Sources/writeTwo_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeW_asm.obj: ../Sources/writeW.asm
	@echo 'Building file: $<'
	@echo 'Executing target #106 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeW.args" -Objn"Sources/writeW_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeYear_asm.obj: ../Sources/writeYear.asm
	@echo 'Building file: $<'
	@echo 'Executing target #107 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeYear.args" -Objn"Sources/writeYear_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/writeZero_asm.obj: ../Sources/writeZero.asm
	@echo 'Building file: $<'
	@echo 'Executing target #108 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/writeZero.args" -Objn"Sources/writeZero_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '

Sources/yearAddress_asm.obj: ../Sources/yearAddress.asm
	@echo 'Building file: $<'
	@echo 'Executing target #109 $<'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -ArgFile"Sources/yearAddress.args" -Objn"Sources/yearAddress_asm.obj" "$<" -Lm="$(@:%.obj=%.d)" -LmCfg=xilmou
	@echo 'Finished building: $<'
	@echo ' '


