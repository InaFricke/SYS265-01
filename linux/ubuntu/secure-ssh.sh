#secure-ssh.sh
#author InaFricke
#creates a new ssh user using $1 parameter
#adds a public key from the local repo
sudo useradd -m -d /home/${1}/ -s /bin/bash ${1}

echo "new user created"

sudo mkdir /home/${1}/.ssh

echo "directory created"

cd ..

cd ..

cd ..

sudo cp SYS265-01/linux/public-keys/id_rsa.pub /home/${1}/.ssh/authorized_keys

echo "public key copied to hidden directory"

sudo chmod 700 /home/$1/.ssh

#only owner can read write and execute

sudo chmod 600 /home/$1/.ssh/authorized_keys

#only the  owner can read and write in the auth keys file

sudo chown -R  ${1}:${1} /home/${1}/.ssh

# changes the owner of directory to the $1 user 

echo "access changed"


