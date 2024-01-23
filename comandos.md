# Comandos básicos

Categoria 01:

- `cd`, `mkdir`, `cp`, `mv`, `ls`

Categoria 02:

- `cat`, `head`, `tail`, `less`, `grep`, `sed`, `tr`, `awk`, `cut`

Categoria 03: 

- `man`, `info`, `which`, `apropos`

Categoria 04: 

- `nl`, `wc`, `hd`, `rm`, `pwd`, `echo`, `sha1sum`, `type`, `alias`, `sleep`, `ps`, `jobs`, `true`, `false`, `locale`, `whoami`, `time`, `teste`, `let`, `(( ))`, `[[ ]]`, `help`
- `$PWD`, `$OLDPWD`, `~+`, `~-`, `~`, `~sys`, `~root`, `set`, `printf`

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
