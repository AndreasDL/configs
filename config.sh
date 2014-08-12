#backup all usefull config files

#clear all old files
#rm -rf files/*;

#progs configs
cp -v  /home/drew/.bashrc 						files/; #bash
cp -v  /home/drew/.xinitrc 						files/; #xinit
cp -v  /home/drew/.screenrc						files/; #screen
cp -v  /home/drew/.vimrc						files/; #vim
cp -vr /home/drew/.vim							files/.vim;
cp -v  /home/drew/.rtorrent.rc 					files/; #rtorrent
cp -v  /home/drew/.Xdefaults					files/; #urxvt
cp -v  /home/drew/.xbindkeysrc					files/; #xbindkyes for volume keys
cp -v  /home/drew/.xscreensaver					files/; #screensaver

#system configs
cp -v  /etc/systemd/logind.conf     			files/; #lid closed actions etc
cp -vr /etc/udev/rules.d/						files/; #udev rules for among others auto hybernate
cp -v  /etc/X11/xorg.conf.d/10-evdev.conf 		files/; #keyboard settings
cp -v  /etc/slim.conf               			files/; #slim login config
cp -v  /etc/sudoers 							files/;	#sudoers
cp -v  /etc/fstab 								files/; #example has no real use

#progs and scripts
cp -vr /usr/local/bin/ 							files/; #download script brightnessScript

#awesomeWM
cp -vr /home/drew/.config/awesome/rc.lua 				files/; #awesome config
cp -vr /usr/share/awesome/themes/default/theme.lua		files/; #awesome theme config file
