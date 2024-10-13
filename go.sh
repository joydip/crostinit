# go
curl -L "https://go.dev/dl/go1.23.2.linux-$(dpkg --print-architecture).tar.gz" | sudo tar -C /usr/local -xzv
export PATH=$PATH:/usr/local/go/bin
