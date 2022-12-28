#!/bin/bash

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar fecha de hoy"
    echo "5. Introducir nombre y comprobar email sea valido con expresion regular"
    echo "6. Ver si hay algun numero en la variable greet"
    echo "7. Ver si hay algun numero en la variable num"
    echo "8. Comprueba si el valor de la variable greet comienza con números"
    echo "9. Comprueba si el valor de la variable greet termina con números"
    # echo "10. Escuchar cancion mezclada de musica de Beni"
    echo "11. Ver archivos passwd sin ser root redirijo stderror al dev null"
    echo "12. Ver archivos passwd sin ser root redirijo stderror al dev null con xargs"
    echo "13. Ver los permisos SSUID"
    echo "14. Ver directorios y archivos del usuario next"
    echo "15. Ver directorios  del usuario next"
    echo "16. Ver archivos  del usuario next"
    echo "17. Ver carpeta que tengan capacidad de escritura  del usuario y propietario sea root"
    echo "18. Ver archivos que tengan capacidad de ejecutarse  del usuario y propietario sea root"
    echo "19. Buscar por archivo en la raiz cuyo nombre empiece por dex y lo que sea"
    echo "20. Buscar por archivo en la raiz cuyo nombre empiece por exdum y lo que sea"
    echo "21. Buscar por archivo en la raiz cuyo nombre empiece por dex y acabe con sh"
    echo "22. Buscar por archivo en la raiz cuyo nombre empiece por dex y acabe con sh y ver permisos"
    echo "23. Ver interfaces wifi en la consola"
    echo "24. Filtramos con lo con grep"
    echo "25. Filtramos con lo con grep y me quedo con la ultima linea"
    echo "26. Filtramos con lo con awk y me quedo con la segunda linea"
    echo "27. Filtramos con lo con awk y me quedo con la segunda linea y me quedo con 2º argumento de columna"
    echo "28. Filtramos con lo con awk y me quedo con la segunda linea y me quedo con 2º argumento con delimitador /"
    echo "29. Filtramos con lo con cut y me quedo con la segunda linea y me quedo con 2º argumento con delimitador /"
    echo "30. Filtramos con lo con tr quiero cambiar las barras por espacios"
    echo "31. Filtramos con lo con tr quiero cambiar las barras por espacios y me quiero quedar con el primer argumento"
    echo "32. Ver tu ip privada"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
        1)
            echo "Mostrando directorio"
            ls
            read foo
        ;;
        2)
            echo "Mostrando calendario"
            cal
            read foo
        ;;
        3)
            echo "Mostrando fecha de hoy"
            echo 'date'
            date
            echo 'echo `date`'
            echo `date`
            echo 'echo $(date)'
            echo $(date)
            echo "Las tres hacen lo mismo"
            read foo
        ;;
        5)
            echo "Introducir nombre y comprobar email sea valido con expresion regular"
            ../expresion-regular.sh
            read foo
        ;;
        6)
            echo "Ver si hay algun numero en la variable greet"
            ./coincidir-numeros.sh
            echo -e "\n"
            echo "Codigo del script coincidir-numeros.sh"
            cat coincidir-numeros.sh
            read foo
        ;;
        7)
            echo "Ver si hay algun numero en la variable num"
            ./variable-num-compruebanumero.sh
            echo -e "\n"
            echo "Codigo del script variable-num-compruebanumero.sh"
            cat variable-num-compruebanumero.sh
            read foo
        ;;
        8)
            echo "Comprueba si el valor de la variable greet comienza con números"
            ./comienzanumeros-regex.sh
            echo -e "\n"
            echo "Codigo del script comienzanumeros-regex.sh"
            cat comienzanumeros-regex.sh
            read foo
        ;;
        9)
            echo "Comprueba si el valor de la variable greet termina con números"
            echo "La variable greet es: Hello,World!123"
            ./terminanumeros-regex.sh
            echo -e "\n"
            echo "Codigo del script terminanumeros-regex.sh"
            cat terminanumeros-regex.sh
            read foo
        ;;
        
        11)
            echo "Ver archivos passwd sin ser root redirijo stderror al dev null"
            
            find / -name passwd 2>/dev/null
            
            read foo
        ;;
        12)
            echo "Ver archivos passwd sin ser root redirijo stderror al dev null con xargs"
            
            find / -name passwd 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        13)
            echo "Ver los permisos SSUID"
            
            find / -perm -4000  2>/dev/null
            #Tambien funciona
            # find / -perm -4000  2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        14)
            echo "Ver directorios y archivos del usuario next"
            
            find / -group next  2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        15)
            echo "Ver directorios  del usuario next"
            
            find / -group next -type d 2>/dev/null
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        16)
            echo "Ver archivos  del usuario next"
            
            find / -group next -type f 2>/dev/null
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        17)
            echo "Ver carpetas que tengan capacidad de escritura  del usuario y propietario sea root"
            
            find / -user root -writable 2>/dev/null
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        18)
            echo "Ver archivos que tengan capacidad de ejecutarse  del usuario y propietario sea root"
            
            find / -user root -executable -type f 2>/dev/null
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        19)
            echo "Buscar por archivo en la raiz cuyo nombre empiece por dex y lo que sea"
            
            find / -name dex\* 2>/dev/null
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        20)
            echo "Buscar por archivo en la raiz cuyo nombre empiece por exdum y lo que sea"
            
            find / -name \*exdum\* 2>/dev/null
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        21)
            echo "Buscar por archivo en la raiz cuyo nombre empiece por dex y acabe con sh"
            
            find / -name dex\*.sh 2>/dev/null
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        22)
            echo "Buscar por archivo en la raiz cuyo nombre empiece por dex y acabe con sh y ver permisos"
            
            find / -name dex\*.sh -lsd 2>/dev/null
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        23)
            echo "Ver interfaces wifi en la consola"
            
            ip a
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        24)
            echo "Filtramos con lo con grep"
            
            ip a | grep lo
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        25)
            echo "Filtramos con lo con grep y vemos la ultima linea con tail"
            
            ip a | grep lo | tail -n 1
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        26)
            echo "Filtramos con lo con awk y me quedo con la segunda linea"
            
            ip a | grep lo | awk 'NR==2'
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        27)
            echo "Filtramos con lo con awk y me quedo con la segunda linea y me quedo con 2º argumento de columna"
            
            ip a | grep lo | tail -n 1 | awk '{print $2}'
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        28)
            echo "Filtramos con lo con awk y me quedo con la segunda linea y me quedo con 2º argumento con delimitador /"
            
            ip a | grep lo | tail -n 1 | awk '{print $2}' | awk '{print $1}' FS="/"
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        29)
            echo "Filtramos con lo con cut y me quedo con la segunda linea y me quedo con 2º argumento con delimitador /"
            
            ip a | grep lo | tail -n 1 | awk '{print $2}' | cut -d '/' -f 1
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        30)
            echo "Filtramos con lo con tr quiero cambiar las barras por espacios"
            
            ip a | grep lo | tail -n 1 | awk '{print $2}' | tr '/' ' '
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        31)
            echo "Filtramos con lo con tr quiero cambiar las barras por espacios y me quiero quedar con el primer argumento"
            
            ip a | grep lo | tail -n 1 | awk '{print $2}' | tr '/' ' ' | awk '{print $1}'
            # find / -user root -writable
            # find / -group next -type d 2>/dev/null | xargs lsd -l
            
            read foo
        ;;
        32)
            echo "Ver tu ip privada"
            
            ./script-IP.sh
            
            read foo
        ;;
        4) exit 0 ;;
        #Alerta
        *)
            echo "Opcion invalida..."
            sleep 1
        ;;
    esac
done
