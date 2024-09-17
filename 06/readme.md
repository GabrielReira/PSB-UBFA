## Atividade 6 - Condicional

Q1: Escreva um programa em Assembly que receba dois números e execute soma, subtração, multiplicação ou divisão. O usuário deve escolher qual operação ele deseja executar.

### Para compilar e executar o código

```bash
nasm -f elf64 q1.asm
gcc -o Q1 q1.o -no-pie -lm
./Q1
```
