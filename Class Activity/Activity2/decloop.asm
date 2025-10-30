; Question 3:
; Write an Assembly program that adds numbers from 25 down to 15 using a decrementing loop (dec).

section .text
    global _start

_start:
    mov ecx, 25      ; start from 25
    mov eax, 0       ; accumulator

loop_dec:
    add eax, ecx
    dec ecx
    cmp ecx, 14      ; stop when ecx < 15
    jne loop_dec

    mov ebx, eax
    mov eax, 1
    int 0x80