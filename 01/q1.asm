bits 64

section .text
  global _start

_start:
  ;Perguntar o nome ao usuário
  mov rax, 1
  mov rdi, 1
  mov rsi, message
  mov rdx, len_message
  syscall

  ;Ler e salvar nome do usuário
  mov rax, 0
  mov rdi, 0
  mov rsi, name
  syscall

  ;Evitar quebra de linha
  dec rax
  mov byte [rsi + rax], 0
  
  ;Imprimir mensagem de bem-vindo
  mov rax, 1
  mov rdi, 1
  mov rsi, name
  mov rdx, len_name
  syscall
  mov rax, 1
  mov rdi, 1
  mov rsi, welcome
  mov rdx, len_welcome
  syscall
  
  ;Sair do programa
  mov rax, 60
  xor rdi, rdi
  syscall

section   .data
  message: db "Qual seu nome?", 0x0A
  len_message: equ $-message
  welcome: db " é bem vindo(a) ao semestre da disciplina de PSB"
  len_welcome: equ $-welcome

section .bss
  name resb 20
  len_name: equ $-name
