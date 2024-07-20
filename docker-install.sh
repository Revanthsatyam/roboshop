yum update  -y
yum install docker -y
service docker start
systemctl enable docker
usermod -a -G docker ec2-user
yum install git -y
curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose