section .data
  msg db "Hello World From Assembly!", 0
  len equ $ - msg

section .text
  global _start

_start:
  mov rax, 1      ; Syscall Number | 1 = write
  mov rdi, 1      ; Parameter 1 | 1 = stdout
  mov rsi, msg    ; Parameter 2 | msg adress
  mov rdx, len    ; Parameter 3 | length
  syscall

  mov rax, 60     ; Syscall Number | 60 = exit
  xor rdi, rdi    ; Exit code | 0
  syscall 
