#!/bin/bash

# script is re-runnable via "vagrant provision" as it checks if software is already installed

apt-get -y update
apt-get install curl

# only install npm if it is not yet installed (works like this for debian packages)
dpkg -s npm &>/dev/null || {
	# install nodejs v5
	# http://stackoverflow.com/questions/34974535/install-latest-nodejs-version-in-ubuntu-14-04
	curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
	apt-get install -y nodejs
	# update npm
	npm install npm@latest -g 
	ln -s /usr/bin/nodejs /usr/bin/node
}

# only install hubot if it is not yet installed
command -v hubot &>/dev/null || {
	npm install -g hubot-generator yo coffee-script
	mkdir myhubot
	cd myhubot
	yo hubot --defaults
	
	# custom configuration
	npm uninstall hubot-heroku-keepalive --save
	sed -i '/hubot-redis-brain/ d' external-scripts.json
	sed -i '/hubot-heroku-keepalive/ d' external-scripts.json
	
	bin/hubot
}