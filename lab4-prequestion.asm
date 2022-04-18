
;6,2,15,23,54,32,12,34,5,7 sayilari bellege atin    
;bu sayilardan max ve min in ortalamasini bul
;ortalamayi ax register yaz
;bellek adresleme ve dongu kullanmak zorunlu.

org 100h

arr db 6,2,15,23,54,32,12,34,5,7

mov ax,800h
mov di,0h  ;destination index--->dolayli adresleme,ayri bi register kullanmamak,her seferinde
           ;bellege gitmemek icin
mov bp,900h
mov cx,10

atama:
    mov al,arr+di
    mov [bp][di],al
    inc di;di yi 1 kez arttirmak
    loop atama
mov cx,10
mov di,0
mov al,[bp][di] 
 
find_small:         
    mov bl,[bp][di]
    cmp al,bl;compare
    jl assign_small
    mov al,bl
    assign_small:
        inc di
    loop find_small  
    
mov [200h],al
mov cx,10
mov di,0
mov al,[bp][di] 

find_large:
    mov bl,[bp][di]  
    cmp al,bl
    ja assign_large
    mov al,bl
    assign_large:
        inc di  
    dec cx  ;cx i bir kez azaltip,daha sonra kontrol edersiniz
    jnz find_large
       
 mov [210h],al  
 mov ax,0
 mov ax,[210h]  
 
 add ax,[200h]
 mov bx,2h
 div bx



ret




