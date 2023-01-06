;int main() 
;{ 
;   int a = 10; int count = 0; 
;
;   for(a=0; a<10; a++) 
;   { 
;     if(a==5) { count=count+1; } 
;     else if(a >= 7) { count = a++; } 
;     else { count = a--; } 
;   }
;   Return 0;
;}

.686
.model flat, c
include C:\masm32\include\msvcrt.inc
includelib C:\masm32\lib\msvcrt.lib

.stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2:Ptr Byte, inputlist:VARARG

.data 
input_integer_format byte "%d",0

output_msg byte "ENTER NUMBER:",0
output_positive_msg byte "NUMBER IS POSITIVE", 0Ah, 0
output_msg_format byte "%s",0
output_integer_msg_format byte "%d", 0Ah, 0

number sdword ?

.code 
main proc

    ; int a=10
    mov eax, 10
    ; int count=0
    mov ebx,0

    mov eax, 0
    for_loop:
        INVOKE printf, ADDR output_integer_msg_format, eax
        cmp eax, 10
        jge EXIT_

        cmp eax, 5
        jne else_if
        inc ebx
        jmp loop_inc

    else_if:
        cmp eax, 7 
        ;jl els
        inc eax
        mov ebx, eax
        jmp loop_inc
    
    ; els:
    ;     dec eax
    ;     mov ebx, eax
    
    loop_inc:
        inc eax
        jmp for_loop

    EXIT_:
        ret

main endp
end 