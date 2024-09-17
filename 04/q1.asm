bits 64

section .data
  n1 dd 0
  n2 dd 0
  n3 dd 0
  fmt_scan db "%d", 0
  fmt_print db "%lf ", 0
  msg_numbers: db "Informe os 3 números:", 0x0A, 0
  msg_result: db "A média aritmética, geométrica e harmônica vale, respectivamente: "
  
section .text
  global main
  extern printf, scanf
  extern arithmetic_mean, geometric_mean, harmonic_mean
  
  main:
  push rbp
  mov rbp, rsp

  ;Pedir os números
  mov rdi, msg_numbers
  call printf

  ;Ler os números
  mov rdi, fmt_scan
  lea rsi, [n1]
  call scanf
  mov rdi, fmt_scan
  lea rsi, [n2]
  call scanf
  mov rdi, fmt_scan
  lea rsi, [n3]
  call scanf

  mov rdi, msg_result
  call printf

  ;Obter as médias e exibir o resultado
  mov rdi, [n1]
  mov rsi, [n2]
  mov rdx, [n3]
  call arithmetic_mean
  mov rsi, rax
  mov rdi, fmt_print
  call printf

  mov rdi, [n1]
  mov rsi, [n2]
  mov rdx, [n3]
  call geometric_mean
  mov rsi, rax
  mov rdi, fmt_print
  call printf

  mov rdi, [n1]
  mov rsi, [n2]
  mov rdx, [n3]
  call harmonic_mean
  mov rsi, rax
  mov rdi, fmt_print
  call printf

  ;Sair do programa
  leave
  ret
