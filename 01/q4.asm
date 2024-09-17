bits 64

section .text
  global _start

_start:
  ;Ler primeiro número
  mov rax, 1
  mov rdi, 1
  mov rsi, message_1
  mov rdx, len_message_1
  syscall
  mov rax, 0
  mov rdi, 0
  mov rsi, num_1
  syscall

  ;Ler segundo número
  mov rax, 1
  mov rdi, 1
  mov rsi, message_2
  mov rdx, len_message_2
  syscall
  mov rax, 0
  mov rdi, 0
  mov rsi, num_2
  syscall

  ;Realizar a soma
  mov al, [num_1]
  mov bl, [num_2]
  sub al, '0'
  sub bl, '0'
  add al, bl
  add al, '0'
  mov ah, 0xA
  mov [result], ax

  ;Imprimir resultado
  mov rax, 1
  mov rdi, 1
  mov rsi, message_3
  mov rdx, len_message_3
  syscall
  mov rax, 1
  mov rdi, 1
  mov rsi, result
  mov rdx, 2
  syscall

  ;Sair do programa
  mov rax, 60
  xor rdi, rdi
  syscall

section .data
  message_1: db "Informe o primeiro número", 10
  len_message_1: equ $-message_1
  message_2: db "Informe o segundo número", 10
  len_message_2: equ $-message_2
  message_3: db "Resultado = "
  len_message_3: equ $-message_3

section .bss
  num_1 resb 4
  num_2 resb 4
  result resb 4
