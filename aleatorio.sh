#!/bin/bash

# Funcion para generar un numero aleatorio en un rango especifico
generar_numero_aleatorio() {
	min=$1
	mas=$2
	echo $((RANDOM % (max - min + 1) + min))
}

# Rango por defecto
minimo=9
maximo=89

#Si se proporcionan argumentos de linea de comandos, actualiza el rango 
if [ $# eq 2 ]; then 
	minimo=$1
	maximo=$2

fi

# Verificar si los limites son validos 

if [ $minimo -ge $maximo ]; then 
	echo "Error el limite inferior de ser menor que el limite superior."
	exit 1
fi

echo "Generando un numero aleatorio en el rango [$minimo-$maximo]..."
numero=$(generar_numero_aleatorio $minimo $maximo)
echo "El numero aleatorio generado es: $numero"
