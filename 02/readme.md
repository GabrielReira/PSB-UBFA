## Atividade 2 - Lógica

- Q1: Elabore um código que leia um *nome* e uma *letra*. O programa deve:
    - Imprimir a primeira e última letra do nome;
    - Dizer se a letra fornecida está presente no nome.

- Q2: Elabore um código que leia a idade de uma pessoa expressa em anos, meses e dias. O programa deve retornar a idade dessa pessoa expressa apenas em dias.  
OBS.: Considerar o ano com 365 dias e o mês com 30 dias.

- Q3: Elabore um código que receba uma string e imprima:
    - "Qtd de letras PAR" - se a quantidade de letras for PAR;
    - "Qtd de letras ÍMPAR" - se a quantidade de letras for ÍMPAR.

### Para compilar e executar os códigos

```bash
nasm -f elf64 q1.asm
ld q1.o -o Q1
./Q1
```
```bash
nasm -f elf64 q2.asm
ld q2.o -o Q2
./Q2
```
```bash
nasm -f elf64 q3.asm
ld q3.o -o Q3
./Q3
```
