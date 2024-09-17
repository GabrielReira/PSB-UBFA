bits 64

section .text
  global _start

_start:
  ;Pedir a string
  mov rax, 1
  mov rdi, 1
  mov rsi, msg_string
  mov rdx, len_msg_string
  syscall

  ;Ler e salvar string
  mov rax, 0
  mov rdi, 0
  mov rsi, string
  mov rdx, 70
  syscall

  ;Calcular a quantidade de letras
  lea rsi, [string]
  xor rcx, rcx
  xor rbx, rbx
  count_letters:
    mov al, [rsi + rcx]
    cmp al, 0x0A
    je end_counting
    cmp al, ' '
    je skip_space
    inc rbx
  skip_space:
    inc rcx
    jmp count_letters

  ;Verificar se a quantidade de letras é par ou ímpar
  end_counting:
    mov rax, rbx
    and rax, 1
    jz print_even

  print_odd:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_odd
    mov rdx, len_msg_odd
    syscall
    jmp exit
  print_even:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_even
    mov rdx, len_msg_even
    syscall

  ;Sair do programa
  exit:
    mov rax, 60
    xor rdi, rdi
    syscall

section .data
  msg_string: db "Informe a string: ", 0
  len_msg_string: equ $-msg_string
  msg_even: db "Qtd de letras PAR", 0x0A
  len_msg_even: equ $-msg_even
  msg_odd: db "Qtd de letras ÍMPAR", 0x0A
  len_msg_odd: equ $-msg_odd

section .bss
  string resb 70
