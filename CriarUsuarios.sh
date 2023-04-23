#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /admin
mkdir /vendas

echo "Criando grupos de usuários..."

groupadd GRP_ADMIN
groupadd GRP_VENDAS

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADMIN
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADMIN
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADMIN

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VENDAS
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VENDAS
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VENDAS

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /admin
chown root:GRP_VEN /vendas

chmod 770 /admin
chmod 770 /vendas

echo "Fim....."

