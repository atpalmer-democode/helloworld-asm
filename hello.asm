    global    _start

    section   .text

_start:
    mov       rax, 1                  ; system call for write
    mov       rdi, 1                  ; file handle 1 is stdout
    mov       rsi, message            ; address of string to output
    mov       rdx, 13                 ; number of bytes
    syscall                           ; invoke system call 1 (write)
    mov       rax, 60                 ; system call for exit
    xor       rdi, rdi                ; exit code 0
    syscall                           ; invoke system call 60 (exit)

    section   .data

message:
    db        "Hello, world", 10      ; 10 is newline
