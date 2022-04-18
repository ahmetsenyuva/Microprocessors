
; 1 ile 10 arasindai tek sayilarin toplaminin 10a bolumunden kalan sayiyi AH kaydedicisine
; yazan programi yaziniz.(loop)

MOV AX,0
MOV BX,1
MOV CX,5 ;COUNTER...1 BASTA VERILDIGI ICIN 4 KULLANIRIZ N-1

TEK:
ADD AX,BX
ADD BX,2
LOOP TEK

MOV BX,10   ;BOLUM AL, KALAN DL'DE.(16 BIT OLDUGU ICIN)
DIV BX      ;BX YERINE BL KULLANABILIRIZ.


