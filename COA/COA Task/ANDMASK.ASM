.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AL,10100110b
    
    MOV BL,AL
    AND BL,11011011b
    MOV CX,8
    
    PRINT_AND:
        MOV AH,2
        MOV DL,'0'
        TEST BL,10000000b
        JZ ZERO
        MOV DL,'1'
    
    ZERO:
        INT 21H
        SHL BL,1
        LOOP PRINT_AND
    MOV DL,'b'
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN