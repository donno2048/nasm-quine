org 0x100
push 0xb800
pop es
mov ah, 0x7
mov ch, 0xf
rep stosw
mov bx, hex
mov di, 0xa0
print_line:
add di, 0xa0
mov ax, 0xb00d
mov cl, 0x2
call print_char
mov dl, 0x4
print_byte:
inc di
inc di
lodsb
xchg ah, al
mov cl, 0x3
call print_char
mov al, 'h'
stosb
inc di
dec dl
jz skip_line
mov al, ','
stosb
inc di
jmp print_byte
skip_line:
sub di, 0x32
cmp si, end
jl print_line
ret
print_char:
xlatb
stosb
inc di
xor al, al
rol ax, 0x4
loop print_char
ret
hex: db '0123456789abcdef'
end:
