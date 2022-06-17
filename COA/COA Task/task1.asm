.MODEL SMALL 
ORG 100H
.DATA
B DB 4
A DB 3     
.STACK 100H
.CODE

MAIN PROC  
    
    
    MOV AL,B

    SUB AL,A

    SUB AL,1
    MOV A,AL
    
    MOV AH,2
    MOV DL,A
    ADD DL,48
    INT 21h

MAIN ENDP
    END MAIN
    
RET