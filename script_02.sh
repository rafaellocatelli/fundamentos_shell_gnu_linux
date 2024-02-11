#!/bin/bash
echo 'Primeiro argumento:   '   $1
echo 'Todos argumentos:     '   $@
echo ---------------------------------
echo ---------------------------------
shift 1
echo 'Primeiro argumento:   '   $1
echo 'Todos argumentos:     '   $@
shift 3
echo 'Primeiro argumento:   '   $1
echo 'Todos argumentos:     '   $@


