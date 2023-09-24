; Infinite loop
infinite_loop:
    jmp loop



; Fills the img
times 510-($-$$) db 0
; magic number
dw 0xaa55