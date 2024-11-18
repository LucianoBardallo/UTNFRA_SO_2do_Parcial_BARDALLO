whoami
pwd
ls -l
cd /home/vagrant/
sudo cd /home/vagrant/
ls -l
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
ls -l
exit
ls -l
sudo wipefs -a /dev/sdc
sudo wipefs -a /dev/sdd
sudo fdisk /dev/sdc
sudo fdisk /dec/sdd
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdc1 /dev/sdd1
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 50M /dev/vg_datos -n lv_docker
sudo lvcreate -L 1.5G /dev/vg_datos -n lv_workareas
sudo lvcreate -L 512M /dev/vg_temp -n lv_swap
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work/
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work
sudo swapon /dev/mapper/vg_temp-lv_swap
free -h
sudo sed -i '/vg_datos-lv_docker/d' /etc/fstab
sudo sed -i '/vg_datos-lv_workareas/d' /etc/fstab
sudo sed -i '/vg_temp-lv_swap/d' /etc/fstab
echo "/dev/mapper/vg_datos-lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_datos-lv_workareas /work ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_temp-lv_swap swap swap defaults 0 0" | sudo tee -a /etc/fstab
lsblk & df -h
clear
ls -l
sudo vim /usr/local/bin/BardalloAltaUser-Groups.sh
bash /usr/local/bin/BardalloAltaUser-Groups.sh
cd RTA_Examen_20241116/
ls -l
vim Punto_B.sh
vim /home/luciano/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls -l
bash Punto_B.sh
vim Punto_A.sh
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker
ls -l
sudo systemctl status docker
ls -l
vim index.html 
vim Dockerfile
docker build -t web1-<Bardallo> .
docker build -t web1-Bardallo .
sudo docker build -t web1-Bardallo .
sudo docker build -t web1-bardallo .
vim Dockerfile
sudo docker build -t web1-bardallo .
docker build -t web1-bardallo .
sudo usermod -aG docker $USER
docker build -t web1-bardallo .
sudo docker build -t web1-bardallo .
exit
ls -l
cd RTA_Examen_20241116/202406/docker/
cd RTA_Examen_20241116/202406/docker
cd /RTA_Examen_20241116/202406/docker/
cd RTA_Examen_20241116
ls -l
cd ..
cd /UTN-FRA_SO_Examenes/202406/docker/
cd UTN-FRA_SO_Examenes/202406/docker/
ls -l
docker build -t web1-bardallo .
sudo vgdisplay
sudo lvextend -L +500M /dev/vg_datos/lv_locker
sudo lvextend -L +500M /dev/vg_datos/lv_docker
sudo lvextend -l +100%FREE /dev/vg_datos/lv_docker
df -h
sudo lvextend -l +100%FREE /dev/mapper/vg_datos/lv_docker
df -h
sudo lvextend -L +500M /dev/mapper/vg_datos/lv_docker
sudo lvextend -L +100M /dev/mapper/vg_datos/lv_docker
df -h
sudo resize2fs /dev/mapper/vg_datos-lv_docker
df -h
docker build -t web1-bardallo .
df -h
docker tag web1-bardallo lucianobardallo/web1-bardallo
docker login
docker push lucianobardallo/web1-bardallo
vim run.sh
chmod +x run.sh
bash run.sh
vim run.sh
bash run.sh
./run.sh
ls -l
vim Dockerfile
cd ..
sudo apt install git
ssh-keygen -t ed25519
ls -l /home/luciano/.ssh
cat /home/luciano/.ssh/id_ed25519.pub >> /home/luciano/.ssh/authorized_keys
chmod 600 /home/luciano/.ssh/authorized_keys
cat /home/luciano/.ssh/authorized_keys
gitclone git@github.com:LucianoBardallo/UTNFRA_SO_2do_Parcial_BARDALLO.git
git clone git@github.com:LucianoBardallo/UTNFRA_SO_2do_Parcial_BARDALLO.git
git status
ls -l
cd UTNFRA_SO_2do_Parcial_BARDALLO/
git status
cp -r /home/luciano/RTA_Examen_20241118 ~/UTNFRA_SO_2do_Parcial_BARDALLO
cp -r /home/luciano/RTA_Examen_20241116 ~/UTNFRA_SO_2do_Parcial_BARDALLO
ls -l
git status
cp -r /home/luciano/UTN-FRA_SO_Examenes/ ~/UTNFRA_SO_2do_Parcial_BARDALLO
ls -l
history -a
ls -l
$HOME/.bash_history
git status
cp ~/.bash_history /ruta/al/repositorio/UTNFRA_SO_2do_Parcial_BARDALLO/
