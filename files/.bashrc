#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lh'
alias lla='ll -a'

alias pacman='sudo pacman'

alias dualscreen='xrandr --output LVDS --auto --output VGA-0 --auto --right-of LVDS'
alias singlescreen='xrandr --output LVDS --auto --output VGA-0 --off'

alias lock='xscreensaver-command -lock'
alias hibernate='xscreensaver-command -lock;systemctl hibernate'
alias suspend='xscreensaver-command -lock;systemctl suspend'
alias reboot='systemctl reboot'
alias poweroff='systemctl poweroff'
#sudo => geen wachtwoord vragen zo ingesteld in /etc/sudoers

alias mmake='cmake CMakeLists.txt ; make'
alias pacClean='sudo pacman -Rns $(pacman -Qqtd)'

alias rtorrent='screen rtorrent'


#PS1='[\u@\h \W]\$'
PS1='[\W] -> '

export PERL_LOCAL_LIB_ROOT="/home/drew/perl5:$PERL_LOCAL_LIB_ROOT";
export PERL_MB_OPT="--install_base "/home/drew/perl5"";
export PERL_MM_OPT="INSTALL_BASE=/home/drew/perl5";
export PERL5LIB="/home/drew/perl5/lib/perl5:$PERL5LIB";
export PATH="/home/drew/perl5/bin:/opt/android-sdk/tools/:$PATH";

HISTIGNORE="cd:ls:ll:dir:clear:exit";
