SERVER=192.168.1.125
dir=arch-install-basic
path=$SERVER/$dir

getfx(){
	rm -r $1
	wget http://$path/$1
	chmod +x $1
}

getf(){
	wget http://$path/$1
}

cmod(){
	chmod +x $1
}

getfx install.sh
getf hostname
getf sudoers
getf password
getfx make-partition.sh



./download.sh
./net-cfg.sh
./make-partition.sh
./install.sh