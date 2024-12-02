# restic
ARCH=$(dpkg --print-architecture)
LATEST_RELEASE=$(curl -s https://api.github.com/repos/restic/restic/releases/latest | grep 'tag_name' | cut -d\" -f4)
DOWNLOAD_URL="https://github.com/restic/restic/releases/download/${LATEST_RELEASE}/restic_${LATEST_RELEASE:1}_linux_${ARCH}.bz2"
echo $DOWNLOAD_URL
curl -Lo - $DOWNLOAD_URL | bunzip2 | sudo tee /usr/local/bin/restic >/dev/null
sudo chmod a+x /usr/local/bin/restic

