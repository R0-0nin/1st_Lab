%include "io.inc"

section .text
global CMAIN
function:
    DIV AL;если b > c , то делим, если нет, то не надо
    ret
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here // a - b / c
    xor ecx, ecx
    xor eax, eax
    xor ebx, ebx
    MOV AL, [e]; Передаем операнду AL второе значение(чтобы корректно выполнить деление)   
    MOV CL, [f]; Передаем операнду CL третье значение
    MOV BL, [d]; Сообщаем BL первое число
    cbw; Преобразуем байты в слова
    CMP AL, CL
    JGE function
    SUB BL, AL; Вычитаем
    
    PRINT_DEC 4, bh; Чтобы вывести старший байт 
    NEWLINE
    PRINT_DEC 4, bl; Чтобы вывести младший байт      
    ret 
    
section .data
a db 0x18
b db 0x02
c db 0x19

d db 0x1E
e db 0xFD
f db 0x12
