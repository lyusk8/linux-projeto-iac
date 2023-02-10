#!/bin/bash

echo  "criando usuario de sistema"

useradd guest11 -c "usuario convidado" -m -s /bin/bash -p $(openssl passwd senha123) 
passwd guest11 -e

useradd guest12 -c "usuario convidado" -m -s /bin/bash -p $(openssl passwd senha123) 
passwd guest12 -e

useradd guest13 -c "usuario convidado" -m -s /bin/bash -p $(openssl passwd senha123) 
passwd guest13 -e

useradd guest14 -c "usuario convidado" -m -s /bin/bash -p $(openssl passwd senha123) 
passwd guest14 -e

echo "finalizado"
