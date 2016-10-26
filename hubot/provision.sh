#!/bin/bash

apt-get -y update

# only install npm if it is not yet installed
dpkg -s npm &>/dev/null || {
	apt-get -y install nodejs npm
	ln -s /usr/bin/nodejs /usr/bin/node
}