
### What is this repository for? ###

* Access Server Test VM - Local using vagrant, ansible and virtualbox
* AS 2.1.9

### Where to start? ###

* Dependencies are ansible, vagrant and virtualbox on your local machine

* Clone the repo with git@bitbucket.org:jdopenvpn/as-local-test.git
* run ./setup.sh (script will create and start the VM, replace Vagrantfile, apt-get update and install python - necessary for ansible) 
* run ./vagrant.sh

Execute these commands

* vagrant up

The playbook will take a bit to run, it has to download and install AS, after that is done the tests are fast.  Results can be seen in the textfile -
/tmp/test_results.log (on your local machine)

vagrant destroy to wipe the VM

That is it.