.MODEL SMALL
ORG 100H
.STACK 100H
.DATA 
MSG DB 'HELLO$'
MSG1 DB 'THIS IS ANOTHER MESSAGE$'
.CODE

MAIN PROC
    
    MOV AX,@DATA 
    MOV DS,AX
    
    LEA DX,MSG 
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,4CH
    INT 21H

MAIN ENDP 
    END MAIN
    
RET