*-----------------------------------------------------------
* Title      : L2B
* Written by : Harol Jorge López
* Date       : X
* Description: set C.W to 1 if A.W - B.W > -1 signed, anf 0 overwise
*-----------------------------------------------------------
    ORG    $1000
    
A   DC.W    5
B   DC.W    7
C   DS.W    1

START:                  ; first instruction of program
    CLR D0
    MOVE.W A, D0
    SUB.W B, D0
    MOVE.W #-1, D1
    CMP D0, D1
    BGT NATURAL
    MOVE.W #0, C
    MOVE.B #9, D0
    TRAP #15
NATURAL:
    MOVE.W #1, C
    MOVE.B #9,D0
    TRAP #15
* Put program code here

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
