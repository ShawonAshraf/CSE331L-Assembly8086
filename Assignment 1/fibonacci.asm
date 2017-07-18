include 'emu8086.inc'

DATA SEGMENT   
    
f1 db 00h
f2 db 01h
f3 db ? 

msg1 db "The Fibonacci series is", 10, 13, "$" 

n db 21  

DATA ENDS    

code segment 
    
assume cs:code, ds:data 

start:     	        
        mov ax, data
        mov ds, ax
        lea dx, msg1
        mov ah, 09h
        int 21h
        mov bl, f1

        
        mov ax, bx
        call PRINT_NUM
        
        mov dl, ' '
        mov ah, 02h
        int 21h
        mov bl, f2 
        

        mov ax, bx
        call PRINT_NUM  
        
        mov dl, ' '
        mov ah, 02h
        int 21h
        mov ch, 00h
up1:   	       
        cmp ch, n
        jae exit
        mov al, f1
        add al, f2
        mov f3, al
        mov bl, f3

        
        mov ax, bx
        call PRINT_NUM
        
        mov dl, ' '
        mov ah, 02h
        int 21h
        mov al, f2
        mov f1, al
        mov al, f3
        mov f2, al
        inc ch
        jmp up1
exit:   	        
mov ah, 4ch
int 21h

code ends


DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_NUM
end start 



