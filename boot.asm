[org 0x7C00]          ; Set origin for BIOS boot sector
mov ah, 0x0E          ; BIOS teletype output
mov al, 'H'
int 0x10              ; Print 'H'
mov al, 'i'
int 0x10              ; Print 'i'

jmp $                 ; Infinite loop

times 510 - ($ - $$) db 0

dw 0xAA55             ; Boot sector signature

