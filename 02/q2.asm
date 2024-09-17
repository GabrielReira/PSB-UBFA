bits 64

section .text
  global _start

_start:
  ;Pedir os anos
  mov rax, 1
  mov rdi, 1
  mov rsi, msg_years
  mov rdx, len_msg_years
  syscall
  ;Ler anos
  mov rax, 0
  mov rdi, 0
  mov rsi, years
  mov rdx, 10
  syscall
  ;Converter anos para inteiro e multiplicar por 365
  call str_to_int
  imul rax, rax, 365
  mov rbx, rax

  ;Pedir os meses
  mov rax, 1
  mov rdi, 1
  mov rsi, msg_months
  mov rdx, len_msg_months
  syscall
  ;Ler meses
  mov rax, 0
  mov rdi, 0
  mov rsi, months
  mov rdx, 10
  syscall
  ;Converter meses para inteiro e multiplicar por 30
  call str_to_int
  imul rax, rax, 30
  add rbx, rax

  ;Pedir os dias
  mov rax, 1
  mov rdi, 1
  mov rsi, msg_days
  mov rdx, len_msg_days
  syscall
  ;Ler dias
  mov rax, 0
  mov rdi, 0
  mov rsi, days
  mov rdx, 10
  syscall
  ;Converter dias para inteiro e adicionar ao total
  call str_to_int
  add rbx, rax

  ;Converter resultado para string
  mov rax, rbx
  call int_to_str

  ;Imprimir resultado
  mov rax, 1
  mov rdi, 1
  mov rsi, msg_result
  mov rdx, len_msg_result
  syscall
  mov rax, 1
  mov rdi, 1
  mov rsi, result
  mov rdx, 12
  syscall

  ;Sair do programa
  mov rax, 60
  xor rdi, rdi
  syscall

str_to_int:
  xor rax, rax
  xor rdi, rdi
.next_digit:
  movzx rdx, byte [rsi + rdi]
  cmp rdx, 0x0A
  je .done
  sub rdx, '0'
  imul rax, rax, 10
  add rax, rdx
  inc rdi
  jmp .next_digit
.done:
  ret

int_to_str:
  mov rdi, result
  add rdi, 11
  mov byte [rdi], 0
  dec rdi
  mov rcx, 10
.convert_loop:
  xor rdx, rdx
  div rcx
  add dl, '0'
  mov [rdi], dl
  dec rdi
  test rax, rax
  jnz .convert_loop
  ret

section .data
  msg_years: db "Digite os anos: ", 0
  len_msg_years: equ $-msg_years
  msg_months: db "Digite os meses: ", 0
  len_msg_months: equ $-msg_months
  msg_days: db "Digite os dias: ", 0
  len_msg_days: equ $-msg_days
  msg_result: db "Idade em dias", 0x0A
  len_msg_result: equ $-msg_result
  
section .bss
  years resb 10
  months resb 10
  days resb 10
  result resq 1
  len_result resq 1
