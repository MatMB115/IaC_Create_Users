#!/bin/bash
echo "Criando os diretórios"
mkdir /publico && mkdir /adm && mkdir /ven && mkdir /sec
chmod 777 /publico

echo "Criando grupos"
groupadd GRP_ADM && groupadd GRP_VEN && groupadd GRP_SEC

echo "Criando usuários do grupo ADM"
useradd carlos -c "Carlos ADM" -G GRP_ADM -p $(openssl passwd senha123)
passwd carlos -e

useradd maria -c "Maria ADM" -G GRP_ADM -p $(openssl passwd senha123)
passwd maria -e

useradd joao -c "João ADM" -G GRP_ADM -p $(openssl passwd senha123)
passwd joao -e

echo "Criando usuários do grupo VEN"
useradd debora -c "Débora VEN" -G GRP_VEN -p $(openssl passwd senha123)
passwd debora -e

useradd roberto -c "Roberto VEN" -G GRP_VEN -p $(openssl passwd senha123)
passwd roberto -e

useradd sebastiana -c "Sebastiana VEN" -G GRP_VEN -p $(openssel passwd senha123)
passwd sebastiana

echo "Criando usuários do grupo SEC"
useradd josefina -c "Josefina SEC" -G GRP_SEC -p $(openssel passwd senha123)
passwd josefina -e

useradd amanda -c "Amanda SEC" -G GRP_SEC -p $(openssel passwd senha123)
passwd amanda -e

useradd rogerio -c "Rogério SEC" -G GRP_SEC -p $(openssel passwd senha123)
passwd rogerio -e
