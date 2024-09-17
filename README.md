# Programação de Software Básico (PSB)

Este repositório contém os códigos das atividades desenvolvidas durante a disciplina de Programação de Software Básico (PSB). Os códigos são escritos em **Assembly** utilizando NASM.

## Como baixar e executar

### Opção 1: execução local com NASM

1. Instale o [NASM](https://www.nasm.us/)
1. Clone este repositório
1. Compile e execute os códigos

### Opção 2: utilização de compilador no Replit

1. Acesse o [Replit](https://replit.com/)
1. Crie um repositório com o template [Assembly x86-64](https://replit.com/@Oli/Assembly-x86-64)
1. Faça o upload dos arquivos *.asm* para o repositório criado
1. Compile e execute os códigos

Dentro de cada diretório relativo às atividades há um **readme** interno que especifica quais devem ser os comandos para compilar e executar os códigos via terminal.

## Atividades

### Atividade 1 - Syscall

- Q1: Elabore o seguinte código utilizando *syscall*:
    - Pergunte o **nome** do aluno;
    - Imprima "**Nome** é bem-vindo(a) ao semestre da disciplina de PSB".  
OBS.: [Tabela System Call](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/).

- Q2: Elabore um código que receba uma letra minúscula e retorna como saída a letra maiúscula.  
OBS.: Verificar tabela ASCII.

- Q3: Elabore um código que receba uma *string* e imprima suas 3 primeiras letras.

- Q4: Elabore um código que receba dois números e imprima o resultado da soma (valor numérico).  
OBS.: Não utilizar printf/scanf.

### Atividade 2 - Lógica

- Q1: Elabore um código que leia um *nome* e uma *letra*. O programa deve:
    - Imprimir a primeira e última letra do nome;
    - Dizer se a letra fornecida está presente no nome.

- Q2: Elabore um código que leia a idade de uma pessoa expressa em anos, meses e dias. O programa deve retornar a idade dessa pessoa expressa apenas em dias.  
OBS.: Considerar o ano com 365 dias e o mês com 30 dias.

- Q3: Elabore um código que receba uma string e imprima:
    - "Qtd de letras PAR" - se a quantidade de letras for PAR;
    - "Qtd de letras ÍMPAR" - se a quantidade de letras for ÍMPAR.

### Atividade 3 - Ponto Flutuante

Q1: Elabore um código que leia a altura de 4 pessoas e retorne a média dos valores recebidos.  
OBS.: Utilizar ponto flutuante.

### Atividade 4 - Assembly com C

Q1: Escreva um programa em assembly que leia três números inteiros, calcule a média aritmética, a média geométrica e a média harmônica. O programa deve retornar as médias calculadas. As médias devem ser escritas em C.

### Atividade 5 - Macros

- Q1: Crie macros single-line para as seguintes operações:
    - x²
    - x³
    - (2*x)+y
    - ((4+x)*y)/z

- Q2: Refacção do código **Q3** da Atividade 2. Utilizando macros, crie um código que verifique se o total de caracteres de uma string é par ou ímpar.

OBS.: [Manual de Macro para NASM](https://www.nasm.us/doc/nasmdoc4.html).

### Atividade 6 - Condicional

Q1: Escreva um programa em Assembly que receba dois números e execute soma, subtração, multiplicação ou divisão. O usuário deve escolher qual operação ele deseja executar.
