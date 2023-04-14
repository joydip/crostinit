# get_iplayer
sudo apt install -y libwww-perl liblwp-protocol-https-perl libmojolicious-perl libxml-libxml-perl libcgi-pm-perl
wget https://raw.githubusercontent.com/get-iplayer/get_iplayer/master/get_iplayer
sudo install -m 755 ./get_iplayer /usr/local/bin
rm get_iplayer
