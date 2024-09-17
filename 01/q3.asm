bits 64

section .text
  global _start

_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, message
  mov rdx, len_message
  syscall

  ;Ler e salvar string
  mov rax, 0
  mov rdi, 0
  mov rsi, string
  syscall

  ;Imprimir apenas as 3 primeiras letras
  mov rax, 1
  mov rdi, 1
  mov rsi, string
  mov rdx, 3
  syscall

  ;Sair do programa
  mov rax, 60
  xor rdi, rdi
  syscall

section   .data
  message: db "Digite a frase:", 0x0A
  len_message: equ $-message

section .bss
  string resb 3
