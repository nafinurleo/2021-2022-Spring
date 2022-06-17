.MODEL SMALL
ORG 100H
.STACK 100H
.DATA
CR EQU 0Dh
LF EQU 0Ah
MSG1 DB "?$"
MSG2 DB CR,LF,"ENTER FIRST NUMBER: $"
MSG3 DB CR,LF,"ENTER SECOND NUMBER: $"
MSG4 DB CR,LF,"$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9H
    INT 21H
       
    LEA DX,MSG2
    MOV AH,9H
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    LEA DX,MSG3
    MOV AH,9H
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    LEA DX,MSG4
    MOV AH,9
    INT 21H
    
    CMP BH,BL
    JG PRINT_C
        
        MOV DL,BL
        MOV AH,2
        INT 21H
        
    
        LEA DX,MSG4
        MOV AH,9
        INT 21H
        
        MOV DL,BH
        MOV AH,2
        INT 21H
        
        JMP END
    
    PRINT_C:
        MOV DL,BH
        MOV AH,2
        INT 21H
        
        LEA DX,MSG4
        MOV AH,9
        INT 21H
        
        MOV DL,BL
        MOV AH,2
        INT 21H
    
    END:
        MOV AH,4CH
        INT 21H
    
MAIN ENDP
    END MAIN
    
RET