#!/bin/bash
mkdir ~/Punto_F
IP=$(curl -s ifconfig.me)
MODELO=$(cat /proc/cpuinfo | grep -i "model name" | head -n1 | awk -F ':' '{print$2}' | awk '{print$1,$2}')
FREQ=$(cat /proc/cpuinfo | grep -i "cpu mhz" | head -n1 | awk -F ':' '{print$2}' | awk '{printf "%.2fGHz\n", $1/1000}')
echo "Mi ip publica es: $IP" > ~/Punto_F/Filtro_Avanzado.txt
echo "CPU Modelo: $MODELO Frecuencia: $FREQ" >> ~/Punto_F/Filtro_Avanzado.txt
