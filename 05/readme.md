## Atividade 5 - Macros

- Q1: Crie macros single-line para as seguintes operações:
    - x²
    - x³
    - (2*x)+y
    - ((4+x)*y)/z

- Q2: Refacção do código **Q3** da Atividade 3. Utilizando macros, crie um código que verifique se o total de caracteres de uma string é par ou ímpar.

### Para compilar e executar os códigos

```bash
nasm -f elf64 q1.asm
gcc q1.o -o Q1 -no-pie -lm
./Q1
```
```bash
nasm -f elf64 q2.asm
gcc q2.o -o Q2 -no-pie -lm
./Q2
```
