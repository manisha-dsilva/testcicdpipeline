FROM jenkins/jenkins

USER root

#RUN apt-get install ca-certificates

#Install ansible
RUN curl -k "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
	 python get-pip.py

RUN pip install -U ansible

#Install Docker

#RUN apt-get update -o Acquire::https::mirror.ufs.ac.za::Verify-Peer=false

RUN apt-get update && \
apt-get -y install apt-transport-https \
	ca-certificates \
	update-ca-certificates \
	curl \
	gnupg2 \
	software-properties-common && \
curl -k -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
	$(lsb_release -cs) \
	stable" && \
apt-get update && \
apt-get -y install docker-ce

#Compose

RUN curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

RUN usermod -aG docker jenkins

USER jenkins
