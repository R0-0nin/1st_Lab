%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    FLD DWORD[b]; Загружаем число в стек
    FLD DWORD[c]; Загружаем число в стек
    FLD DWORD[a]; Загружаем число в стек
    
    FDIV; Выполняем деление 
    FSUB; Выполняем вычитание
    
    FST DWORD[r]
    
    ret 
    
   

section .data

a: DD 0x41C00000
b: DD 0xC0000000
c: DD 0x41980000
d: DD 0x41F00000
e: DD 0xC0400000
f: DD 0x41900000
r: DD 0x00000000