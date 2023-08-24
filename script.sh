#!/bin/bash
echo "Criando os diretórios"
mkdir /publico && mkdir /adm && mkdir /ven && mkdir /sec
chmod 777 /publico

echo "Criando grupos"
groupadd GRP_ADM && groupadd GRP_VEN && groupadd GRP_SEC

echo "Criando usuários do grupo ADM"
useradd carlos -c "Carlos ADM" -G GRP_ADM -p $(openssl passwd senha123) -s /bin/bash
passwd carlos -e

useradd maria -c "Maria ADM" -G GRP_ADM -p $(openssl passwd senha123) -s /bin/bash
passwd maria -e

useradd joao -c "João ADM" -G GRP_ADM -p $(openssl passwd senha123) -s /bin/bash
passwd joao -e

echo "Criando usuários do grupo VEN"
useradd debora -c "Débora VEN" -G GRP_VEN -p $(openssl passwd senha123) -s /bin/bash
passwd debora -e

useradd roberto -c "Roberto VEN" -G GRP_VEN -p $(openssl passwd senha123) -s /bin/bash
passwd roberto -e

useradd sebastiana -c "Sebastiana VEN" -G GRP_VEN -p $(openssl passwd senha123) -s /bin/bash
passwd sebastiana -e

echo "Criando usuários do grupo SEC"
useradd josefina -c "Josefina SEC" -G GRP_SEC -p $(openssl passwd senha123) -s /bin/bash
passwd josefina -e

useradd amanda -c "Amanda SEC" -G GRP_SEC -p $(openssl passwd senha123) -s /bin/bash
passwd amanda -e

useradd rogerio -c "Rogério SEC" -G GRP_SEC -p $(openssl passwd senha123) -s /bin/bash
passwd rogerio -e

echo "Concendendo permissões"
chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec
