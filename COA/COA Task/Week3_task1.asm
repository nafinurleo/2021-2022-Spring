.MODEL SMALL
ORG 100H
.STACK 100H
.DATA
    CR EQU '0DH'
    LF EQU '0AH'
    MSG DB 'HELLO WORLD $'
.CODE

MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,5
    PRINT_:
        LEA DX,MSG
        MOV AH,9
        INT 21H 
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
     
        MOV DL, 0AH
        INT 21H
        
        DEC CX
        
        JNZ PRINT_
        
        MOV AH,4CH
        INT 21H 
        
    
MAIN ENDP
    END MAIN
    
RET