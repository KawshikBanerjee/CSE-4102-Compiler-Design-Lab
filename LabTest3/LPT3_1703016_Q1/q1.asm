.686
.model flat, c
include C:\masm32\include\msvcrt.inc
includelib C:\masm32\lib\msvcrt.lib

.stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg1:Ptr Byte, printlist:VARARG


.data
askc byte "Current = ",0
askr byte "Resistance = ",0
showv byte "Voltage = %d",0ah,0
pf byte "%s",0
sf byte "%d",0
cur dword ?
x dword ?

showvalue byte "%d", 0Ah, 0

.code

main proc

    ; INVOKE printf, ADDR pf, ADDR askc
    ; INVOKE scanf, ADDR sf , ADDR cur

    ; INVOKE printf, ADDR pf, ADDR askr
    ; INVOKE scanf, ADDR sf , ADDR r

    ; mov eax, cur
    ; mov ebx, r
    ; imul  ebx, eax
    ; INVOKE printf, ADDR showv, ebx

    mov eax, 2
for_loop:
    push eax
    cmp eax, 20
    pop eax
    jge exit_loop
    INVOKE printf, ADDR showvalue, eax
    jmp loop_inc
    jmp exit_loop

    loop_inc:
    inc eax
    inc eax
    inc eax
    jmp for_loop

exit_loop:
ret
main endp
end