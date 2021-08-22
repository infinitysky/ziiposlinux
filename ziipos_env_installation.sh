sudo apt update
sudo apt upgrade -y
sudo apt install -y ssh openssh-server unzip htop net-tools mysql-server-8.0 cups nano vim curl unzip fonts-noto-cjk



sudo systemctl enable cups
sudo usermod -a -G lpadmin ziitech

# .Net

wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb



sudo apt update; \
  sudo apt install -y apt-transport-https && \
  sudo apt update && \
  sudo apt install -y dotnet-sdk-3.1
  
  
# Install Zabbix repository
wget https://repo.zabbix.com/zabbix/5.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.4-1+ubuntu20.04_all.deb
sudo dpkg -i zabbix-release_5.4-1+ubuntu20.04_all.deb
sudo apt update


sudo chown root ./configurations/*

sudo cp ./configurations/00-installer-config.yaml /etc/netplan/00-installer-config.yaml
sudo cp ./configurations/20auto-upgrades  /etc/apt/apt.conf.d/20auto-upgrades
sudo cp ./configurations/mysqld.cnf  /etc/mysql/mysql.conf.d/mysqld.cnf
sudo cp ./configurations/cupsd.conf  /etc/cups/cupsd.conf
sudo cp ./configurations/logind.conf  /etc/systemd/logind.conf




sudo dpkg-reconfigure tzdata

