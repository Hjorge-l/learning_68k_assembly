*-----------------------------------------------------------
* Title      : L2A
* Written by : Harol Mijael Jorge López
* Date       : X
* Description: Set C.W to 0 if A.W = B.W, and to 1 otherwise
*-----------------------------------------------------------
    ORG    $1000

A   DC.W    40
B   DC.W    40
C   DS.W    1

START:                  ; first instruction of program
    MOVE.W A, D0
    MOVE.W B, D1
    CMP.W D1, D0
    BEQ ET0
    MOVE.W #1, C
    MOVE.B #9, D0
    TRAP #15
    
ET0: MOVE.W #0, C
    MOVE.B #9, D0
    TRAP #15
* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
