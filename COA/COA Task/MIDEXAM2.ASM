.MODEL SMALL
ORG 100H
.STACK 100H
.DATA  
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,2
    MOV CX,20
    MOV DL,01AH
    
    PRINT_ASCII:
        
        INT 21H
        INC DL
        DEC CX  
    
    JNZ PRINT_ASCII
    
         
    MOV AH,4CH
    INT 21H   
         
MAIN ENDP
    END MAIN
    
RET