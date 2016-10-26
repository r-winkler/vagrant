# install package updates
apt-get -y update

# install nginx
apt-get -y install nginx

# set nginx website folder and share it with host
cp -r /usr/share/nginx/www /vagrant/www
rm -f /usr/share/nginx/www
ln -s /vagrant/www /usr/share/nginx/www

# start nginx
service nginx start