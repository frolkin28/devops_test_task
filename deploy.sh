# docker installation

apt update
apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt update
apt install -y docker-ce

# docker-compose installation
curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` \
    -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# running application

docker-compose up -d