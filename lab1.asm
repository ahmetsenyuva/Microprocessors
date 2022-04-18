name "add-sub"

org 300h

mov al, 23       
mov bl, 5  
mov cl, 7    


add bl, al


sub bl, cl

; print result in binary:
mov cx, 8
print: mov ah, 2   ; print function.
       mov dl, '0'
       test bl, 10000000b  ; test first bit.
       jz zero
       mov dl, '1'
zero:  int 21h
       shl bl, 1
loop print

; print binary suffix:
mov dl, 'b'
int 21h

; wait for any key press:
mov ah, 0
int 16h

ret
     
     