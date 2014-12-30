#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=never'
alias ll='ls -lh'
alias lla='ll -a'

alias pacman='sudo pacman'

alias dualscreen='xrandr --output eDP1 --auto --output HDMI1 --auto --right-of eDP1'
alias singlescreen='xrandr --output eDP1 --auto --output HDMI1 --off'

alias lock='xscreensaver-command -lock'
alias hibernate='xscreensaver-command -lock;systemctl hibernate'
alias suspend='xscreensaver-command -lock;systemctl suspend'
alias hybrid-sleep='xscreensaver-command -lock;systemctl hybrid-sleep'

alias pacClean='paccache -r; paccache -ruk0;sudo pacman -Rns $(pacman -Qqtd);sudo pacman-optimize && sync;'
alias rtorrent='screen rtorrent'
alias cls='reset && clear'; #clear everything including scroll

alias playfirst='mplayer $(ls | head -n 1)'
alias rmfirst='rm -i $(ls | head -n 1)'

alias orion='ssh user@orion'

#PS1='[\u@\h \W]\$'
PS1='[\W] -> '
#PS1='\[\e[1;32m\][\W]\[\e[0m\] -> '

export PERL_LOCAL_LIB_ROOT="/home/drew/perl5:$PERL_LOCAL_LIB_ROOT";
export PERL_MB_OPT="--install_base "/home/drew/perl5"";
export PERL_MM_OPT="INSTALL_BASE=/home/drew/perl5";
export PERL5LIB="/home/drew/perl5/lib/perl5:$PERL5LIB";
export PATH="/home/drew/perl5/bin:/opt/android-sdk/tools/:/opt/java/bin/:/opt/cuda/include/:$PATH";
export JAVA_HOME="/opt/java";
export JDK_HOME="/opt/java";
export STUDIO_HOME="/opt/java";
export EDITOR="vim";
HISTIGNORE="cd:ls:ll:dir:clear:exit";
