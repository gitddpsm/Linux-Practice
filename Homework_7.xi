
# Занимаюсь! 

1  .
Подключить репозиторий с nginx любым удобным способом, установить nginx и потом удалить nginx, используя утилиту dpkg.

sudo apt install curl gnupg2 ca-certificates lsb-release
echo "deb http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" \
    | sudo tee /etc/apt/sources.list.d/nginx.list
curl -fsSL https://nginx.org/keys/nginx_signing.key | sudo apt-key add -
sudo apt-key fingerprint ABF5BD827BD9BF62
# [ unknown] nginx signing key <signing-key@nginx.com>
sudo apt update
sudo apt install nginx
    Unpacking nginx (1.18.0-2~focal) ...
    Setting up nginx (1.18.0-2~focal) ...
    Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service → /lib/systemd/system/nginx.service.
    Processing triggers for man-db (2.9.1-1) ...
    Processing triggers for systemd (245.4-4ubuntu3.4) ...

sudo dpkg -r nginx

2  .
Установить пакет на свой выбор, используя snap.
sudo snap install nmap
nmap 7.91 from Maximiliano Bertacchini (maxiberta) installed

3  .
Настроить iptables: разрешить подключения только на 22-й и 80-й порты.
4  .
* Настроить проброс портов локально с порта 80 на порт 8080.
