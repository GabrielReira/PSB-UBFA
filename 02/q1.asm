bits 64

section .text
  global _start

_start:
  ;Pedir o nome
  mov rax, 1
  mov rdi, 1
  mov rsi, msg_name
  mov rdx, len_msg_name
  syscall

  ;Ler e salvar o nome
  mov rax, 0
  mov rdi, 0
  mov rsi, name
  mov rdx, 20
  syscall
  ;Remover nova linha no final do nome
  mov rbx, rax
  dec rbx
  mov byte [rsi + rbx], 0
  ;Salvar primeira letra do nome
  mov al, [name]
  mov [first_letter], al
  ;Salvar última letra do nome
  lea rdi, [name]
  mov rcx, rbx
  dec rcx
  add rdi, rcx
  mov al, [rdi]
  mov [last_letter], al

  ;Pedir a letra
  mov rax, 1
  mov rdi, 1
  mov rsi, msg_letter
  mov rdx, len_msg_letter
  syscall

  ;Ler e salvar a letra
  mov rax, 0
  mov rdi, 0
  mov rsi, letter
  mov rdx, 1
  syscall

  ;Imprimir a primeira letra do nome
  mov rax, 1
  mov rdi, 1
  mov rsi, msg_first_letter
  mov rdx, len_msg_first_letter
  syscall
  mov rax, 1
  mov rdi, 1
  mov rsi, first_letter
  mov rdx, 1
  syscall
  ;Saltar linha
  mov rax, 1
  mov rdi, 1
  mov rsi, new_line
  mov rdx, 1
  syscall

  ;Imprimir a última letra do nome
  mov rax, 1
  mov rdi, 1
  mov rsi, msg_last_letter
  mov rdx, len_msg_last_letter
  syscall
  mov rax, 1
  mov rdi, 1
  mov rsi, last_letter
  mov rdx, 1
  syscall
  ;Saltar linha
  mov rax, 1
  mov rdi, 1
  mov rsi, new_line
  mov rdx, 1
  syscall

  ;Verificar se a letra está no nome
  lea rsi, [name]
  mov al, [letter]
  xor rcx, rcx
  mov rbx, rax

  find_letter:
    mov bl, [rsi + rcx]
    cmp bl, 0
    je not_found
    cmp bl, al
    je found
    inc rcx
    jmp find_letter
  
  found:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_found
    mov rdx, len_msg_found
    syscall
    jmp exit

  not_found:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_not_found
    mov rdx, len_msg_not_found
    syscall
    jmp exit

  ;Sair do programa
  exit:
    mov rax, 60
    xor rdi, rdi
    syscall

section .data
  msg_name: db "Digite o nome: ", 0
  len_msg_name: equ $-msg_name
  msg_letter: db "Digite a letra: ", 0
  len_msg_letter: equ $-msg_letter
  msg_first_letter: db "Primeira letra", 0x0A
  len_msg_first_letter: equ $-msg_first_letter
  new_line: db 0x0A
  msg_last_letter: db "Última letra", 0x0A
  len_msg_last_letter: equ $-msg_last_letter
  msg_found: db "Letra encontrada no nome.", 0x0A
  len_msg_found: equ $-msg_found
  msg_not_found: db "Letra não encontrada no nome.", 0x0A
  len_msg_not_found: equ $-msg_not_found

section .bss
  name resb 20
  letter resb 1
  first_letter resb 1
  last_letter resb 1
