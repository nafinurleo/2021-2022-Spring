.MODEL SMALL
ORG 100H
.CODE

MAIN PROC
    MOV AX,-8
    CMP AX,0
    JNL PRINT
    
    IF_NEG:
        NEG AX
        
    PRINT:
        MOV DX,AX
        ADD DX,48
        MOV AH,2
        INT 21H
        
    END:
        MOV AH,4CH
        INT 21H
        
MAIN ENDP
    END MAIN
    
RET