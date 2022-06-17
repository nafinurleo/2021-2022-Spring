.MODEL SMALL
ORG 100H
.CODE

MAIN PROC
    MOV AL,4
    
    CMP AL,1
    JE ODD
    
    CMP AL,3
    JE ODD
    
    CMP AL,2
    JE EVEN
    
    CMP AL,4
    JE EVEN
    
    ODD:
        MOV DL,'o'
        JMP DISPLAY
        
    EVEN:
        MOV DL,'e'
        JMP DISPLAY
    DISPLAY:
        MOV AH,2
        INT 21H
    END:
        MOV AH,4CH
        INT 21H
        
MAIN ENDP
    END MAIN
    
    
RET