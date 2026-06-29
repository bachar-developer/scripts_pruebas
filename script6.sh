
#!/bin/bash

pos_neg(){

echo "introduzca un numero"

read num1

if [ "$num1" -gt  0 ]; then
        echo " El numero es positivo "
elif [ "$num1" -le  0 ]; then
        echo "El numero es negativo"
fi

}


may_men_igual(){

read -p "Introduce un numero: " num2
read -p "Introduce otro Numero: " num3

if [ "$num2" -gt "$num3" ]; then 
	echo "El primer numero es mayor al segundo!!"
elif [ "$num2" -lt "$num3" ]; then 
	echo "El segundo numero es mayor al primero" 
elif [ "$num2" -eq "$num3" ]; then 
	echo "Ambos numero son iguales"
fi  

}

bucle_for(){

for i  in 1 2 3 4 5 6 7 8 9 10
	do
	sleep 1 
	echo "$i Segundo"
	if [ "$i" -eq 10 ]; then 
		echo "Tiempo acabado"
	fi

	done


}

pedir_usuario_hasta(){ 

count=0
num4=1
while  [ "$num4" -ne 0 ] 
do
	echo  "Introduzca un numero y cuando quiera parar pulse 0"
		read num4
	((count++))

done


echo "Se metieron :  $count numeros !!"

}


salta_num(){

for i in 1 2 3 4 5 6 7 8 9 10 
do
	
	
	if [ "$i" -eq 5 ]; then
		continue
	elif [ "$i" -eq 8 ]; then
		break
 

	fi 
	echo "$i"

done  

}

saludar(){


echo "Hola $1 , Bienvenido al script" 

}


suma(){


resultado=$(("$1"+"$2"))

return $resultado

}

copia(){

cp /home/bachar/"$1" /home/bachar/script_pruebas/"$1" || echo "El archivo en cuestion no existe"

if [ "$?" -eq 0  ]; then

	echo "La copia fue un fracaso"  
else

	echo "La copia fue un exito" 

fi

 
}

autor(){

hoy=$(date +"%d-%m-%y")


echo "Hola mi nombre es :  $1 y estamos a :  $hoy ,  y mi breve comentario es :  $2"

echo " Lista de los archivos .sh del directorio "
echo " -----------------------------------------"

for i in ./script_pruebas/*.sh

do 
	echo "$i"


done 
}

	echo "1. Crea un script que pida un nÃºmero y muestre si es positivo, negativo o cero usando"
	echo "2. Pide al usuario dos nÃºmeros y muestra cual es mayor o si son iguales"
	echo "3. Muestra todos los nÃºmeros del 1 al 10 usando un bucle for."
        echo "4. Que pida usuario hasta que introduzca el nÃºmero 0. Al final, muestra cuÃ¡ntos nÃºmeros ha introducido en total."
	echo "5. Muestra los nÃºmeros del 1 al 10, saltando el 5 y deteniÃ©ndose en el 8."
	echo "6. Saludar"
	echo "7. Suma"
	echo "8. copiar un archivo que no exista y muestra un mensaje de error si el comando falla, usando $? o ||."
	echo "9. Comentario autor, fecha , descripcion "
echo 
echo  "Introduzca una opcion"
read  option
 
if   [ "$option" -eq 1 ]; then
	echo 
	pos_neg
elif [ "$option" -eq 2 ]; then 
	echo
	may_men_igual
elif [ "$option" -eq 3 ]; then 
	echo 
	bucle_for

elif [ "$option" -eq 4 ]; then 
	echo
	pedir_usuario_hasta
elif [ "$option" -eq 5 ]; then 
	echo
	salta_num
elif [ "$option" -eq 6 ]; then
	echo
	echo "Introduce tu nombre para saludarte" 
	read nombre
	saludar "$nombre"
elif [ "$option" -eq 7 ]; then 
	echo
	read -p  "Introduce el primer numero para la suma : " num1
	read -p  "Introduce el segundo numero para la suma : " num2
	suma "$num1" "$num2"
	echo $?
elif [ "$option" -eq 8 ]; then
	read -p "Introduzca el archivo a copiar : " dato
	copia "$dato"
elif [ "$option" -eq 9 ]; then
	read -p "Nombre : " name
	read -p "Comentario : " feedback 
	autor "$name" "$feedback"

fi 

