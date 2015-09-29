#backup all usefull config files
#run as root
#clear all old files
rm -rf files/*;

#progs configs
cp -vx  /home/drew/.bashrc 						files/; #bash
cp -vx  /home/drew/.zshrc						files/; #zsh
cp -vx  /home/drew/.aliases					    files/; #aliases
cp -vx  /home/drew/.gdbinit						files/; #gdb config
cp -vx  /home/drew/.xinitrc 						files/; #xinit
cp -vx  /home/drew/.screenrc				    	files/; #screen
cp -vx  /home/drew/.vimrc						files/; #vim
cp -vrx /home/drew/.vim							files/.vim;
cp -vx  /home/drew/.rtorrent.rc 					files/; #rtorrent
cp -vx  /home/drew/.Xdefaults					files/; #urxvt
cp -vx  /home/drew/.xbindkeysrc					files/; #xbindkyes for volume keys
cp -vx  /home/drew/.xscreensaver					files/; #screensaver
cp -vx  /home/drew/.gtkrc-2.0					files/; #gtk theme
cp -vx  /home/drew/.asoundrc						files/; #alsa & sound config

#system configs
cp -vx  /etc/systemd/logind.conf     			files/; #lid closed actions etc
cp -vrx /etc/udev/rules.d/						files/; #udev rules for among others auto hybernate
cp -vx  /etc/X11/xorg.conf.d/10-evdev.conf 		files/; #keyboard settings
cp -vx  /etc/slim.conf               			files/; #slim login config
cp -vx  /etc/sudoers 							files/;	#sudoers
cp -vx  /etc/fstab 								files/; #example has no real use

#progs and scripts
cp -vrx /usr/local/bin/ 						files/; #download script brightnessScript

#awesomeWM
cp -vrx /home/drew/.config/awesome/rc.lua		files/; #awesome config
cp -vrx /usr/share/awesome/themes/custom		files/; #awesome theme folder
