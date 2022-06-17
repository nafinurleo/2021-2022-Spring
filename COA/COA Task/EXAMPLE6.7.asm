.MODEL SMALL
ORG 100H
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AH,1
    INT 21H
    MOV DL,AL
    
    CMP DL,'Y'
    JNGE END
    JE PRINT
    
    CMP DL,'y'
    JNLE END
    JE PRINT
    JMP END
    
    PRINT:
        MOV AH,2
        INT 21H
    
    END:
        MOV AH,4CH
        INT 21H
    
MAIN ENDP
    END MAIN
    
RET