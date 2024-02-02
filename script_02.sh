#!/bin/bash
echo 'Primeiro argumento:   '   $1
echo 'Todos argumentos:     '   $@
echo ---------------------------------
shift 3
echo 'Primeiro argumento:   '   $1
echo 'Todos argumentos:     '   $@