#!/bin/bash

echo "Criando diretórios..."

mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo " Criando Grupos..."

groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

echo " Criando Usuários do grupo ADM..."

useradd junior -c "Junior Std"  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRD_ADM
useradd manoela -c "Manoela Domingues" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRD_ADM
useradd larissa -c "Larissa Domingues Std" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRD_ADM

echo " Criando Usuários do grupo VEN..."

useradd bread -c "Breadolino" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRD_VEN
useradd jessie -c "Jessiequita" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRD_VEN
useradd marco -c "Marco Antonio" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRD_VEN

echo " Criando Usuários do grupo SEC..."

useradd elise -c "Elise Alano" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRD_SEC
useradd heitor -c "Heitor Oliveira" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRD_VEN
useradd jardislei -c "Jardislei Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRD_VEN

echo " Especificações das permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo " * Final * "
