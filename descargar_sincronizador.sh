## ######################################
## ######################################

echo
sudo apt-get install -y git python-pip build-essential
# sudo apt-get install -y python3-pip python-setuptools python-dev 
sudo pip install percol
echo -n " [ digita tu nombre de usuario asignado por la comisión ] : "
read usuario
echo -n " [ digita la ip:puerto asignado ] : "
read ip
repo=/rep/
cd
echo git clone ssh://$usuario@$ip$repo
git clone ssh://$usuario@$ip$repo
cd sincronizadores
echo $ip ./.ip
echo $usuario ./.usuario
./.sincronizador

## ######################################
## ######################################

echo ""
echo " - a continuación aparecerá un menú que se puede operar con las flechas del teclado y enter,"
echo "   el menú está en un orden numérico fácil de entender."
echo ""

read -n 1 -s -r -p "[Presiona una tecla para continuar] "
