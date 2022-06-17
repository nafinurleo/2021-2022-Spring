.MODEL SMALL
ORG 100H
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV DX,0
    WHILE:
        MOV AH,1
        INT 21H
        
        CMP AL,0DH
        JE PRINT
        INC DX
        JMP WHILE
    
    PRINT:
        ADD DX,48
        MOV AH,2
        INT 21H
    
    
    END:
        MOV AH,4CH
        INT 21H
    
MAIN ENDP
    END MAIN
    
RET