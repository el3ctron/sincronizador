## ######################################
## ######################################

echo
sudo apt-get install -y git python-pip build-essential
# sudo apt-get install -y python3-pip python-setuptools python-dev 
sudo pip install percol
echo -n " [ digita tu nombre de usuario asignado por la comisión ] : "
read usuario
echo -n " [ digita la ip asignada ] : "
read ip
echo -n " [ digita el puerto asignado ] : "
read puerto
repo=/rep/git/sincronizador
cd

echo ""
echo " [ INICIANDO DESCARGA DEL SINCRONIZADOR ]"
echo ""
echo "## ######################################"
echo ""
echo git clone ssh://$usuario@$ip:$puerto$repo
git clone ssh://$usuario@$ip:$puerto$repo
echo ""
echo "## ######################################"
echo ""

## ######################################
## ######################################

echo ""
echo " - a continuación aparecerá un menú que se puede operar con las flechas del teclado y enter,"
echo "   el menú cuenta con números para señalar el orden de ejecución de los pasos para iniciar la sincronización de archivos."
echo ""

read -n 1 -s -r -p "[Presiona una tecla para continuar] "

echo $ip > ~/sincronizador/.ip
echo $usuario > ~/sincronizador/.usuario
~/sincronizador/.sincronizador
