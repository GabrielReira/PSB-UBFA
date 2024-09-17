bits 64

section .data
  h1 dq 0
  h2 dq 0
  h3 dq 0
  h4 dq 0
  divisor dq 4.0
  fmt dq "%lf"
  msg_height: db "Informe as 4 alturas:", 0x0A, 0
  msg_result: db "A média das alturas é: "
  
section .text
  global main
  extern printf, scanf
  
  main:
  push rbp
  mov rbp, rsp

  ;Pedir as alturas
  mov rdi, msg_height
  call printf

  ;Ler as alturas
  mov rdi, fmt
  mov rsi, h1
  call scanf
  mov rdi, fmt
  mov rsi, h2
  call scanf
  mov rdi, fmt
  mov rsi, h3
  call scanf
  mov rdi, fmt
  mov rsi, h4
  call scanf

  mov rdi, msg_result
  call printf

  ;Obter a média
  movq xmm0, [h1]
  addsd xmm0, [h2]
  addsd xmm0, [h3]
  addsd xmm0, [h4]
  divsd xmm0, [divisor]

  ;Apresentar o resultado
  mov rdi, fmt
  call printf

  ;Sair do programa
  leave
  ret
