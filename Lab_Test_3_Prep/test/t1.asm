.686
.model flat, c
include C:\masm32\include\msvcrt.inc
includelib C:\masm32\lib\msvcrt.lib

.stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG


.data
int_f byte "a = %d",0Ah,0

.code

main proc

mov eax, 10
mov ebx, 0

mov eax, 0
for_loop:
    push eax
    INVOKE printf, ADDR int_f, eax
    pop eax
    cmp eax, 10
    jge exit_loop

    cmp eax, 5
    jne elif
    inc ebx
    jmp loop_inc

    elif:
    cmp eax, 7
    jl el
    mov ebx, eax
    inc eax
    jmp loop_inc

     el:
     mov ebx, eax
     dec eax

    loop_inc:
    inc eax
    jmp for_loop

exit_loop:
ret

main endp
end