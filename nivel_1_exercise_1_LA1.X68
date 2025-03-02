*-----------------------------------------------------------
* Title      : LA1
* Written by : Harol Mijael Jorge López
* Date       : X
* Description: Set data container and register with values
*-----------------------------------------------------------
    ORG    $1000

A   DC.W    40
B   DC.W    13
C   DS.L    1
D   DS.L    1

START:                  ; first instruction of program

    MOVE.W A, D0
    MOVE.W D0, B
    MOVE.W #4, A
    MOVE.W #-1, B
    
    MOVE.L #$abcdef00, D2
    MOVE.L D2, C
    
    MOVE.L #%10101010101010101011101110111011, D

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
