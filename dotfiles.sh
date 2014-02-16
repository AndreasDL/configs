 #backup all usefull config files
rm -rf files;
mkdir files;
cp -v  /home/drew/.bashrc 			files/
cp -vr /home/drew/.config/awesome 	files/
cp -vr /home/drew/.config/vicious	files/
cp -v  /home/drew/.xinitrc 			files/
cp -v  /home/drew/.rtorrent.rc 		files/
cp -v  /home/drew/.gtkrc-2.0 		files/
cp -v  /usr/local/bin/ydl 			files/
cp -v  /etc/fstab 					files/
cp -v  /etc/sudoers 				files/
cp -v  /etc/X11/xorg.conf.d/10-evdev.conf files/