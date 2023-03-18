#!/bin/bash

echo "Criando pasta de trabalho..."

mkdir /publico
chmod 777 /publico

mkdir /adm
chmod 770 /adm

mkdir /ven
chmod 770 /ven

mkdir /sec
chmod 770 /sec

echo "Criação de pasta finalizada!"

echo "Criando usuários e grupos de trabalho..."

groupadd GRP_ADM
chown root:GRP_ADM /adm

groupadd GRP_VEN
chown root:GRP_VEN /ven

groupadd GRP_SEC
chown root:GRP_SEC /sec

useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Débora Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Joséfina Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogério Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd rogerio -e

echo "Criação de grupos e usuários finalizado!"
