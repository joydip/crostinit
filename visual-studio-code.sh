# Visual Studio Code

ARCH=$(dpkg --print-architecture)
if [ "$ARCH" == "amd64" ]; then
    ARCH="x64"
fi

curl -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-$ARCH" -o /tmp/code.deb
sudo apt install -y /tmp/code.deb
rm /tmp/code.deb
