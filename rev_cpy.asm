
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
lea bx, ARR1
lea si, ARR2
mov ax, [bx+4]
mov [si],ax 

mov ax, [bx+3]
mov [si+1],ax

mov ax, [bx+2]
mov [si+2],ax

mov ax, [bx+1]
mov [si+3],ax

mov ax, [bx]
mov [si+4],ax



ret
ARR1 DB 10,13,65,5,9
ARR2 DB 5 dup (?)



