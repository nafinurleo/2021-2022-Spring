.MODEL SMALL
ORG 100H
.CODE

MAIN PROC
    MOV AL,35H
    MOV BL,37H
    CMP AL,BL
    JNBE ELSE_
    
    MOV DL,AL
    JMP DISPLAY
    
    ELSE_:
        MOV DL,BL
    DISPLAY:
        MOV AH,2
        INT 21H
    END:
        MOV AH,4CH
        INT 21H
        
MAIN ENDP
    END MAIN
    
RET