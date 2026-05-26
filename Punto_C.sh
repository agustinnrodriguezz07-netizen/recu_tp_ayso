#!/bin/bash
sudo groupadd p1c1_2026_Todos
sudo useradd -m -s /bin/bash -g p1c1_2026_Todos p1c1_2026_u2
sudo usermod -G p1c1_2026_Todos p1c1_2026_u1
sudo chown -R p1c1_2026_u1:p1c1_2026_Todos /datos/
sudo chmod -R 770 /datos/
sudo chmod o+x /datos/
sudo chmod o-r /datos/
su -c "id >> /datos/validar1.txt" p1c1_2026_u2
