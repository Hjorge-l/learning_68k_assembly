*-----------------------------------------------------------
* Title      : LA2
* Written by : Harol Mijael Jorge López
* Date       : X
* Description: set C.W to |A.W + B.W|
*-----------------------------------------------------------
    ORG    $1000
    
A   DC.W    5
B   DC.W    4
C   DS.W    1    
START:                  ; first instruction of program
    MOVE.W  A, D0
    ADD.W B, D0
    BMI MODULO
    MOVE.W D0, C
    MOVE.B #9, D0
    TRAP #15
MODULO:
    CLR D1
    MOVE.W D0, D1
    SUB.W D0, D0
    SUB.W D1, D0
    MOVE.W D0, C
    MOVE.B #9, D0
    TRAP #15
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
