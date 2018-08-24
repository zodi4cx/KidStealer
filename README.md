# KidStealer                                                                                                                   

**Kid Stealer** es un programa que aprovecha una vulnverabilidad recientemente descubierta en el protocolo WPA/WPA2, donde no es necesario capturar un handshake completo para poder crackear la contraseña de una red WiFi. Esto supone poder crackear redes WPA/WPA2 sin la necesidad de que haya clientes conectados a la misma, pues es nuestro propio equipo el que entabla la comunicación.

Podéis encontrar más información sobre este ataque en el siguiente artículo (en inglés):

https://hashcat.net/forum/thread-7717.html

## Instalación

Para el uso de este programa, se requiere la instalación previa de Aircrack-ng; así como se entiende un uso básico del mismo, puesto que es necesario inicar la tarjeta en modo monitor para el uso de este aplicativo.

Para instalar KidStealer, recomendamos ejecutar los siguientes comandos:

```
git clone https://github.com/zodi4cx/KidStealer
chmod +x setup.sh
./setup.sh
./kidstealer
```
