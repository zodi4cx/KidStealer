#!/bin/bash

if [ $(id -u) -ne "0" ]; then
	echo -e "\n[!] Necesitas ejecutar este programa como administrador\n"
	exit
fi

echo -e "\n[*] Eliminando archivos residuales"
rm -rf hashcat/ hcxdumptool/ hcxtools/ > /dev/null
echo "[*] Instalando librerías necesarias"
apt-get install libssl-dev libz-dev libpcap-dev libcurl4-openssl-dev opencl-headers -y > /dev/null
echo "[*] Clonando repositorios necesarios desde GitHub"
git clone https://github.com/hashcat/hashcat > /dev/null 2>&1
git clone https://github.com/ZerBea/hcxdumptool > /dev/null 2>&1
git clone https://github.com/ZerBea/hcxtools > /dev/null 2>&1
echo "[*] Compilando repositorios"
cd hashcat/ && make > /dev/null
cd ../hcxdumptool/ && make > /dev/null
cd ../hcxtools/ && make > /dev/null
cd ../ && chmod +x kidstealer
echo -e "\n[*] Instalación finalizada"

