; Infinite loop
infinite_loop:
    jmp loop

mov ah, 0x0e ; Teletype mode

; prints text
mov al, 'R'
int 0x10

mov al, 'A'
int 0x10

mov al, 'V'
int 0x10

mov al, 'I'
int 0x10

mov al, 'O'
int 0x10

mov al, 'L'
int 0x10

mov al, 'I'
int 0x10

mov al, 'O'
int 0x10

mov al, 'S'
int 0x10

; Fills the img
times 510-($-$$) db 0
; magic number
dw 0xaa55