TITLE ACTIVITY.ASM
DOSSEG
.MODEL SMALL
.STACK 0100h
.DATA
    X DB "Can This$"
    Y DB "Love?$"
    Z DB 0Ah, 0Dh, "$"
.CODE
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 09H
    MOV DX, OFFSET X
    INT 21H
    MOV DX, OFFSET Z
    INT 21H

    MOV AH, 02H
    MOV DL, 'b'
    INT 21H

    MOV AH, 09H
    MOV DX, OFFSET Z
    INT 21H

    MOV AH, 02H
    MOV DL, 'e'
    INT 21H

    MOV AH, 09H
    MOV DX, OFFSET Z
    INT 21H
    MOV DX, OFFSET Y
    INT 21H

    MOV AX, 4C00h
    INT 21h

END