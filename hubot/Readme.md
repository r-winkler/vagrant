# General

This will setup a VM with default Hubot without any further configuration.

# Setup

* vagrant up
* vagrant ssh (pw: vagrant)
* vagrant ping (should output pong)

# Error

On my machine, the error below is displayed when I do "vagrant up". This issue is discussed here: 
http://stackoverflow.com/questions/22717428/vagrant-error-failed-to-mount-folders-in-linux-guest

As the proposed solutions didn't work for me, I just ignored it and did the provisioning myself: "vagrant provision"

Vagrant was unable to mount VirtualBox shared folders. This is usually
because the filesystem "vboxsf" is not available. This filesystem is
made available via the VirtualBox Guest Additions and kernel module.
Please verify that these guest additions are properly installed in the
guest. This is not a bug in Vagrant and is usually caused by a faulty
Vagrant box. For context, the command attempted was:

vagrant plugin install vagrant-vbguest

