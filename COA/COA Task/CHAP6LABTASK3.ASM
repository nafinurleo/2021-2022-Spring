.MODEL SMALL
ORG 100H
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV CX,19
    MOV DX,100
    
    ASCII:
        SUB DX,5
        DEC CX
        JNZ ASCII
    
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN
    
RET