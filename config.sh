#backup all usefull config files
rm -rf files;
mkdir files;

cp -v  /home/drew/.bashrc 						files/;
cp -vr /home/drew/.config/awesome 				files/;
cp -vr /home/drew/.config/vicious				files/;
cp -v  /home/drew/.xinitrc 						files/;
cp -v  /home/drew/.rtorrent.rc 					files/;	
cp -v  /usr/local/bin/ydl 						files/;
cp -v  /etc/fstab 								files/;
cp -v  /etc/sudoers 							files/;
cp -v  /etc/X11/xorg.conf.d/10-evdev.conf 		files/;
cp -v  /etc/systemd/logind.conf     			files/;
cp -v  /etc/slim.conf               			files/;
cp -v  /home/drew/.vimrc						files/;
cp -vr /usr/share/awesome/themes				files/;
cp -vr /home/drew/workspace/battery		 		files/;
cp -vr /home/drew/workspace/brightnessChanger   files/;

crontab -u drew -l > files/crontab;