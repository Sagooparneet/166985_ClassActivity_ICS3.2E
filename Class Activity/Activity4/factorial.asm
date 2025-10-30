section .text
    global factorial

factorial:
    mov eax, 1        ; result = 1
    mov ecx, [esp+4]  ; get n (argument)

.loop:
    test ecx, ecx
    jz .done
    imul eax, ecx
    dec ecx
    jmp .loop

.done:
    ret