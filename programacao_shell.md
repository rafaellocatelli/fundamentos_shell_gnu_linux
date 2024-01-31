# Shell como linguagem de programação

## Descrição

Shell é uma linguagem de alto nível, interpretada, imperativa, procedural e estrutural

## Sintaxe

1. Comandos simples
2. Regras de citação
3. Expansões
4. Operadores de controle
5. Comandos compostos

## Semantica

1. Não existem comandos "do Linux": os comandos são seus!
2. Comando é o que você quer que o shell faça, só que escrito na linguagem que ele consegue interpretar.
3. O shell nunca erra: se o resultado não foi o esperado, foi você que esperou o resultado errado!
4. Preocupe-se mais com a expressividade do que com a legibilidade.

## Bibliotecas

1. Biblioteca padrão: comandos internos;
2. Includes: outros scripts carregados por "source"
3. Todos os programas CLI e scripts instalados!

## Ferramentas

1. Interpretador: Bash
2. Editor/IDE: qualquer editor de textos puros (raw)
3. Linter: shellcheck*

*Use com consciência crítica!

## Propósito

O propósito da linguagem do shell é ajudar a determinar como, quando, sob quais condições e com que dados os comandos serão executados!

## Tipagem

1. Todos os dados são de tipo "indeterminado".
2. Em princípio, todos são cadeias de caracteres (strings).
3. Quem programa determina que tipos certas cadeias representam.
4. Cadeias numéricas podem participar de expressões aritméticas.

## Parâmetros e variáveis

1. Todos os valores identificados são parâmetros.
2. Variáveis são parâmetros identificados com nomes.
3. Todos os outros identificares denotam parâmetros.
4. Nomes:
    - Combinação de caracteres ASCII A-Z, a-z e _ (sublinhado);
    - Pode conter dígitos (0-9), menos como primeiro caractere.
5. Parâmetro posicionais:
    - Recebem argumentos passados para a sessão;
    - São identificados por números segundo a ordem de passagem.
6. Parâmetros especiais:
    - Expandem informações diversas.
7. Nós só podemos manipular diretamente as variáveis!


## Argumentos e Variáveis exportadas

`ENV` contém a lista de variáveis exportadas, conhecidas como variáveis de ambiente.
`ARGV` contém um "vetor"* com todos os argumentos passados no ato da execução do programa.
`ARGC` contém a quantidade de argumentos no vetor de argumentos.

*É um tipo de vetor, porém, seus elementos não possuem tamanho regular. Cada elemento é separado pelo caracter nulo ("\0" ou 0x00).

Entre `ARGC` e `ARGV` e também entre `ARGV` e `ENV` há um padding de 1 word, conhecido como _NULL element_ (elemento nulo).

Os `ARGC` e `ARGV` são parâmetros posicionais.

obs: É possível visualizar o ARGV aplicando:
>   strace -e execve url/nome_do_programa arg1 arg2 ...argN

Exemplo:
```bash
$ strace -e execve ./script.sh argumento1 argumento2 argumento3
execve("./script.sh", ["./script.sh", "argumento1", "argumento2", "argumento3"], 0x7ffc6a529198 /* 60 vars */) = 0
olá, mundo!
+++ exited with 0 +++
```
