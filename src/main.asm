mov ah, 0x0e ; teletype mode

mov bp, 0x8000 ; address far away (8000 - 7c00)
mov sp, bp ; this only happens if the stack is empty

; words
push 'F'
push 'O'
push 'O'
push 'D'

pop bx
mov al, bl
int 0x10 ; prints 'D'

pop bx
mov al, bl
int 0x10 ; prints 'D'

pop bx
mov al, bl
int 0x10 ; prints 'D'

pop bx
mov al, bl
int 0x10 ; prints 'D'

mov al, [0x8000] ; characters that are waste will be moved to al (this is the popped char from the stack)
int 0x10

jmp $
times 510-($-$$) db 0
dw 0xaa55