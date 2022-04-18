mov AX,1
mov BX,1
mov CX,4  
mov dx,0  


FIBONACCI:

ADD AX,BX   ;1 2 5 13
ADD BX,AX   ;1 3 8  21  
add dx,ax   ;54 veriyor. 
;mov ax,dx

LOOP FIBONACCI
         
MOV bl,10
DIV bl        

;1 1 2 3 5 8 13 21...(34 55)
; 54