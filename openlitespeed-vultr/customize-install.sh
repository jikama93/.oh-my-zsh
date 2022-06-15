######## INSTALL LSPHP74 ######
sudo ufw allow 7080
sudo apt update -y 
sudo apt purge lsphp8* -y
sudo apt-get install lsphp74 lsphp74-common lsphp74-curl lsphp74-imagick lsphp74-imap lsphp74-json lsphp74-memcached lsphp74-mysql lsphp74-opcache lsphp74-redis lsphp74-tidy lsphp74-pear lsphp74-modules-source lsphp74-ioncube lsphp74-memcached lsphp74-ioncube lsphp74-intl lsphp74-apcu -y
echo 'PATH=/usr/local/lsws/lsphp74/bin:$PATH' >> ~/.bashrc && source ~/.bashrc
nano 

######### WP-CLI INSTALL #####
cd /opt
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

