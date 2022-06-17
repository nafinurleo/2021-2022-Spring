.MODEL SMALL
ORG 100H
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV CX,49
    MOV BX,1
    
    ASCII:
        MOV AH,2
        MOV DX,BX
        INT 21H
        
        MOV DX,'+'
        INT 21H
        
        ADD BX,4
        DEC CX
        JNZ ASCII
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN
    
RET