org 100h  
        
lea bx, arr
mov ax, 0

counter:
cmp [bx], '$'
jz done
inc ax
inc bx
jmp counter  
 

done:  
mov dx, ax
add dx, '0'
mov ah, 2
int 21h
ret

arr db "Hello!$"  
