bits 64

section .data
  msg_numbers: db "Sendo x = 3, y = 5, z = 7", 0x0A, 0
  msg_result_1: db "     x^2    = ", 0
  msg_result_2: db "     x^3    = ", 0
  msg_result_3: db "   (2*x)+y  = ", 0
  msg_result_4: db "((4+x)*y)/z = ", 0
  fmt db "%d", 0x0A

section .text
  global main
  extern printf
  ;Definir os macros
  %define macro1(x) ((x)*(x))
  %define macro2(x) (x * x * x)
  %define macro3(x, y) ((2 * x) + y)
  %define macro4(x, y, z) (((4 + x) * y) / z)

  main:
  push rbp
  mov rbp, rsp

  mov rdi, msg_numbers
  call printf

  ;Obter os resultados
  mov rdi, msg_result_1
  call printf
  mov rax, macro1(3)
  mov rsi, rax
  mov rdi, fmt
  call printf

  mov rdi, msg_result_2
  call printf
  mov rax, macro2(3)
  mov rsi, rax
  mov rdi, fmt
  call printf

  mov rdi, msg_result_3
  call printf
  mov rax, macro3(3, 5)
  mov rsi, rax
  mov rdi, fmt
  call printf

  mov rdi, msg_result_4
  call printf
  mov rax, macro4(3, 5, 7)
  mov rsi, rax
  mov rdi, fmt
  call printf

  ;Sair do programa
  leave
  ret
