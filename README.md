# C3-G07
Repositorio oficial del grupo C3-G07

Pasos para trabajar con el repositorio: 

#Instalar Git.
    Enlace de descarga: https://git-scm.com/ (ultima version 2.35.1)
    Al instalar solo hay que darle a "siguiente" hasta finalizar el proceso.

#Iniciar Git 

    Crear una carpeta donde se alojara el proyecto. Alli dentro abrir una consola (powershell de windows, por ejemplo).

    Pueden copiar la direccion de la carpeta y pegarla en la consola anteponiendo cd y dejando un espacio y comillas entre la direccion. 
    Debe quedar algo como esto:  cd "C:\Users\xxx\Documents\No-Country-Repo"

    Una vez situados dentro de la carpeta escribir en la consola: git init (con esto creamos el repositorio local en la pc)

    Con el comando git status se puede observar el estado del area de trabajo.

#Configuración de Git, con los datos de cuenta de Github

    Si la computadora es mia: git config --global user.name "nombreUsuario"

    git config --global user.email "johndoe@example.com"

    Si la computadora NO es mia: git config user.name "nombreUsuario"

    git config user.email "johndoe@example.com"

    Verificar que haya funcionado bien la configuación:

    git config --get-all user.name

    git config --get-all user.email

#Bajando el repositorio de Github a la carpeta local.

    Con previamente "git init" y el logueo de "git config" se puede "jalar" el repo con la siguiente linea de comando:
    git clone git@github.com:No-Country/C3-G07.git

¡Y listo! Luego de eso se puede trabajar con el repositorio subiendo el trabajo, del cual se recomienda crear una rama alternativa para no pisar la rama principal.

El siguiente tutorial es muy completo y resuelve cualquier duda al respecto.
https://www.youtube.com/watch?v=HiXLkL42tMU

#Comandos generales de GIT

    Crear un repositorio local git init

    "Contame cómo estamos" git status

    Agregar a la "caja" el archivo ejemplo.html git add ejemplo.html

    Agregar solo archivos terminados en .css git add *.css

    Agregar TODOS los archivos disponibles git add .

    Cerrar la caja y ponerle el mensaje VIM (Para salir :q) git commit -m "Envío mi archivo de ejemplo"

    Agregar el remoto (Copiando código de GitHub) git remote add ...

    Enviar por primera vez git push -u origin master

    Enviar general git push

    Traer cambios git pull

    Devuele listado de branches y muestra la rama actual git branch

    Crea un branch nuevo "cambio-color" y mueve el "puntero" a ese branch git checkout -b cambio-color

    Mover "puntero" a branch NOMBRE git checkout NOMBRE

    Eliminar rama (no puedo eliminar una rama si estoy parado en ella) git branch -D NOMBRE