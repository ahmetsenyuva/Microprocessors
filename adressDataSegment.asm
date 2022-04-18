mov ax,200h  ;data segmenti 200htan baslat
mov ds,ax 

mov [300h],23;sonra 300 adresine ata   
mov [302h],5
mov [304h],7

;bellek adresi data segmenti gibi davranir.
; bu yuzden registera aktarmaliyiz.4 islem

mov bl,[300h]   
mov bh,[302h]
mov cl,[304h]

add bl,bh
sub bl,cl  

mov ax,100h;data segmenti sonucu 100htan baþlat
mov ds,ax 
mov [400h],bl;sonra 400 adresine ata
