.MODEL SMALL
ORG 100H
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV CX,10
    MOV BL,80H
    
    ASCII:
        MOV DL,BL
        MOV AH,2
        INT 21H
        MOV DX,' '
        INT 21H
        INC BL
        DEC CX
        JZ NEW_LINE
        JMP ASCII
        
    NEW_LINE:
        MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV DL,0AH
        INT 21H
        CMP BL,00FFH
        MOV CX,10
        JNG ASCII
    
    
    END:
        MOV AH,4CH
        INT 21H
    
MAIN ENDP
    END MAIN
    
RET