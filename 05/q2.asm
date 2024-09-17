bits 64

section .data
  msg_string: db "Informe a string: ", 0
  msg_even: db "Qtd de caracteres PAR", 0x0A, 0
  msg_odd: db "Qtd de caracteres ÍMPAR", 0x0A, 0

section .bss
  string resb 70

section .text
  global main
  extern printf, gets
  ;Macro para ver se a quantidade de letras é par
  %macro is_string_even 1
    mov rax, qword %1
    count_letters:
      inc rax
      cmp byte [rax], 0
      jne count_letters
    sub rax, qword string
    and rax, 1
  %endmacro

  main:
  push rbp
  mov rbp, rsp

  ;Pedir a string
  mov rdi, msg_string
  call printf
  ;Ler e salvar string
  mov rdi, string
  call gets

  ;Chamar macro e exibir resultado
  is_string_even string
  cmp rax, 0
  je print_even

  print_odd:
    mov rdi, msg_odd
    call printf
    jmp exit
  print_even:
    mov rdi, msg_even
    call printf

  ;Sair do programa
  exit:
    leave
    ret
