#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt adm123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt adm123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt adm123) -G GRP_ADM

user add debora -m -s /bin/bash -p $(openssl passwd -crypt adm123) -G GRP_VEN
user add sebastiana -m -s /bin/bash -p $(openssl passwd -crypt adm123) -G GRP_VEN
user add roberto -m -s /bin/bash -p $(openssl passwd -crypt adm123) -G GRP_VEN

user add josefino -m -s /bin/bash -p $(openssl passwd -crypt adm123) -G GRP_SEC
user add amando -m -s /bin/bash -p $(openssl passwd -crypt adm123) -G GRP_SEC
user add rogerio -m -s /bin/bash -p $(openssl passwd -crypt adm123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /publico

echo "Processo finalizado..."