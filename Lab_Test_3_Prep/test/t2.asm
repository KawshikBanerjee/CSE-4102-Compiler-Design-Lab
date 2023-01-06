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
r dword ?

.code

main proc

    INVOKE printf, ADDR pf, ADDR askc
    INVOKE scanf, ADDR sf , ADDR cur

    INVOKE printf, ADDR pf, ADDR askr
    INVOKE scanf, ADDR sf , ADDR r

    mov eax, cur
    mov ebx, r
    imul  ebx, eax
    INVOKE printf, ADDR showv, ebx

ret
main endp
end