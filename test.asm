section .data
    msg db 'pane e glup', 0

section .text
    global _start

_start:
    ; write syscall
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 11
    int 0x80

    ; exit syscall
    mov eax, 1
    xor ebx, ebx
    int 0x80