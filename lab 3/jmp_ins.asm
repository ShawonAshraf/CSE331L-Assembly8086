org 100h
jmp adder

printer:
mov ah, 2
mov dl, al
add dl, '0'
int 21H
jmp finish

       
adder:
mov al, 2
mov bl, 2
add al, bl
jmp printer


finish:
ret 