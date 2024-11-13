%include 'in_out.asm'

SECTION .data
    msg: DB 'Введите x: ', 0
    rem: DB 'Результат: ', 0

SECTION .bss
    rez: RESB 80
    x: RESB 80

SECTION .text
GLOBAL _start

_start:
    mov eax, msg
    call sprintLF

    mov ecx, x
    mov edx, 80
    call sread

    mov eax, x
    call atoi

    mov ebx, 8
    mul ebx

    add eax, 6

    mov ebx, 10
    mul ebx

    mov [rez], eax

    mov eax, rem
    call sprintLF
    
    mov eax, [rez]
    call iprintLF

    call quit

