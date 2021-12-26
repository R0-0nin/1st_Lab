  %include "io.inc"
  section .text
  global CMAIN 
  CMAIN:
      mov ebp, esp; for correct debugging
      ;write your code here
      xor eax, eax
      MOV AL, [a];Сообщаем начало первого отрезка
      MOV BL, [b];Сообщаем конец первого отрезка
      MOV CL, [c];Сообщаем начало второго отрезка
      MOV DL, [d];Сообщаем конец второго отрезка
      CMP BL, CL;Сравниваем конец первого и начало второго отрезка
      JZ QUIT;Выходим из функции,если равны
      JLE nextoneL;Если меньше, то переходим в другую функцию
      JGE nextoneG;Если больше, сравниваем концы отрезков
      ret
  nextoneL:
      ret; Не пересекаются
  nextoneG:
      CMP BL, DL;Сравниваем концы отрезков
      JLE ThatSIT;Если конец первого отрезка меньше конца второго,
      JGE CMPX1X2
  CMPX1X2:
      CMP AL, DL
      JLE ThatSIT; Все ок
      JGE FalseMessage;Выводим отрицательный ответ
  QUIT:
      ret;Все нормально,пересекаются
  FalseMessage:
      ret;Если не пересекаются 
  ThatSIT:
      ret;Все нормально,пересекаются
  section .data
  a: db 0x3; "3"
  b: db 0x11; "11"
  c: db 0x4; "4"
  d: db 0x8; "8" 