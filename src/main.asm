[org 0x7c00] ; tell the assembler that our offset is bootsector code

; The main routine makes sure the parameters are ready and then calls the function
mov bx, STARTUP
call print

call print_nl

mov bx, SHUTDOWN
call print

call print_nl

mov dx, 0x12fe
call print_hex

; straightforwad
jmp $

; remember to include modules below the hang
%include "src/printf.asm"
%include "src/hexadecimal.asm"


; variables
STARTUP:
    db 'Ravioli OS', 0

SHUTDOWN:
    db 'Shutting down...', 0

; padding and magic number
times 510-($-$$) db 0
dw 0xaa55