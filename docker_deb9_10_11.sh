#Updates your Systems
apt update -y && apt upgrade -y


#Anschließend werden notwendige Pakete installiert, um das Docker-Repository über HTTPS zu nutzen
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

#Den offiziellen GPG-Key von Docker dem System hinzufügen
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

#Anschließend wird das stable-Docker-Repository hinzugefügt:
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

#Jetzt nochmal die Paketquellen aktualisieren:
apt update -y

#Und dann Docker installieren, wobei die neue Container-Runtime containerd verwendet wird:
apt-get install docker-ce docker-ce-cli containerd.io -y 
