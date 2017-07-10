### What is this repository for? ###

* Access Server Test VM - Local using vagrant, ansible and virtualbox
* AS 2.1.9

### Where to start? ###

* Dependencies are ansible, vagrant and virtualbox on your local machine

* Clone the repo with git clone git@bitbucket.org:jdopenvpn/as-publicnet-test.git
* run ./setup.sh (script will create and start the VM, replace Vagrantfile, apt-get update and install python - necessary for ansible) 

Execute these commands

* vagrant up 
* this VM is connecting to the network like another machine, so your available interfaces will be listed - choose which interface to bridge to
* Wait for playbook to finish, if you do not see ansible commands, run
* vagrant provision

The playbook will take a bit to run, it has to download and install AS, after that is done the tests are fast.  Results can be seen in the log file -
/tmp/test_results.log (on your local machine)

vagrant destroy - to wipe the VM

That is it.