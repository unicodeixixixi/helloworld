section .data    ; data section
    message db 'Hello World', 0    ; message to print

section .text    ; code section
    global _start    ; entry point

_start:
    mov eax, 4       ; system call for "write"
    mov ebx, 1       ; file descriptor (stdout)
    mov ecx, message ; message to print
    mov edx, 11      ; message length (excluding null terminator)
    int 0x80         ; call kernel

    mov eax, 1       ; system call for "exit"
    xor ebx, ebx     ; exit status code (0 for success)
    int 0x80         ; call kernel
