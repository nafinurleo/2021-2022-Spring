.MODEL SMALL
ORG 100H
.CODE

MAIN PROC
    MOV AX,-5
    CMP AX,0
    
    JG GREATER
    JL LESS
    JE EQU
    
    LESS:
        MOV BX,1
        JMP END
    EQU:
        MOV BX,0
        JMP END
    GREATER:
        MOV BX,1
        JMP END
    END:
        MOV AH,4CH
        INT 21H

MAIN ENDP
    END MAIN
    
RET