.MODEL SMALL
ORG 100H
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV CX,80
    STAR:
        JCXZ END
        MOV DL,'*'
        MOV AH,2
        INT 21H
        LOOP STAR
    
    END:
        MOV AH,4CH
        INT 21H
    
MAIN ENDP
    END MAIN
    
RET