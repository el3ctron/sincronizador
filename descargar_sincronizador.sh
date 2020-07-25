## ######################################
## ######################################

echo
sudo apt-get install -y git python-pip build-essential mdp linuxlogo
# sudo apt-get install -y python3-pip python-setuptools python-dev 
sudo pip install percol
echo ""
echo "## ######################################"
echo ""
echo -n " [ digita la ip asignada ] : "
read ip
echo -n " [ digita el puerto asignado ] : "
read puerto
echo -n " [ digita tu nombre de usuario asignado por la comisión ] : "
read usuario
repo=/rep/git/sincronizador
pathh=$(pwd)/sincronizador
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
echo ""
echo " A continuación aparecerá un menú que puede"
echo " ser operado con las flechas del teclado y ENTER."
echo ""
echo "## ######################################"
echo ""
echo " El menú se ha dispuesto númericamente para"
echo " indicar el orden de ejecución del proceso de"
echo " sincronización de los archivos."
echo ""
echo "## ######################################"
echo ""
echo " A continuación aparecerá el programa de sincronización,"
echo " asegurate de máximizar la ventana para su correcta visualización"
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
echo $pathh/.sincronizador
ln -s ~/sincronizador/.bash/sincronizadorr ~/Desktop/abrir_sincronizador
konsole -e $pathh/.sincronizador
