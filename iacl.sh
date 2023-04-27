#!/bin/bash

echo "Criando diretórios..."
mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."
groupadd  GRP_ADM 
groupadd  GRP_VEN
groupadd  GRP_SEC

echo "Alterando proprietários..."
chown root:root /public
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Definindo as permissões de pastas..."
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chown 777 /public

echo "Criando usuário Carlos..."
useradd carlos -c "Carlos" -m -p $(openssl passwd -crypt abc123) -G GRP_ADM
passwd  carlos -e

echo "Criando usuário Maria..."
useradd maria -c "Maria" -m -p $(openssl passwd -crypt abc123) -G GRP_ADM
passwd  maria -e

echo "Criando usuário Joao..."
useradd joao -c "Joao" -m -p $(openssl passwd -crypt abc123) -G GRP_ADM
passwd  joao -e

echo "Criando usuário Debora..."
useradd debora -c "Debora" -m -p $(openssl passwd -crypt abc123) -G GRP_VEN
passwd  debora -e

echo "Criando usuário Sebastiana..."
useradd sebastiana -c "Sebastiana" -m -p $(openssl passwd -crypt abc123) -G GRP_VEN
passwd  sebastiana -e

echo "Criando usuário Roberto..."
useradd roberto -c "Roberto" -m -p $(openssl passwd -crypt abc123) -G GRP_VEN
passwd  roberto -e

echo "Criando usuário Josefina..."
useradd  josefina -c "Josefina" -m -p $(openssl passwd -crypt abc123) -G GRP_SEC
passwd josefina -e

echo "Criando usuário Amanda..."
useradd  amanda -c "Amanda" -m -p $(openssl passwd -crypt abc123) -G GRP_SEC
passwd amanda -e

echo "Criando usuário Rogerio..."
useradd  rogerio -c "Rogerio" -m -p $(openssl passwd -crypt abc123) -G GRP_SEC
passwd rogerio -e