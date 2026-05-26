#!/bin/bash
mkdir ~/Punto_E
grep MemTotal /proc/meminfo | awk '{print $2, $3}' > ~/Punto_E/Filtro_basico.txt
grep "model name" /proc/cpuinfo | head -n1 >> ~/Punto_E/Filtro_basico.txt
