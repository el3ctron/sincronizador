```
**INSTRUCCIONES PARA INSTALAR EL SINCRONIZADOR**
```
---

1. **Descargar e instalar virtualbox** en el siguiente enlace https://www.virtualbox.org/wiki/Downloads
2. **Descargar la imagen de linux** en el siguiente enlace --> https://www.linuxvmimages.com/images/debian-10/
3. **Importar la imagen de linux en virtualbox** https://www.linuxvmimages.com/how-to-use/how-to-import-vm-images-in-virtualbox/

​       La importación que virtualbox hace por defecto funciona muy bien, pero si se cuenta con buenos recursos, se recomienda la siguiente configuración a la hora de configurar la imagen de linux

​      `vCPU: 2`
​      `RAM: 2GB`
​      `DISK: 200GB`

​      `/     : 85GB`
​      `/boot : 500MB`
​      `/home : 10GB`
​       `swap : 4GB`

​     una vez instalada la imagen, este es el usuario y password de acceso a ese sistema operativo

​     `Username: debian`
​     `Password : debian`

(para continuar presiona la flecha hacia abajo)

---


4. **Configurar la imagen de linux en virtualbox**

   Antes de abrir linux:

- Habilitar el repositorio de archivos fuente en /rep a sincronizar:
  el manual paso a paso para para que virtualbox lea el repositorio de archivos fuente y lo mapee a /rep se puede encontrar aquí --> https://helpdeskgeek.com/virtualization/virtualbox-share-folder-host-guest/
- Configurar la red en modo puente (bridged en inglés en caso de que haya descargado una versión de virtualbox en ese idioma)
- Compartir el portapapeles en forma bidireccional
- Ya se puede iniciar el sistema operativo

5. **Abrir una terminal y ejecutar el comando para descargar y abrir el sincronizador** :

- oprimir en el teclado el botón inicio (windows), y escribir terminal y oprimir enter
- en la terminal pegar completo el siguiente renglón con este comando:

```
sudo apt install curl konsole; bash <(curl -s https://raw.githubusercontent.com/el3ctron/sincronizador/master/descargar_sincronizador.sh)
```

​       *(nota: teniendo el portapapeles compartido de forma bidireccional puedes pegar en la terminal  con un click derecho y seleccionar pegar ó en el teclado con un ctrl+shift+v)*

- En seguida aparecerá la siguiente pregunta, responde con una Y, luego con la tecla ENTER asi:

```
After this operation, 410 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
```
  esto instalará los paquetes necesarios para el funcionamiento del sincronizador.

---

6. **Configuración del sincronizador**

Asegúrate de tener los datos de conexión proveídos por la comisión ya en el siguiente paso se te preguntarán, asegurate de ingresarlos de forma correcta:

```
## ######################################

 [ digita tu nombre de usuario asignado por la comisión ] : 
 [ digita la ip asignada ] : 
 [ digita el puerto asignado ] : 

## ######################################
```

a la siguiente pregunta responder, yes, luego la tecla ENTER:

```
ECDSA key fingerprint is SHA256:Ei5ACppJ9834yrtudid30qdsxoCMEUm89qH1KuJuHsw.
Are you sure you want to continue connecting (yes/no)? yes
```

y llegado a este punto el sincronizador quedará instalado.
