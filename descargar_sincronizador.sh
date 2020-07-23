## ######################################
## ######################################

sudo apt-get install -y git python-pip python3-pip python-setuptools python-dev build-essential
sudo pip install percol
echo -n " [ digita tu nombre de usuario asignado por la comisión ] : "
read usuario
#usuario=$(echo ./.usuario)
ip=$(echo ./.ip)
repo=/rep/
cd
git clone ssh://$usuario@$ip$repo
cd sincronizadores
./.sincronizador

## ######################################
## ######################################

echo "a continuación aparecerá un menú que se puede operar con las flechas del teclado y enter;"
echo "este menú se encuentra en un orden numérico fácil de entender."
read -n 1 -s -r -p "[Presiona una tecla para continuar] "
