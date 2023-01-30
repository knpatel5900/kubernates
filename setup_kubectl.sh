#!/bin/bash
echo "[ i ] Updating Patches.."
yum update -y
#Download the latest release with the command:
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
#To download a specific version, replace the $(curl -L -s https://dl.k8s.io/release/stable.txt) portion of the command with the specific version.
#For example, to download version v1.26.0 on Linux, type:
#curl -LO https://dl.k8s.io/release/v1.26.0/bin/linux/amd64/kubectl
Download the kubectl checksum file:
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
#Validate the kubectl binary against the checksum file:
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
#If valid, the output is:
#kubectl: OK
#Install kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
chmod +x kubectl
mkdir -p ~/.local/bin
mv ./kubectl ~/.local/bin/kubectl
# and then append (or prepend) ~/.local/bin to $PATH
#Test to ensure the version you installed is up-to-date:
kubectl version --client
#Or use this for detailed view of version:
kubectl version --client --output=yaml   