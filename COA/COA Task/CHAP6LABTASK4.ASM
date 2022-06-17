.MODEL SMALL
ORG 100H
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV CX,50
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    MOV DX,0AH
    INT 21H
    
    MOV DL,BL
    
    ASCII:
        
        MOV AH,2
        INT 21H
        DEC CX
        JNZ ASCII
    
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN
    
RET