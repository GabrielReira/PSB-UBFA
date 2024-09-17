## Atividade 4 - Assembly com C

Q1: Escreva um programa em assembly que leia três números inteiros, calcule a média aritmética, a média geométrica e a média harmônica. O programa deve retornar as médias calculadas. As médias devem ser escritas em C.

### Para compilar e executar o código

```bash
nasm -f elf64 q1.asm
gcc -c aux.c -o aux.o
gcc -o Q1 q1.o aux.o -no-pie -lm
./Q1
```
