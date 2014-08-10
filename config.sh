#backup all usefull config files
rm -rf files;
mkdir files;

#rc
cp -v  /home/drew/.bashrc 				files/;
cp -v  /home/drew/.xinitrc 				files/;
cp -v  /home/drew/.screenrc				files/;
cp -v  /home/drew/.vimrc				files/;
cp -v  /home/drew/.rtorrent.rc 					files/;#rtorrent config

#system stuffs
cp -v  /etc/systemd/logind.conf     			files/;
cp -vr /etc/udev/rules.d/						files/; #udev rules for among others auto hybernate
cp -v  /etc/X11/xorg.conf.d/10-evdev.conf 		files/; #keyboard settings
cp -v  /etc/slim.conf               			files/;
cp -v  /etc/sudoers 							files/;
cp -v  /etc/fstab 								files/; #example has no real use

#progs and scripts
cp -vr /usr/local/bin/ 							files/; #download script brightnessScript

#awesomeWM
cp -vr /home/drew/.config/awesome/rc.lua 				files/; #awesome config
cp -vr /usr/share/awesome/themes/default/theme.lua		files/;#awesome theme config file
