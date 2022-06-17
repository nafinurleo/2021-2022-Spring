.MODEL SMALL
ORG 100H
.STACK 100H
.DATA

    MSG1 DB 10,13,'INPUT:$'
    MSG2 DB 10,13,'INPUT IS EQUAL TO 5 $'
    MSG3 DB 10,13,'INPUT IS GREATER THAN 5 $'
    MSG4 DB 10,13,'INPUT IS LESS THAN 5 $'
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H

    MOV BL,AL
    
    CMP BL,'5'
        JE @EQUAL
        JG @GREATER
        JL @LESS
        
    @EQUAL:

        MOV AH,9
        LEA DX,MSG2
        INT 21H
    
        JMP END
    
    @GREATER:
    
        MOV AH,9
        LEA DX,MSG3
        INT 21H
        
        JMP END
    
    @LESS:
    
        MOV AH,9
        LEA DX,MSG4
        INT 21H
        
        JMP END

    END:
        MOV AH,4CH
        INT 21H
    
MAIN ENDP
    END MAIN
    
RET