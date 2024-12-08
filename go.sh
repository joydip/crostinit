# go
VERSION=$(curl -L https://go.dev/VERSION?m=text)
ARCH=$(dpkg --print-architecture)
case $ARCH in
  amd64)
    GOARCH="amd64"
    ;;
  arm64)
    GOARCH="arm64"
    ;;
  armhf)
    GOARCH="armv6l"
    ;;
  *)
    echo "Unsupported architecture: $ARCH"
    exit 1
    ;;
esac
  
URL="https://go.dev/dl/${VERSION}.linux-${GOARCH}.tar.gz"
sudo rm -rf /usr/local/go
curl -L "$URL" | sudo tar -C /usr/local -xzv
export PATH=$PATH:/usr/local/go/bin
go version
