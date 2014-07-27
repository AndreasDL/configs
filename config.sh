#backup all usefull config files
rm -rf files;
mkdir files;

cp -v  /home/drew/.bashrc 				files/;
cp -v  /home/drew/.xinitrc 				files/;
cp -v  /home/drew/.screenrc				files/;
cp -v  /etc/systemd/logind.conf     			files/;
cp -v  /etc/X11/xorg.conf.d/10-evdev.conf 		files/; #keyboard settings
cp -v  /etc/slim.conf               			files/;
cp -v  /etc/sudoers 					files/;
cp -v  /etc/fstab 					files/; #example has no real use
i
cp -v  /home/drew/.rtorrent.rc 				files/;
cp -v  /usr/local/bin/ydl 				files/; #download script

cp -vr /home/drew/.config/awesome 			files/; #awesome config
cp -vr /usr/share/awesome/themes			files/;
