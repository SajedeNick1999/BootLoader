mov ah, 0x0e ;

mov al, 'W';
int 0x10
mov al, 'e';
int 0x10
mov al, 'l';
int 0x10
mov al, 'c';
int 0x10
mov al, 'o';
int 0x10
mov al, 'm';
int 0x10
mov al, 'e';
int 0x10
mov al, 'T';
int 0x10
mov al, 'o';
int 0x10
mov al, 'S';
int 0x10
mov al, 'a';
int 0x10
mov al, 'j';
int 0x10
mov al, 'e';
int 0x10
mov al, 'd';
int 0x10
mov al, 'e';
int 0x10
mov al, 's';
int 0x10
mov al, 'B';
int 0x10
mov al, 'o';
int 0x10
mov al, 'o';
int 0x10
mov al, 't';
int 0x10
mov al, 'L';
int 0x10
mov al, 'o';
int 0x10
mov al, 'a';
int 0x10
mov al, 'd';
int 0x10
mov al, 'e';
int 0x10
mov al, 'r';
int 0x10
mov al, ':';
int 0x10
mov al, ')';
int 0x10



jmp $;                   this is jump to current address like a infinite loop

times 510-($-$$) db 0;   fill remain space from 512 with zeroes

dw 0xaa55;               magic number so BIOS knows we are in boot sector
