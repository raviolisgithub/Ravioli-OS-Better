print:
    pusha

; comparision of byte to string
start:
    mov al, [bx] ; base address
    cmp al, 0
    je done

    ; printing as usual
    mov ah, 0x0e
    int 0x10

    ; loopdy loop
    add bx, 1
    jmp start

done:
    popa
    ret

print_nl:
    pusha
    ; same thing, not unusual to understand
    mov ah, 0x0e
    mov al, 0x0a
    int 0x10
    mov al, 0x0d
    int 0x10

    popa
    ret