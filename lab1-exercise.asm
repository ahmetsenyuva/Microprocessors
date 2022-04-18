
mov ax,300h
mov ds,ax

mov [210h],37;25h 
mov [212h],21;15h
mov [214h],23;17h     

mov bl,[210h]   
mov bh,[212h]
mov cl,[214h] 

add bl,cl
sub bl,bh

mov ax,300h
mov ds,ax 
mov [400h],bl



