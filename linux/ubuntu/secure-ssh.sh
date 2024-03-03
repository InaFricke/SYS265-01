#secure-ssh.sh
#author InaFricke
#creates a new ssh user using $1 parameter

sudo useradd -m -d /home/${1}/ -s /bin/bash ${1}

echo "new user created"

sudo mkdir /home/${1}/.ssh

echo "directory created"

#adds a public key from the local repo or curled from the remote repo

sudo cp SYS265-01/linux/public-keys/id_rsa.pub /home/${1}/.ssh/authorized_keys

echo "public key copied to directory"

#removes roots ability to ssh in


sudo chmod 700 /home/$1/.ssh

sudo chmod 600 /home/$1/.ssh/authorized_keys

sudo chown -R  ${1}:${1} /home/${1}/.ssh

echo "access changed"


