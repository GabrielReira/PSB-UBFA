bits 64

section .text
  global _start

_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, message
  mov rdx, len_message
  syscall

  ;Ler letra
  mov rax, 0
  mov rdi, 0
  mov rsi, letter
  syscall

  ;Atribuir letra maiúscula
  sub byte [letter], 32
  
  ;Imprimir letra
  mov rax, 1
  mov rdi, 1
  mov rsi, letter
  mov rdx, 1
  syscall

  ;Sair do programa
  mov rax, 60
  xor rdi, rdi
  syscall

section .data
  message: db "Informe a letra: ", 10
  len_message: equ $-message

section .bss
  letter resb 1
