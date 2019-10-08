#!/bin/sh

mysql.server stop
unlink /usr/local/var/mysql
ln -s /usr/local/var/mysql_56 /usr/local/var/mysql
brew unlink mysql@5.7 && brew link mysql@5.6 --force
sed -i -e 's/mysql@5.7/mysql@5.6/g' ~/.zshenv
export PATH=$(echo -n $PATH |tr ':' '\n' |sed "/\/usr\/local\/opt\/mysql@5.7\/bin/d" |tr '\n' ':')
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
mysql.server start

