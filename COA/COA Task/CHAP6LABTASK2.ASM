.MODEL SMALL
ORG 100H
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV CX,49
    MOV DX,1
    
    ASCII:
        ADD DX,4
        DEC CX
        JNZ ASCII
    
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN
    
RET