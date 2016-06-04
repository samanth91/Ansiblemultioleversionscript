#!/bin/bash
sudo apt-get update
sudo apt-get -y install python-setuptools python-dev libffi-dev libssl-dev git sshpass
sudo easy_install pip

sudo -H pip uninstall -y virtualenv
sudo -H pip uninstall -y virtualenvwrapper
sudo -H pip install virtualenv
sudo -H pip install virtualenvwrapper --ignore-installed six
sudo -H pip install httplib2

rm -rf ~/.virtualenvs
mkdir ~/.virtualenvs
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.profile
echo "export WORKON_HOME=~/.virtualenvs" >> ~/.profile
source ~/.profile

rm -rf ~/ansible_virtualenvs
mkdir ~/ansible_virtualenvs

cd ~/ansible_virtualenvs
mkdir 1.9.4
cd 1.9.4
mkvirtualenv ansible-1.9.4
pip install ansible==1.9.4
ansible --version
deactivate

cd ~/ansible_virtualenvs
mkdir 1.9.5
cd 1.9.5
mkvirtualenv ansible-1.9.5
pip install ansible==1.9.5
ansible --version
deactivate

cd ~/ansible_virtualenvs
mkdir 1.9.6
cd 1.9.6
mkvirtualenv ansible-1.9.6
pip install ansible==1.9.6
ansible --version
deactivate

cd ~/ansible_virtualenvs
mkdir 2.0.0.1
cd 2.0.0.1
mkvirtualenv ansible-2.0.0.1
pip install ansible==2.0.0.1
ansible --version
deactivate

cd ~/ansible_virtualenvs
mkdir 2.0.0.2
cd 2.0.0.2
mkvirtualenv ansible-2.0.0.2
pip install ansible==2.0.0.2
ansible --version
deactivate

cd ~/ansible_virtualenvs
mkdir 2.0.1.0
cd 2.0.1.0
mkvirtualenv ansible-2.0.1.0
pip install ansible==2.0.1.0
ansible --version
deactivate

cd ~/ansible_virtualenvs
mkdir 2.0.2.0
cd 2.0.2.0
mkvirtualenv ansible-2.0.2.0
pip install ansible==2.0.2.0
ansible --version
deactivate

cd ~/ansible_virtualenvs
mkdir 2.1.0.0
cd 2.1.0.0
mkvirtualenv ansible-2.1.0.0
pip install ansible==2.1.0.0
ansible --version
deactivate

workon ansible-1.9.4
./clone_git_repos.sh
cd ../GitHub/mrlesmithjr
ls
