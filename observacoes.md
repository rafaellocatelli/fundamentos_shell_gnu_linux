## observação [0001]

```bash
locatelli:~/ $ echo "banana         laranja"
banana         laranja
locatelli:~/ $ echo banana         laranja
banana laranja
locatelli:~/ $ var="banana         laranja"
locatelli:~/ $ echo $var
banana laranja
locatelli:~/ $ echo "$var"
banana         laranja
```



## observação [0002]



```bash
locatelli:~/ $ ls -l
total 8
-rw-rw-r-- 1 locatelli locatelli 1175 jan 22 23:46 comandos.md
-rw-rw-r-- 1 locatelli locatelli  299 jan 23 15:33 observacoes.md
locatelli:~/ $ ls c
ls: não foi possível acessar 'c': Arquivo ou diretório inexistente
locatelli:~/ $ ls comandos.md 
comandos.md
locatelli:~/ $ ls c*
comandos.md
locatelli:~/ $ 
```


## observação [0003]

```bash
locatelli:~/ $ ls
comandos.md  observacoes.md
locatelli:~/ $ touch arquivo-{0..4}.txt
locatelli:~/ $ ls
arquivo-0.txt  arquivo-1.txt  arquivo-2.txt  arquivo-3.txt  arquivo-4.txt  comandos.md  observacoes.md
locatelli:~/ $ ls *.txt
arquivo-0.txt  arquivo-1.txt  arquivo-2.txt  arquivo-3.txt  arquivo-4.txt
locatelli:~/ $ ls *txt > arquivo-5.txt
locatelli:~/ $ ls
arquivo-0.txt  arquivo-1.txt  arquivo-2.txt  arquivo-3.txt  arquivo-4.txt  arquivo-5.txt  comandos.md  observacoes.md
locatelli:~/ $ cat arquivo-5.txt 
arquivo-0.txt
arquivo-1.txt
arquivo-2.txt
arquivo-3.txt
arquivo-4.txt
locatelli:~/ $ ls *.txt
arquivo-0.txt  arquivo-1.txt  arquivo-2.txt  arquivo-3.txt  arquivo-4.txt  arquivo-5.txt
locatelli:~/ $ ls
arquivo-0.txt  arquivo-1.txt  arquivo-2.txt  arquivo-3.txt  arquivo-4.txt  arquivo-5.txt  comandos.md  observacoes.md
locatelli:~/ $ ls > arquivo-6.txt
locatelli:~/ $ ls
arquivo-0.txt  arquivo-1.txt  arquivo-2.txt  arquivo-3.txt  arquivo-4.txt  arquivo-5.txt  arquivo-6.txt  comandos.md  observacoes.md
locatelli:~/ $ cat arquivo-6.txt 
arquivo-0.txt
arquivo-1.txt
arquivo-2.txt
arquivo-3.txt
arquivo-4.txt
arquivo-5.txt
arquivo-6.txt
comandos.md
observacoes.md
locatelli:~/ $ ls arquivo-1.txt arquivo-2.txt > arquivo-7.txt
locatelli:~/ $ cat arquivo-7.txt 
arquivo-1.txt
arquivo-2.txt
locatelli:~/ $ ls *.txt
arquivo-0.txt  arquivo-1.txt  arquivo-2.txt  arquivo-3.txt  arquivo-4.txt  arquivo-5.txt  arquivo-6.txt  arquivo-7.txt
locatelli:~/ $ ls
arquivo-0.txt  arquivo-1.txt  arquivo-2.txt  arquivo-3.txt  arquivo-4.txt  arquivo-5.txt  arquivo-6.txt  arquivo-7.txt  comandos.md  observacoes.md
locatelli:~/ $ ls *.txt > arquivo-8.txt
locatelli:~/ $ cat arquivo-8.txt 
arquivo-0.txt
arquivo-1.txt
arquivo-2.txt
arquivo-3.txt
arquivo-4.txt
arquivo-5.txt
arquivo-6.txt
arquivo-7.txt
locatelli:~/ $ ls 
arquivo-0.txt  arquivo-1.txt  arquivo-2.txt  arquivo-3.txt  arquivo-4.txt  arquivo-5.txt  arquivo-6.txt  arquivo-7.txt  arquivo-8.txt  comandos.md  observacoes.md
locatelli:~/ $ 
```

## observação [0004]

```bash
locatelli:~/ $ ls
comandos.md  observacoes.md
locatelli:~/ $ touch arquivo-1.txt
locatelli:~/ $ > arquivo-2.txt
locatelli:~/ $ ls
arquivo-1.txt  arquivo-2.txt  comandos.md  observacoes.md
locatelli:~/ $ cat arquivo-1.txt 
locatelli:~/ $ cat arquivo-2.txt 
locatelli:~/ $ stat arquivo-1.txt 
  Arquivo: arquivo-1.txt
    Tamanho: 0          Blocos: 0          bloco de E/S: 4096   arquivo comum vazio
Dispositivo: 10302h/66306d      Inode: 7210995     Links: 1
Acesso: (0664/-rw-rw-r--)  Uid: ( 1000/locatelli)   Gid: ( 1000/locatelli)
Acesso: 2024-01-23 17:41:28.368041288 -0300
Modificação: 2024-01-23 17:41:02.807952463 -0300
  Alteração: 2024-01-23 17:41:02.807952463 -0300
    Criação: 2024-01-23 17:41:02.807952463 -0300
locatelli:~/ $ stat arquivo-2.txt 
  Arquivo: arquivo-2.txt
    Tamanho: 0          Blocos: 0          bloco de E/S: 4096   arquivo comum vazio
Dispositivo: 10302h/66306d      Inode: 7210997     Links: 1
Acesso: (0664/-rw-rw-r--)  Uid: ( 1000/locatelli)   Gid: ( 1000/locatelli)
Acesso: 2024-01-23 17:41:34.264061716 -0300
Modificação: 2024-01-23 17:41:15.643997127 -0300
  Alteração: 2024-01-23 17:41:15.643997127 -0300
    Criação: 2024-01-23 17:41:15.643997127 -0300
locatelli:~/ $ file arquivo-1.txt 
arquivo-1.txt: empty
locatelli:~/ $ file arquivo-2.txt 
arquivo-2.txt: empty
```


## observação [0005]

```bash
locatelli:~/ $ ls
comandos.md  observacoes.md
locatelli:~/ $ touch arquivo-{1..4}.txt
locatelli:~/ $ ls -l
total 12
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:07 arquivo-1.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:07 arquivo-2.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:07 arquivo-3.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:07 arquivo-4.txt
-rw-rw-r-- 1 locatelli locatelli 1200 jan 23 17:39 comandos.md
-rw-rw-r-- 1 locatelli locatelli 4143 jan 23 17:42 observacoes.md
locatelli:~/ $ stat arquivo-1.txt 
  Arquivo: arquivo-1.txt
    Tamanho: 0          Blocos: 0          bloco de E/S: 4096   arquivo comum vazio
Dispositivo: 10302h/66306d      Inode: 7210995     Links: 1
Acesso: (0664/-rw-rw-r--)  Uid: ( 1000/locatelli)   Gid: ( 1000/locatelli)
Acesso: 2024-01-23 18:07:37.865226242 -0300
Modificação: 2024-01-23 18:07:37.865226242 -0300
  Alteração: 2024-01-23 18:07:37.865226242 -0300
    Criação: 2024-01-23 18:07:37.865226242 -0300
locatelli:~/ $ stat arquivo-2.txt 
  Arquivo: arquivo-2.txt
    Tamanho: 0          Blocos: 0          bloco de E/S: 4096   arquivo comum vazio
Dispositivo: 10302h/66306d      Inode: 7210997     Links: 1
Acesso: (0664/-rw-rw-r--)  Uid: ( 1000/locatelli)   Gid: ( 1000/locatelli)
Acesso: 2024-01-23 18:07:37.865226242 -0300
Modificação: 2024-01-23 18:07:37.865226242 -0300
  Alteração: 2024-01-23 18:07:37.865226242 -0300
    Criação: 2024-01-23 18:07:37.865226242 -0300
locatelli:~/ $ touch arquivo-1.txt 
locatelli:~/ $ > arquivo-2.txt 
locatelli:~/ $ ls -l
total 12
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:08 arquivo-1.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:08 arquivo-2.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:07 arquivo-3.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:07 arquivo-4.txt
-rw-rw-r-- 1 locatelli locatelli 1200 jan 23 17:39 comandos.md
-rw-rw-r-- 1 locatelli locatelli 4143 jan 23 17:42 observacoes.md
locatelli:~/ $ stat arquivo-1.txt 
  Arquivo: arquivo-1.txt
    Tamanho: 0          Blocos: 0          bloco de E/S: 4096   arquivo comum vazio
Dispositivo: 10302h/66306d      Inode: 7210995     Links: 1
Acesso: (0664/-rw-rw-r--)  Uid: ( 1000/locatelli)   Gid: ( 1000/locatelli)
Acesso: 2024-01-23 18:08:03.885331520 -0300
Modificação: 2024-01-23 18:08:03.885331520 -0300
  Alteração: 2024-01-23 18:08:03.885331520 -0300
    Criação: 2024-01-23 18:07:37.865226242 -0300
locatelli:~/ $ stat arquivo-2.txt 
  Arquivo: arquivo-2.txt
    Tamanho: 0          Blocos: 0          bloco de E/S: 4096   arquivo comum vazio
Dispositivo: 10302h/66306d      Inode: 7210997     Links: 1
Acesso: (0664/-rw-rw-r--)  Uid: ( 1000/locatelli)   Gid: ( 1000/locatelli)
Acesso: 2024-01-23 18:07:37.865226242 -0300
Modificação: 2024-01-23 18:08:09.769355184 -0300
  Alteração: 2024-01-23 18:08:09.769355184 -0300
    Criação: 2024-01-23 18:07:37.865226242 -0300
locatelli:~/ $ stat arquivo-3.txt 
  Arquivo: arquivo-3.txt
    Tamanho: 0          Blocos: 0          bloco de E/S: 4096   arquivo comum vazio
Dispositivo: 10302h/66306d      Inode: 7210998     Links: 1
Acesso: (0664/-rw-rw-r--)  Uid: ( 1000/locatelli)   Gid: ( 1000/locatelli)
Acesso: 2024-01-23 18:07:37.865226242 -0300
Modificação: 2024-01-23 18:07:37.865226242 -0300
  Alteração: 2024-01-23 18:07:37.865226242 -0300
    Criação: 2024-01-23 18:07:37.865226242 -0300
locatelli:~/ $ >> arquivo-3.txt 
locatelli:~/ $ stat arquivo-3.txt 
  Arquivo: arquivo-3.txt
    Tamanho: 0          Blocos: 0          bloco de E/S: 4096   arquivo comum vazio
Dispositivo: 10302h/66306d      Inode: 7210998     Links: 1
Acesso: (0664/-rw-rw-r--)  Uid: ( 1000/locatelli)   Gid: ( 1000/locatelli)
Acesso: 2024-01-23 18:07:37.865226242 -0300
Modificação: 2024-01-23 18:07:37.865226242 -0300
  Alteração: 2024-01-23 18:07:37.865226242 -0300
    Criação: 2024-01-23 18:07:37.865226242 -0300
locatelli:~/ $ ls -l
total 12
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:08 arquivo-1.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:08 arquivo-2.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:07 arquivo-3.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:07 arquivo-4.txt
-rw-rw-r-- 1 locatelli locatelli 1200 jan 23 17:39 comandos.md
-rw-rw-r-- 1 locatelli locatelli 7154 jan 23 18:09 observacoes.md
locatelli:~/ $ >> arquivo-5.txt
locatelli:~/ $ ls -l
total 12
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:08 arquivo-1.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:08 arquivo-2.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:07 arquivo-3.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:07 arquivo-4.txt
-rw-rw-r-- 1 locatelli locatelli    0 jan 23 18:10 arquivo-5.txt
-rw-rw-r-- 1 locatelli locatelli 1200 jan 23 17:39 comandos.md
-rw-rw-r-- 1 locatelli locatelli 7154 jan 23 18:09 observacoes.md
locatelli:~/ $ 
```

## observação [0006]

SHLVL mostra o processo filho.
set -e define a condição de encerrar o processo filho quando houver erro.
o comando "exit" isoladamente também encerra o processo filho.

```bash
locatelli:~/ $ echo $SHLVL
2
locatelli:~/ $ bash
locatelli:~/ $ echo $SHLVL
3
locatelli:~/ $ ls comandos.md 
comandos.md
locatelli:~/ $ echo $SHLVL
3
locatelli:~/ $ ls banana
ls: não foi possível acessar 'banana': Arquivo ou diretório inexistente
locatelli:~/ $ echo $SHLVL
3
locatelli:~/ $ set -e
locatelli:~/ $ ls comandos.md 
comandos.md
locatelli:~/ $ echo $SHLVL
3
locatelli:~/ $ ls banana
ls: não foi possível acessar 'banana': Arquivo ou diretório inexistente
locatelli:~/ $ echo $SHLVL
2
locatelli:~/ $ 
```

## observação [0007]

O resultado da última execução é o único resultado apresentado no status exit code visto pelo `echo $?`

```bash
locatelli:~/ $ ls comandos.md 
comandos.md
locatelli:~/ $ echo $?
0
locatelli:~/ $ ls banana
ls: não foi possível acessar 'banana': Arquivo ou diretório inexistente
locatelli:~/ $ echo $?
2
locatelli:~/ $ ls banana || echo deu erro
ls: não foi possível acessar 'banana': Arquivo ou diretório inexistente
deu erro
locatelli:~/ $ echo $?
0
locatelli:~/ $ 
```

## observação [0008]

o comando `echo banana` é executado internamente
O comando `(echo banana)` é executado em um sub-shell, ou seja, ele executa syscall clone e executa no processo filho

## observação [0009]

comando `read` é uma abstração da syscall read

```bash
$ read
10 11 12
$ read a b c
1 2 3
$ echo $REPLY
10 11 12
$ echo $a
1
$ echo $b
2
$ echo $c
3
```

Mais detalhes da abstração `read`, veja em `help read`

Mais detalhes sobre a syscall read, veja em `man 2 read`


## observação [0010]

```bash
$ cat arquivo.txt && echo
Rafael Locatelli
$ cat steste.sh && echo
#!/bin/bash
echo Seja bem-vindo!
echo Qual é o seu nome?
read nome
echo Muito prazer, $nome
$ ./steste.sh < arquivo.txt 
Seja bem-vindo!
Qual é o seu nome?
Muito prazer, Rafael Locatelli
```

## observação [0011]

utilizando o comando `shift`

```bash
$ cat steste.sh && echo
#!/bin/bash
echo 'Primeiro argumento:   '   $1
echo 'Todos argumentos:     '   $@
echo ---------------------------------
shift 3
echo 'Primeiro argumento:   '   $1
echo 'Todos argumentos:     '   $@
$ ./steste.sh {a..z}
Primeiro argumento:    a
Todos argumentos:      a b c d e f g h i j k l m n o p q r s t u v w x y z
---------------------------------
Primeiro argumento:    d
Todos argumentos:      d e f g h i j k l m n o p q r s t u v w x y z
```

## observação [0012]

```bash


```

## observação [0013]

```bash


```
