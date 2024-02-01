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

Além das variáveis exportadas, o Shell possui suas próprias variáveis definidas e ele mesmo controla. Algumas dessas variáveis conseguimos controlar.

## Construindo variáveis

Há 3 modos de construir uma variável: `declare [nome_da_variavel]=[valor]`, `typeset [nome_da_variavel]=[valor]` ou diretamente com `[nome_da_variavel]=[valor]`

Exemplo:
```bash
$ var=banana
$ declare -p var
declare -- var="banana"
$ declare -p foo
bash: declare: foo: não encontrado
$ declare foo
$ declare -p foo
declare -- foo
$ bar=
$ declare -p bar
declare -- bar=""
$ typeset -p var
declare -- var="banana"
$ declare teste2=laranja
$ declare -p teste2
declare -- teste2="laranja"
```

obs¹: O valor nulo em Bash é o texto vazio: ""
obs²: `local` também é usado para construir variáveis, porém, seu uso é exclusivo dentro de funções.

Para destruir uma variável, basta usar `unset [nome_da_variavel]`

Variáveis com `declare -i` significa que aceitam expressões aritméticas, mas elas continuam sendo armazenadas como String

Os vetores indexados são identificados com `declare -a`
Uma das formas de definir um vetor indexado no Bash:
>   a=(1 2 3 4)

obs: Cada elemento é uma String.

Os vetores associativo são identificados com `declare -A`

obs: No caso de vetor associativo, é obrigatório a declaração explicita

Exemplo:
```bash
$ variavel=([vw]=fusca [fiat]=147 [ford]=corcel)
$ declare -p variavel 
declare -a variavel=([0]="corcel")
$ declare -A variavel=([vw]=fusca [fiat]=147 [ford]=corcel)
bash: variavel: impossível converter array indexado para associativo
$ declare -p variavel 
declare -a variavel=([0]="corcel")
$ unset variavel 
$ declare -A variavel=([vw]=fusca [fiat]=147 [ford]=corcel)
$ declare -p variavel 
declare -A variavel=([vw]="fusca" [ford]="corcel" [fiat]="147" )
```

As variáveis "normais", ou seja, escalares do tipo String são identificadas por `declare --`

Exemplo:
```bash
$ a=banana
$ b="laranja melao"
$ declare c=futebol
$ declare -- d=basket
$ declare -p a b c d
declare -- a="banana"
declare -- b="laranja melao"
declare -- c="futebol"
declare -- d="basket"
```

Para tornar a variável exportada, podemos usar `export [nome_da_variavel]` ou `declare -x [nome_da_variavel]`.

Obs: São exportadas apenas para processos iniciados a partir do local onde foi exportado a variável.

O comando `help export` exibe mais detalhes sobre exportação de variáveis.

`export -p` exibe todas as variáveis exportadas e `declare -p` exibe todas as variáveis exportadas e não exportadas.

É possível definir variáveis exportadas no arquivo `~/.bashrc`

## Extensão no nome do arquivo

A extensão no nome do arquivo são apenas para nós, usuários, identificarmos o conteúdo sem precisar "investigar" abrindo ou utilizando alguma ferramenta como por exemplo `file [nome_do_arquivo]`

Os sufixos no nome não altera em nada o arquivo, isso somente em S.O. like UNIX

Há programas que verificam o sufixo para auxiliar o usuário com informações extras, como por exemplo, no VSCode é alterado o icone de acordo com o sufixo.
Esses programas não alteram o comportamento do programa e eles sabem fazendo uma consulta em um banco de dados deles.