# Operadores de redirecionamento

`>` - Redirecionamento std out
`2>` - Redirecionamento std err


# Palavra reservada

- A palavra reservada não faz parte do comando, ele é uma diretiva de como o comando deve ser executado.

Exemplo:
```bash
$ time ls -la arquivonaoexistente 2> err.txt
$ cat err.txt
```

# Tipos de arquivos tradicionais do UNIX

1. Link simbólico
2. Comum
3. Diretório
4. Socket
5. FIFO
6. Dispositivo caracter
7. Dispositivo bloco

# hash bang

#!/bin/bash

#!/usr/bin/env python3

# Terminais emulados

`tty` - Implementado no espaço do Kernel Linux
`pty` - pseudoterminais (pts e ptm)

# Metacaracteres

Controle:

- `;`, `&`, `&&`, `||`, `;;`, `;;&`, `;&`

Pipe:

- `|`, `|&`

Redirecionamento:

- `<`, `<<`, `<<<`, `>`, `>>`, `&>`, `&>>`

# Operadores de controle

`;` - Execução incondicional e sincrona (um depois do outro)
`&` - Execução incondicional e assincrona (um durante o outro)
`&&` - Execução condicional (se sucesso)
`||` - Execução condicional (se erro)


# Comandos básicos

Categoria 01:

- `cd`, `mkdir`, `cp`, `mv`, `ls`

Categoria 02:

- `cat`, `head`, `tail`, `less`, `grep`, `sed`, `tr`, `awk`, `cut`

Categoria 03: 

- `man`, `info`, `which`, `apropos`

Categoria 04: 

- `nl`, `wc`, `hd`, `rm`, `pwd`, `echo`, `sha1sum`, `type`, `alias`
- `sleep`, `ps`, `jobs`, `true`, `false`, `locale`, `whoami`, `time`
- `teste`, `let`, `(( ))`, `[[ ]]`, `help`
- `$PWD`, `$OLDPWD`, `~+`, `~-`, `~`, `~sys`, `~root`, `set`, `printf`, `file`, `stat`, `touch`, `find`
- `echo $SHLVL`, `echo $?`
- `cat | strace -f -e read,clone,execve bash`
- `cat | strace -f -e read,write,clone,execve,dup2,openat,close bash`
- `stty -echo`                      <!-- desligando a função echo no momento da escrita -->
- `stty -a`                         <!-- exibe valore associados à sinalizações -->
- `fg`                              <!-- pega o último processo em segundo plano e torna em primeiro plano -->
- `job`, `wait`
- `batcat [nome_dos_arquivos]`
- `ps --forest`                     <!-- traça a ramificação -->
- `ps -aux --forest` ou `ps -auxf`
- `ps -lF -C 'bash'` ou `ps -o f,stat,pid,comm -C 'bash'`
- `ps -e` ou `ps -el` ou `ps -elF`  <!--info estática-->
- `htop` ou `top`                   <!--info dinamica-->
- `trap`
- `exec bash`                       <!--reinicia o bash-->
- `cat /proc/uptime` ou `uptime`    <!-- exiebe a quantidade de tempo em que o computador está ligado -->
- `cat /proc/$$/maps`               <!-- visualizar as memórias reservadas na RAM para o processo -->
- `cat /proc/sys/kernel/pid_max`    <!-- exibe a quantidade máxima de Process ID que o computador consegue gerar. Após atingir o limite, ele reinicia a partir do 300. Pois os 300 primeiros são reservados para processos internos do S.O. -->
- `cat` vs `tac`                    <!-- cat exibe o arquivo de cima para baixo e o tac exibe de baixo para cima-->
- `lscpu` e `cat /proc/cpuinfo` e `cat /proc/meminfo` e `cat /proc/version`
- `pstree -npTC age`
- `kill -l`                         <!-- visualizar a tabela de sinais -->
- `export var`                      <!-- exportar uma variável de um shell para um shell filho -->
- `echo $PATH`                      <!-- Exibe os caminhos mapeados dos diretórios que podem ser usados no Bash sem informar o caminho -->
- `declare -p`                      <!-- Exibe todas as funções e variáveis definidas na seção shell em execução -->
- `whereis [nome_do_programa]`      <!-- Exibe os caminhos de execução do programa -->
- `env`                             <!-- Exibe todas as variáveis exportadas -->
- `ls -a [nome_do_comando]`         <!-- Exibe onde está armazenado e seu apelido -->

