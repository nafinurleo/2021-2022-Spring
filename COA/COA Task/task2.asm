.MODEL SMALL
ORG 100H 
.DATA
B DB 3    
.STACK 100H
.CODE

MAIN PROC  
    
    
    MOV AL,B 
    ADD AL,B 
    ADD AL,B

    ADD AL,7
    MOV B,AL
    
    MOV AH,2
    MOV DL,B
    INT 21h
    
MAIN ENDP
    END MAIN

RET