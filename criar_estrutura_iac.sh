#!/bin/bash

echo "Inicializando"

echo "criando diretórios..."

mkdir /adm /publico /sec /ven

echo "criando grupos..."

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

echo "criando usuários..."

useradd carlos -c "Carlos Silva " -m -s /bin/bash -p $(openssl passwd senha123)
passwd carlos -e 

useradd maria -c "Maria Silva " -m -s /bin/bash -p $(openssl passwd senha123)
passwd maria -e 

useradd joao -c "João Silva " -m -s /bin/bash -p $(openssl passwd senha123)
passwd joao -e

useradd debora -c "Debora Silva " -m -s /bin/bash -p $(openssl passwd senha123)
passwd debora -e

useradd sebastiana -c "Sebastiana Silva " -m -s /bin/bash -p $(openssl passwd senha123)
passwd sebastiana -e

useradd roberto -c "Roberto Silva" -m -s /bin/bash -p $(openssl passwd senha123)
passwd roberto -e

useradd josefina -c "Josefina Silva" -m -s /bin/bash -p $(openssl passwd senha123)
passwd josefina -e

useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd senha123)
passwd amanda -e 

useradd rogerio -c "Rogerio Silva" -m -s /bin/bash -p $(openssl passwd senha123)
passwd rogerio -e

echo "separando usuários por grupo"

usermod -G GRP_ADM carlos

usermod -G GRP_ADM maria

usermod -G GRP_ADM joao

usermod -G GRP_VEN debora

usermod -G GRP_VEN sebastiana

usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina

usermod -G GRP_SEC amanda

usermod -G GRP_SEC rogerio

echo "alterando permissões dos grupos e diretórios"

chown root:GRP_ADM /adm

chown root:GRP_VEN /ven

chown root:GRP_SEC /sec

chmod 777 /publico

chmod 770 /adm

chmod 770 /ven

chmod 770 /sec      

echo "finalizado"
