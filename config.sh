if [ $# == 0 ]; then  #default = do backup
	set "backup";
fi;

if [ "$1" == "backup" ]; then
	#backup all usefull config files
	rm -rf files;
	mkdir files;
	cp -v  /home/drew/.bashrc 			files/;
	cp -vr /home/drew/.config/awesome 	files/;
	cp -vr /home/drew/.config/vicious	files/;
	cp -v  /home/drew/.xinitrc 			files/;
	cp -v  /home/drew/.rtorrent.rc 		files/;
	cp -v  /home/drew/.gtkrc-2.0 		files/;
	cp -v  /usr/local/bin/ydl 			files/;
	cp -v  /etc/fstab 					files/;
	cp -v  /etc/sudoers 				files/;
	cp -v  /etc/X11/xorg.conf.d/10-evdev.conf files/;
	cp -v  /etc/systemd/logind.conf     files/;
elif [ "$1" == "restore" ]; then	
	#restore backup
	cp -v  files/.bashrc 			/home/drew/;
	cp -vr files/awesome/		 	/home/drew/.config/;
	cp -vr files/vicious/			/home/drew/.config/;  #install might be needed
	cp -v  files/.xinitrc 			/home/drew/;
	cp -v  files/.rtorrent.rc 		/home/drew/;
	cp -v  files/.gtkrc-2.0 		/home/drew/;
	cp -v  files/ydl 				/usr/local/bin/; #won't work you need to do a sudo install
	cp -v  files/fstab 				/etc/;
	cp -v  files/sudoers 			/etc/;
	cp -v  files/10-evdev.conf 		/etc/X11/xorg.conf.d/;
	cp -v  files/logind.conf        /etc/systemd/logind.conf;
else
	echo "backup => backup files to files/"
	echo "Restore => restore files from files/";
fi;