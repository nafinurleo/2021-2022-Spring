.MODEL SMALL
ORG 100H
.DATA
    CR EQU 0DH
    LF EQU 0AH
MSG1 DB "Enter First Number: $"
MSG2 DB CR,LF,"Enter Second Number: $"
MSG3 DB CR,LF,"The Sum Of These Number is; "
CHAR DB ?,"$"
.STACK 100H
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    ADD BL,BH
    SUB BL,30h
    MOV CHAR,BL
    
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN

RET