.MODEL SMALL
.STACK 100H
.DATA
MSG DB "TYPE A CHARACTER: $"
MSG1 DB "RESPECTIVE BINARY: $"
MSG2 DB "NUMBER OF 1S: $"
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
            
    MOV BH,0
    MOV CX,8d
    
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    FOR: 
        JCXZ NUM
        
        SHL BL,1
        
        JC ONE
        JNC ZERO
    
    ZERO:
        MOV AH,2
        MOV DL,'0'
        INT 21H
        
        dec CX
        JMP FOR
    
    ONE:
    
        MOV AH,2
        MOV DL,'1'
        INT 21H
        
        INC BH
        dec CX
        JMP FOR
    
    NUM:
    
        MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV DL,0AH
        INT 21H
        
        MOV AH,9
        LEA DX,MSG2
        INT 21H
        
        ADD BH,30h
        MOV AH,2
        MOV DL,BH
        INT 21H
        
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
    END MAIN