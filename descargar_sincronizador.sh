## ######################################
## ######################################

echo
sudo apt-get install -y git python-pip build-essential mdp linuxlogo
# sudo apt-get install -y python3-pip python-setuptools python-dev 
sudo pip install percol
echo ""
echo "## ######################################"
echo ""
echo -n " [ digita tu nombre de usuario asignado por la comisión ] : "
read usuario
echo -n " [ digita la ip asignada ] : "
read ip
echo -n " [ digita el puerto asignado ] : "
read puerto
repo=/rep/git/sincronizador
pathh=$(pwd)/sincronizador/
cd

echo ""
echo "## ######################################"
echo ""
echo " [ INICIANDO DESCARGA DEL SINCRONIZADOR ]"
echo ""
echo "## ######################################"
echo ""
echo git clone ssh://$usuario@$ip:$puerto$repo
echo ""
git clone ssh://$usuario@$ip:$puerto$repo
echo ""
echo "## ######################################"

## ######################################
## ######################################

echo ""
echo " A continuación aparecerá un menú que se puede operar con"
echo " las flechas del teclado y enter."
echo " El menú cuenta con números para señalar el orden de ejecución"
echo " de los pasos para iniciar la sincronización de archivos."
echo ""
echo "## ######################################"
echo ""
read -n 1 -s -r -p " [ Presiona una tecla para continuar ] "

mkdir ./sincronizador/.confs/
echo $ip > ./sincronizador/.confs/.ip
echo $usuario > ./sincronizador/.confs/.usuario
echo $puerto > ./sincronizador/.confs/.puerto
echo $pathh > ./sincronizador/.confs/.path

echo "source ~/sincronizador/.bash/variables_bash_sincronizador.sh" >> ~/.bashrc
source ~/.bashrc
linuxlogo
pwd
echo $pathh
$pathh/sincronizador/.sincronizador
