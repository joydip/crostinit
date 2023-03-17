# Visual Studio Code
curl -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-$(dpkg --print-architecture)" -o /tmp/code.deb
sudo apt install -y /tmp/code.deb
rm /tmp/code.deb
