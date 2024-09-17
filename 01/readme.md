## Atividade 1 - Syscall

- Q1: Elabore o seguinte código utilizando *syscall*:
    - Pergunte o **nome** do aluno;
    - Imprima "**Nome** é bem-vindo(a) ao semestre da disciplina de PSB".
OBS.: [Tabela System Call](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/).

- Q2: Elabore um código que receba uma letra minúscula e retorna como saída a letra maiúscula.  
OBS.: Verificar tabela ASCII.

- Q3: Elabore um código que receba uma *string* e imprima suas 3 primeiras letras.

- Q4: Elabore um código que receba dois números e imprima o resultado da soma (valor numérico).  
OBS.: Não utilizar printf/scanf.


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
```bash
nasm -f elf64 q4.asm
ld q4.o -o Q4
./Q4
```
