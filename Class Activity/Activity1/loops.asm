; Question 2:
; Write an Assembly program that adds numbers from 15 to 25 using a loop.

section .data
    result db 0

section .text
    global _start

_start:
    mov ecx, 15      ; start
    mov eax, 0       ; accumulator

loop_add:
    add eax, ecx     ; add current number
    inc ecx          ; increment by 1
    cmp ecx, 26      ; stop when ecx = 26
    jne loop_add

    ; store result in EBX for exit code (just to show something)
    mov ebx, eax
    mov eax, 1       ; syscall: exit
    int 0x80