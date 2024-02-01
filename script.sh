#!/bin/bash
echo
echo "PID:         " $$
echo "PID Pai:     " $PPID
echo
echo ------------------------------------------------------
echo # $1 ... ${n}
echo "ARG[1]:      " $1
echo "ARG[2]:      " $2
echo "ARG[3]:      " $3
echo "ARG[4]:      " $4
echo "ARG[13]:     " ${13}
echo "ARG[100]:    " ${100}
echo
echo ------------------------------------------------------
echo
echo "ARG[0]:      " $0
echo "ARGC:        " $#             # Não é incluso o ARG[0] na contagem
echo "ARGV:        " $@             # Não é incluso o ARG[0] na listagem
echo
echo ------------------------------------------------------
echo
# IFS=$'\n'
echo 'ARGV (@):    ' $@             # echo $@   é equivalente a echo $1 $2 $3 .. ${n}
echo 'ARGV (*):    ' $*             # echo $*   é equivalente a echo $1$IFS$2$IFS$3"$IFS .. ${n}
echo 'ARGV ("@"):  ' "$@"           # echo "$@" é equivalente a echo "$1" "$2" "$3" .. "${n}"
echo 'ARGV ("*"):  ' "$*"           # echo "$*" é equivalente a echo "$1$IFS$2$IFS$3"$IFS .. "${n}"
#                                   # Para alterar o IFS basta alterar diretamente a variável, exemplo: IFS=$'\n'
echo
echo ------------------------------------------------------
echo
echo 'ARGV[5:]:    ' "${@:5}"       # Exibir todos os argumentos a partir do ARG[5]
echo 'ARGV[2:]:    ' "${@:2}"       # Exibir todos os argumentos a partir do ARG[2]
echo 'ARGV[1:2]:   ' "${@:1:2}"     # Exibir dois argumentos a partir do ARG[1], ou seja, exibir ARG[1] e ARG[2]
echo 'ARGV[2:3]:   ' "${@:2:3}"     # Exibir três argumentos a partir do ARG[2], ou seja, exibir ARG[2], ARG[3] e ARG[4]
echo 'ARGV[5:13]:  ' "${@:5:13}"    # Exibir treze argumentos a partir do ARG[5], ou seja, exibir ARG[5], ARG[6] .. ARG[17]
echo
echo ------------------------------------------------------
echo


