# restic
curl -Lo - https://github.com/restic/restic/releases/download/v0.15.2/restic_0.15.2_linux_$(dpkg --print-architecture).bz2 | bunzip2 | sudo tee /usr/local/bin/restic >/dev/null
sudo chmod a+x /usr/local/bin/restic
sudo restic self-update
